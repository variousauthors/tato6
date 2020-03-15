
module.exports = function scrapeFilename(arg, callback) {
  const filename = _scrapeFilename(document)

  callback(null, filename)

  /** @param {Document} document */
  function _findRow(document) {
    const tableRows = Array.from(document.querySelectorAll('table tr'))
    const [headers, firstRow] = tableRows

    const tableData = Array.from(firstRow.getElementsByTagName('td'))
    const [releaseType, name] = tableData

    return name
  }

  /** @param {Document} document */
  function _scrapeFilename(document) {
    try {
      return _findRow(document).firstElementChild.textContent
    } catch {
      return error('filename')
    }
  }

  function error(target) {
    return `Curseforge has updated their HTML, the ${target} could not be scraped`
  }
}
