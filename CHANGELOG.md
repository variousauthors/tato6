# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

## Added
 - astral sorcery to add mystery and power to the night
 - ancient temples spawn only on the highest alps peaks
 - buried temples can appear in snowy, desert, or mountain terrain
 - little shrines spawn only in magical biomes
 - ruined shrines do not spawn at all
 - galacticraft for exploring the vast darkness of space (he lurks)
 - disable silicon and aluminum ore (cofh handles aluminum)
 - add EnderIO and AE2 for silicon to support galacticraft
 - hit the entity id limit, so we added JEID
 - loading was getting slow so we added Surge
 - change ae2 meteorites to spawn below 50
 - add Aetherworks for lovely moonlight strangeness
 - restrict aetherium ore to spawn above 150 but increase their frequency
 - Mekanism for a different take on tech
 - Osmium spawns in the 20 - 64 range similar to iron but at lower frequencies

## Changed
 - Waystones config updated to prevent breaking generated waystones
 - Waystones set max level cost to 30
 - set wickerman spawn to 0 because I found a gross wickerman (it spawned real bad)
 - reduced the spawning frequency of embers small ruins from 5 to 3
 - increased the occurrence of meteoric iron geodes because they are fun
 - changed their surface to sky-stone

## [0.1.1] - 2020-04-12

## Added

 - Fork of Nature's Compass, you can use the compass to track down rare biomes but it isn't easy!
 - Baking Pam's dough in a furnace gives you bread.

## Changed

 - Bewitchemt mobs (like blackdog and druden) mostly spawn in SPOOKY and MAGICAL biomes (including dense forests)
 - Embers bin recipe now uses tin instead of iron because bins suck compared to thermal caches.

## Removed

 - Roots bread recipe in favour of Pam's bread recipe because Pam's is cooler.
 - Crafting table bread recipes, you must bake bread.

## [0.1.0] - 2020-04-09

### Added

 - Alluvial aluminium ore with a weight of 4 just for fun because I love gravel ore
 - Unidict mod and dependencies (instantunify, wanionlib) to experiment with automatic unification
 - Tinker's JEI to help players who want to do Tinker's
 - Appleskin to display saturation of food items in the UI
 - Mystical Mechanics and Mystical Gears to complement Embers (I didn't realize how important these were)
 - Blockcraftery as a substitution for Carpenter's so that I can have my secret doors...
 - Sentek's Runic Teleporters as a poor man's waystones or "cheap, dangerous teleportation"
 - Thermal Expansion and deps (codechicken lib) to form the basis of tech and automation
 - Arcane Archives and Simple Storage Network to help organize our rediculous modded inventories
 - Improved Backpacks as an elegant diagetic personal storage device
 - A CHANGELOG based on keepchangelog.com to help me keep track of things
 - Thermal Dynamics because it got pipes

### Changed

 - Alluvial gravel ore's min spawn height to 0 so that everyone can enjoy gravel ore
 - Vanilla gravel's min spawn height from 0 to 80, to eliminate overlap with alluvial ore
 - Salt ore cluster count from 8 to 4 to make it a little more rare
 - Alluvial tin ore weight from 160 to 80 because there was just so. much. tin.
 - Alluvial gold ore weight from 1 to 2 to make it a little less rare
 - Embers ruins spawn weight from 0 to 5 because it was accidentally set to 0 ;)
 - Roots mortar can now be used to pulvarize ores, coal, etc... (but it doesn't double the ores)

## Removed

 - Mystical world's book from the player's starting inventory
 - Tinker's Construct's book from the player's starting inventory
 - Mystical world's ore dusts because we get ore dusts from thermal foundation
 - Mystical world's tiny dusts... what are those!?
 - Quark's chance to spawn Guardians in deep ocean biomes, nobody needs that

## [0.0.3] - 2020-03-31

### Added

 - Initial set of mods and configs, mainly the core mods, near overworld, and natural magic

[0.1.1]: https://github.com/variousauthors/tato6/compare/bfa9e10...5f9e492
[0.1.0]: https://github.com/variousauthors/tato6/compare/512f69a...ae3ba
[0.0.3]: https://github.com/variousauthors/tato6/commit/79e36bc1ca9d608caa418b146af19011386f780e
