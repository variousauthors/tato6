
module.exports = function scrapeMD5(arg, callback) {
  const md5 = _scrapeMD5(document)

  callback(null, md5)

  /** @param {Document} document 
   * @return {string}
  */
  function _scrapeMD5(document) {
    try {
      const container = document.querySelector('.flex.flex-col.justify-between.border-b.border-gray--100.mb-2.pb-4')
      const details = container.innerText

      return details.split('\n').pop().split(' ').pop()
    } catch (e) {
      return error('md5')
    }
  }

  function error(target) {
    return `Curseforge has updated their HTML, the ${target} could not be scraped`
  }
}
