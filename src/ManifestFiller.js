/**
 * @typedef {Object} ModEntry
 * @property {string} slug
 */

/**
 * @typedef {Object} ModFileData
 * @property {string} fileId
 * @property {string} filename
 * @property {string} md5
 */

/**
 * @typedef {Object} IModFileDataFetchingStrategy
 * @property {(slug: string) => Promise<ModFileData>} getModFileData
 */

module.exports = class ManifestFiller {

  constructor (manifest) {
    this._originalManifest = manifest
    this.workingCopy = JSON.parse(JSON.stringify(manifest))

    /** @type {IModFileDataFetchingStrategy} */
    this.strategy = null
  }

  /**
   * 
   * @param {IModFileDataFetchingStrategy} strategy 
   */
  setStrategy (strategy) {
    this.strategy = strategy
  }

  getInitialModEntries () {
    return Object.keys(this._originalManifest).map((key) => ({
      key,
      path: key,
      body: this._originalManifest[key]
    }))
  }

  getManifestReference (current) {
    const siblings = getSiblingsOfModEntry(this.workingCopy, current)

    const index = siblings.indexOf(current.slug)

    if (index > -1) {
      siblings.splice(index, 1, {
        slug: current.slug
      })
    }

    return siblings.find((sibling) => sibling.slug === current.slug)

    function getSiblingsOfModEntry(manifest, current) {
      const keys = current.path.split('/')

      return keys.reduce((obj, key) => {
        return obj[key]
      }, manifest)
    }
  }

  makeWork () {
    const stack = this.getInitialModEntries()
    const work = []
    const errors = []

    while (stack.length > 0) {
      const current = stack.pop()

      if (isModEntry(current)) {
        if (slugIsMissingData(current)) {
          const manifestReference = this.getReferenceToManifestEntryInWorkingCopy(current)

          work.push(this.fillManifestEntry(manifestReference)
            .catch((error) => {
              errors.push(error)
            })
          )
        }
      } else {
        // we need to go deeper
        const next = Array.isArray(current.body)
          ? current.body.map((obj) => toModEntry(obj, current.path))
          : Object.keys(current.body).map((key) => ({ 
            key, 
            path: `${current.path}/${key}`, 
            body: current.body[key] 
          }))

        stack.push(...next)
      }
    }

    return { work, errors }
  }

  /** getManifestReference returns a reference to the modEntry
   * in the manifest. Changes made to the object returned by this
   * function will be reflected in the manifest */
  getReferenceToManifestEntryInWorkingCopy(modEntry) {
    const siblings = getSiblingsOfModEntry(this.workingCopy, modEntry)

    const index = siblings.indexOf(modEntry.slug)

    if (index > -1) {
      siblings.splice(index, 1, {
        slug: modEntry.slug
      })
    }

    return siblings.find((sibling) => sibling.slug === modEntry.slug)

    function getSiblingsOfModEntry(detailedManifest, current) {
      const keys = current.path.split('/')

      return keys.reduce((obj, key) => {
        return obj[key]
      }, detailedManifest)
    }
  }

  /** given a json manifest returns a new manifest with all fields filled in */
  fillManifest() {
    const { work, errors } = this.makeWork()

    return Promise.all(work)
      .then(() => {
        return {
          manifest: this.workingCopy,
          problems: errors
        } 
      })
  }

  async fillManifestEntry (obj) {
    const data = await this.strategy.getModFileData(obj.slug)

    Object.keys(data).forEach((key) => {
      obj[key] = data[key]
    })
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

/** @return {obj is ModEntry} */
function isModEntry(obj) {
  return isDefined(obj.slug)
}

function isNil (obj) {
  return obj === undefined || obj === null
}

function isDefined (obj) {
  return !isNil(obj)
}