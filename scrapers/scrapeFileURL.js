
module.exports = function scrapeFileURL(arg, callback) {
  const url = _scrapeDownloadURL(document)

  callback(null, url)

  /** @param {Document} document */
  function _findRow(document) {
    const tableRows = Array.from(document.querySelectorAll('table tr'))
    const [headers, firstRow] = tableRows

    const tableData = Array.from(firstRow.getElementsByTagName('td'))
    const [releaseType, name] = tableData

    return name
  }

  /** @param {Document} document 
   * @return {string}
  */
  function _scrapeDownloadURL(document) {
    try {
      return _findRow(document).firstElementChild['href']
    } catch {
      return error('url')
    }
  }

  function error(target) {
    return `Curseforge has updated their HTML, the ${target} could not be scraped`
  }
}
