Server Patches
==============

Each server patch describes the patch that updates the previous version to the new version on the server.

This is done so that the maintainer doesn't have to transfer all the files to the server, just the ones that are needed.

As usual the mods directory is not versioned, and instead a snapshot of the manifest at that release is versioned.

---

As you make changes, add the changes to the server-patch folder for the unreleased version:
 - if you add a mod, add it to unreleased/mods/ and copy the current ../manifest.json as well
 - if you change or add a config file, add it to unreleased/config/
 - if you add or change any scripts, add them to unreleased/scripts

When you remove files or mods from the release, this may be a major version bump and care must be taken to ensure that the server is patched correctly.

BUILD CHECKLIST (multimc)
---------------------------

1. copy any mods you added from the current instance to `unreleased/mods` and `modpack/mods`
2. rename unreleased to [release-version] and update the changelog
3. zip the [release-version] folder and name it patch-[release-version]
4. export the "unreleased" instance from multimc as a zip file named overworld-[release-version].zip
5. rename the "unreleased" instance to "[release-version]"
6. import overworld-[release-version].zip and name it "unreleased"

PUBLISH CHECKLIST
-----------------

7. upload the new release to google drive
8. update the instructions to point to the latest released version

9. in artifacts/technic find the latest modpack ([previous-release-version].zip) 
10. unzip the archive
11. apply the patch from server-patch/[release-version]
12. compress the archive and rename it to [release-version].zip
13. upload the new modpack to dropbox (possibly deleting an older modpack to make space)

9. stop the server
10. upload the files from server-patch/[release-version]
11. restart the server
