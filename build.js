const ModFile = require("mc-curseforge-api/objects/Files");
const fs = require('fs');

const Nick = require("nickjs")
const userAgent = require('user-agents');
const nick = new Nick({
  loadImages: false,
  printAborts: false,
  printResourceErrors: false,
  printPageErrors: false,
  resourceTimeout: 10000,
  userAgent: userAgent.toString(),
  whitelist: [/.*files/]
})

const rawdata = fs.readFileSync('manifest.json');
const manifest = JSON.parse(rawdata);
const detailedManifest = JSON.parse(rawdata);

const stack = Object.keys(manifest).map((key) => ({ key, path: key, body: manifest[key] }))
let i = 0

const work = []

while (stack.length > 0 && i < 10) {
  const current = stack.pop()

  if (current['slug']) {
    console.log('encountered a slug', current.path, current.slug)

    // add an entry to the detailed manifest
    const keys = current.path.split('/')
    const siblings = keys.reduce((lens, key) => {
      return lens[key]
    }, detailedManifest)

    const lens = siblings.find((sibling) => sibling.slug === current.slug)

    work.push(augmentWithDetails(lens))

  } else {
    console.log('making dir', current.path)

    // create directory
    const dirpath = `${__dirname}/${current.path}`

    if (!fs.existsSync(dirpath)) {
      fs.mkdirSync(dirpath)
    }

    const next = Array.isArray(current.body)
      ? current.body.map((obj) => ({ path: `${current.path}`, ...obj })) 
      : Object.keys(current.body).map((key) => ({ key, path: `${current.path}/${key}`, body: current.body[key] }))

    stack.push(...next)
  }

  i++
}

Promise.all(work)
  .then(() => {
    console.log('Done!')
    console.log(JSON.stringify(detailedManifest, null, 2))

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

  function downloadTheFiles(files) {
    return Promise.all(files.map((file) => {
      return new ModFile({
        id: file.fileId,
        file_name: file.filename,
        file_md5: file.md5
      }).download(`/Users/zeigfreid/Documents/Tato6/v0.0.3/${file.filename}`)
    }))
  }

  function pageUrl(slug) {
    return `https://www.curseforge.com/minecraft/mc-mods/${slug}/files`
  }
}