const Nick = require('nickjs')
const userAgent = require('user-agents');
const scrapers = {
  scrapeFileId: require('./scrapeFileId'),
  scrapeFilename: require('./scrapeFilename'),
  scrapeFileURL: require('./scrapeFileURL'),
  scrapeMD5: require('./scrapeMD5'),
}

module.exports = class Scraper {
  constructor () {
    this.nick = new Nick({
      loadImages: false,
      printAborts: false,
      printResourceErrors: false,
      printPageErrors: false,
      resourceTimeout: 10000,
      userAgent: userAgent.toString(),
      whitelist: [/.*files/]
    })
  }

  scrape (slug) {
    return this.scrapeModFileData(slug)
  }

  cleanup (exitCode) {
    this.nick.exit(exitCode)
  }

  async scrapeModFileData(slug) {
    const tab = await this.openTab(slug)

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

  async openTab (slug) {
    const tab = await this.nick.newTab()
    const url = listingPageURL(slug)
    const [httpCode] = await tab.open(url)

    if (httpCode === 404) {
      throw new MalformedModFileURL(url, slug)
    }

    await tab.untilVisible("table")

    return tab
  }
}

function listingPageURL(slug) {
  return `https://www.curseforge.com/minecraft/mc-mods/${slug}/files/all?filter-game-version=2020709689:6756&sort=releasetype`
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