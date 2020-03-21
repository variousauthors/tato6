// @ts-check
const fs = require('fs');

const ManifestFiller = require('./ManifestFiller');
const ModFile = require("mc-curseforge-api/objects/Files");
const Scraper = require('./scrapers')

const manifestPath = `${__dirname}/manifest.json`
const rawdata = fs.readFileSync(manifestPath);
const manifest = JSON.parse(rawdata.toString());

class ScrapeModFileDataStrategy {
  constructor () {
    this.scraper = new Scraper()
  }

  async getModFileData (slug) {
    return this.scraper.scrape(slug)
  }
}

const manifestThing = new ManifestFiller(manifest)
manifestThing.setStrategy(new ScrapeModFileDataStrategy())

manifestThing.fillManifest()
  .then((result) => {
    const { manifest, problems } = result

    if (problems.length > 0) {
      console.log('Finished with errors!')
      console.log(problems.join('\n'))
    } else {
      console.log('Done!')
    }

    // write the detailed manifest to the filesystem
    const data = JSON.stringify(manifest, null, 2)
    fs.writeFileSync(manifestPath, data)

    process.exit(0)
  })
  .catch((err) => {
    console.log(`Something went wrong: ${err}`)

    process.exit(1)
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
