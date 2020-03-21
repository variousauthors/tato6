// @ts-check
const ModFile = require("mc-curseforge-api/objects/Files");
const fs = require('fs');
const Nick = require("nickjs")
const userAgent = require('user-agents');

const scrapers = require('./scrapers')

process.env.CHROME_PATH = "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

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

async function augmentWithDetails(obj) {
  const slug = obj.slug
  const tab = await openTab(slug)
  const data = await scrapeModFile(tab)

  Object.keys(data).forEach((key) => {
    obj[key] = data[key]
  })

  async function openTab (slug) {
    const tab = await nick.newTab()
    const url = listingPageURL(slug)
    const [httpCode] = await tab.open(url)

    if (httpCode === 404) {
      throw new MalformedModFileURL(url, slug)
    }

    await tab.untilVisible("table")

    return tab
  }

  async function scrapeModFile(tab) {
    const fileId = await tab.evaluate(scrapers.scrapeFileId)
    const filename = await tab.evaluate(scrapers.scrapeFilename)
    const fileURL = await tab.evaluate(scrapers.scrapeFileURL)

    await tab.open(fileURL)

    const md5 = await tab.evaluate(scrapers.scrapeMD5)

    return {
      fileId,
      filename,
      md5
    }
  }

  function listingPageURL(slug) {
    return `https://www.curseforge.com/minecraft/mc-mods/${slug}/files/all?filter-game-version=2020709689:6756&sort=releasetype`
  }
}

const stack = Object.keys(manifest).map((key) => ({ key, path: key, body: manifest[key] }))

const work = []
const errors = []

while (stack.length > 0) {
  const current = stack.pop()

  if (isModEntry(current)) {
    if (slugIsMissingData(current)) {
      const manifestReference = getManifestReference(detailedManifest, current)

      work.push(augmentWithDetails(manifestReference)
        .catch((error) => {
          errors.push(error)
        })
      )
    }
  } else {
    // we need to go deeper
    const next = Array.isArray(current.body)
      ? current.body.map((obj) => toModEntry(obj, current.path)) 
      : Object.keys(current.body).map((key) => ({ key, path: `${current.path}/${key}`, body: current.body[key] }))

    stack.push(...next)
  }
}

/** getManifestReference returns a reference to the modEntry
 * in the manifest. Changes made to the object returned by this
 * function will be reflected in the manifest */
function getManifestReference (detailedManifest, current) {
  const siblings = getSiblingsOfModEntry(detailedManifest, current)

  const index = siblings.indexOf(current.slug)

  if (index > -1) {
    siblings.splice(index, 1, {
      slug: current.slug
    })
  }

  return siblings.find((sibling) => sibling.slug === current.slug)

  function getSiblingsOfModEntry(detailedManifest, current) {
    const keys = current.path.split('/')

    return keys.reduce((obj, key) => {
      return obj[key]
    }, detailedManifest)
  }
}

function toModEntry (obj, path) {
  if (typeof obj === 'string') {
    return {
      path,
      slug: obj,
    }
  }

  return {
    path,
    ...obj
  }
}

function slugIsMissingData(slug) {
  return isNil(slug.fileId) || isNil(slug.filename || isNil(slug.md5))
}

/**
 * @typedef {Object} ModEntry
 * @property {string} slug
 */

/** @return {obj is ModEntry} */
function isModEntry(obj) {
  return isDefined(obj.slug)
}

Promise.all(work)
  .then(() => {
    // write the detailed manifest to the filesystem
    const data = JSON.stringify(detailedManifest, null, 2)
    fs.writeFileSync('manifest.json', data)

    if (errors.length > 0) {
      console.log('Finished with errors!')
      console.log(errors.join('\n'))
    } else {
      console.log('Done!')
    }

    nick.exit(0)
  })
  .catch((err) => {
    console.log(`Something went wrong: ${err}`)
    nick.exit(1)
  })

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

class MalformedModFileURL extends Error {

  constructor (url, slug) {
    super(`
Attempting to visit 

  ${url} 

resulted in a 404. Is the slug correct? (${slug})
    `)

    this.name = 'MalformedModFileURL'
  }
}
