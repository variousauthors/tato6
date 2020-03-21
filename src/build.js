// @ts-check
const fs = require('fs');

const ModFile = require("mc-curseforge-api/objects/Files");
const Scraper = require('./scrapers')

const manifestPath = `${__dirname}/manifest.json`

process.env.CHROME_PATH = "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

const rawdata = fs.readFileSync(manifestPath);
const manifest = JSON.parse(rawdata.toString());
const detailedManifest = JSON.parse(rawdata.toString());
const scraper = new Scraper()

async function augmentWithDetails(obj) {
  const data = await scraper.scrape(obj.slug)

  Object.keys(data).forEach((key) => {
    obj[key] = data[key]
  })
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
    fs.writeFileSync(manifestPath, data)

    if (errors.length > 0) {
      console.log('Finished with errors!')
      console.log(errors.join('\n'))
    } else {
      console.log('Done!')
    }

    scraper.cleanup(0)
  })
  .catch((err) => {
    console.log(`Something went wrong: ${err}`)
    scraper.cleanup(1)
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
