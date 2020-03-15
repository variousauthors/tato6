// @ts-check
const ModFile = require("mc-curseforge-api/objects/Files");
const fs = require('fs');
const Nick = require("nickjs")
const userAgent = require('user-agents');

/**
 * @typedef {Object} Nick
 * @property {() => any} newTab
 * @property {(exitCode: number) => any} exit
 */

const nick = /** @type {Nick} */ (new Nick({
  loadImages: false,
  printAborts: false,
  printResourceErrors: false,
  printPageErrors: false,
  resourceTimeout: 10000,
  userAgent: userAgent.toString(),
  whitelist: [/.*files/]
}))

const rawdata = fs.readFileSync('manifest.json');
const manifest = JSON.parse(rawdata.toString());
const detailedManifest = JSON.parse(rawdata.toString());

const stack = Object.keys(manifest).map((key) => ({ key, path: key, body: manifest[key] }))
let i = 0

const work = []

while (stack.length > 0 && i < 10) {
  const current = stack.pop()

  function slugIsMissingData (slug) {
    return isNil(slug.fileId) || isNil(slug.filename || isNil(slug.md5))
  }

  /**
   * @typedef {Object} ModEntry
   * @property {string} slug
   */

  /** @return {obj is ModEntry} */
  function isModEntry (obj) {
    return isDefined(obj.slug)
  }

  if (isModEntry(current)) {
    if (slugIsMissingData(current)) {
      console.log('encountered a slug with missing details', JSON.stringify(current, null, 2))

      const keys = current.path.split('/')
      const siblings = keys.reduce((obj, key) => {
        return obj[key]
      }, detailedManifest)

      const modEntry = siblings.find((sibling) => sibling.slug === current.slug)

      work.push(augmentWithDetails(modEntry))
    }
  } else {
    // we need to go deeper
    const next = Array.isArray(current.body)
      ? current.body.map((obj) => ({ path: `${current.path}`, ...obj })) 
      : Object.keys(current.body).map((key) => ({ key, path: `${current.path}/${key}`, body: current.body[key] }))

    stack.push(...next)
  }

  i++
}

Promise.all(work)
  .then(() => {
    // write the detailed manifest to the filesystem
    const data = JSON.stringify(detailedManifest, null, 2)
    fs.writeFileSync('manifest.json', data)

    console.log('Done!')
    nick.exit(0)
  })
  .catch((err) => {
    console.log(`Something went wrong: ${err}`)
    nick.exit(1)
  })

async function augmentWithDetails(obj) {
  const slug = obj.slug

  const tab = await nick.newTab()
  await tab.open(pageUrl(slug))

  await tab.untilVisible("article") // Make sure we have loaded the page

  return tab.evaluate((arg, callback) => {
    // @TODO extract class
    // const scraper = new Scraper()
    // callback(null, scraper.scrape())
    const url = _scrapeDownloadURL(document)
    const filename = _scrapeFilename(document)
    const md5 = _scrapeMD5(document)

    const data = {
      fileId: extractFileId(url),
      filename,
      md5,
    }

    callback(null, data)

    const error = (target) => `Curseforge has updated their HTML, the ${target} could not be scraped`

    function _scrapeMD5(document) {
      try {
        const container = document.querySelector('.flex.flex-col.justify-between.border-b.border-gray--100.mb-2.pb-4')
        const details = container.innerText

        return details.split('\n').pop().split(' ').pop()
      } catch {
        return error('md5')
      }
    }

    function _scrapeDownloadURL(document) {
      try {
        return document.querySelector('article a.button.button--hollow').href
      } catch {
        return error('url')
      }
    }

    function _scrapeFilename(document) {
      try {
        return document.querySelector('article h3').innerText
      } catch {
        return error('filename')
      }
    }

    function extractFileId(url) {
      try {
        return url.split('/').pop()
      } catch {
        return url
      }
    }
  })
    .then((data) => {
      console.log('augmenting with', data)

      Object.keys(data).forEach((key) => {
        obj[key] = data[key]
      })
    })

  function pageUrl(slug) {
    return `https://www.curseforge.com/minecraft/mc-mods/${slug}/files`
  }
}

function downloadTheFiles(files) {
  // create mods directory
  const dirpath = `${__dirname}/blogs`

  if (!fs.existsSync(dirpath)) {
    fs.mkdirSync(dirpath)
  }

  return Promise.all(files.map((file) => {
    return new ModFile({
      id: file.fileId,
      file_name: file.filename,
      file_md5: file.md5
    }).download(`${dirpath}/${file.filename}`, undefined, undefined)
  }))
}

function isNil (obj) {
  return obj === undefined || obj === null
}

function isDefined (obj) {
  return !isNil(obj)
}