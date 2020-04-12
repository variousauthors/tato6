Server Patches
==============

Each server patch describes the patch that updates the previous version to the new version on the server.

This is done so that the maintainer doesn't have to transfer all the files to the server, just the ones that are needed.

As usual the mods directory is not versioned, and instead a snapshot of the manifest at that release is versioned.

---

As you make changes, add the changes to the server-patch folder for the unreleased version:
 - if you add a mod, add it to unrelease/mods/ and copy the current ../manifest.json as well
 - if you change or add a config file, add it to unreleased/config/
 - if you add or change any scripts, add them to unreleased/scripts

When you remove files or mods from the release, this is a major version bump and care must be taken to ensure that the server is patched correctly.

RELEASE CHECKLIST
-----------------

1. copy any mods you added from the current instance to `unreleased/mods` and `modpack/mods`
2. rename unreleased to [release-version]
3. 
4. stop the server
5. upload the files from server-patch/[release-version]
6. restart the server
7. export the "unreleased" instance from multimc as a zip file named overworld-[release-version].zip
8. rename the "unreleased" instance to "[release-version]"
8. import overworld-[release-version].zip and name it "unreleased"

 

 - create a new zip named overworld-[release-version].zip and put it in /artifacts