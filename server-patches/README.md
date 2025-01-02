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
2. run the command `cp -r tato6-resources/tato6/ server-patches/<VERSION>/resourcepacks/tato6` to update the resourcepack
3. rename unreleased to [release-version] and update the changelog
4. zip the [release-version] folder and name it patch-[release-version]
5. make sure to remove any worlds/config before zipping, as these interfere with players
6. export the "unreleased" instance from multimc as a zip file named overworld-[release-version].zip
7. rename the "unreleased" instance to "[release-version]"
8. import overworld-[release-version].zip and name it "unreleased"

PUBLISH CHECKLIST
-----------------

8. in artifacts/technic find the latest modpack ([previous-release-version].zip) 
9. unzip the archive
10. apply the patch from server-patch/[release-version]
11. compress the _contents_ of the folder and rename it to [release-version].zip
12. manually apply the patch to your current install of [previous-release-version] in technic and test it
13. upload the new modpack to dropbox (possibly deleting an older modpack to make space)
14. commit and push a new version to github if you have not
15. go to https://www.technicpack.net/modpack/edit/1798835/main
16. go to versions and copy/paste the latest changes and a link to the changelog in github