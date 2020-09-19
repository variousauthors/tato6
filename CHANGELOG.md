# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

## [0.3.0] - 2020-09-19

## Added
 - Thaumcraft and AuraControl for that sometimes thaumcraft feel
 - Ore Stone Variants joins the fight!
 - certus quartz occurs regularly in the igneous rocks at certain depths
 - certus quartz and amber sand that spawns in rivers
 - QuarryPlus for a nice BC quarry
 - sit, because we deserve a break
 - carry on, for delivering gifts and moving house
 - waddles, for the most adorable friends
 - better railroads to make rail transport more viable in this wild modded world
 - magical psi for spell crafting
 - corpse, a simple gravestone mod
 - controlled burn, to make lightning not cause fires
 - nether chest, to complement the ender chest
 - serene seasons, because how could you not
 - project red, for a smoother more flexible redstone experience
 - ender storage for convenience and pouches
 - tweaked ender storage to be part of arcane archives
 - disabled magical forests for now (too frequent), they will be re-enabled later
 - tweaked a serene season to be 504 mc days, ie 1 earth week per serene season
 - disable as many welcome messages as I could...

## Changed
 - blacklisted many biomes for bewitchment trees
 - reduced the frequency of bewitchment trees
 - removed bewitchment structures
 - continued to fiddle with embers small ruins
 - removed roots huts
 - waystones do not work interdimensionally, they cost 1 level / 500 blocks travelled
 - mortar recipes that were OP such as 1 rod -> 5 powder and the wool recipe
 - nerfed mystical world silk thread quite a bit
 - tweaked the nether to be a little more vanilla
 - osmium spawns only in igneous rocks in to 0 - 50 range, and is a little less common than iron
 - config chisels and bits so that it will allow bop dirt

## Removed
 - corrail tombstone, a wild and crazy gravestone mod
 - roguelike dungeons was not configurable enough it may make a comeback later

## [0.2.0] - 2020-09-11

## Added
 - astral sorcery to add mystery and power to the night
 - ancient temples spawn only on the highest alps peaks
 - buried temples can appear in snowy, and sandy biomes above y = 140
 - little shrines spawn only in magical biomes
 - ruined shrines do not spawn at all
 - add EnderIO and AE2 
 - hit the entity id limit, so we added JEID
 - loading was getting slow so we added Surge
 - change ae2 meteorites to spawn below 40, and made them further apart
 - add Aetherworks for lovely moonlight strangeness
 - restrict aetherium ore to spawn above 130 but increase their frequency
 - Mekanism for a different take on tech
 - Osmium spawns in the 20 - 64 range similar to iron but at lower frequencies
 - Nuclearcraft for those big dangerous reactors (disabled wastelands)
 - Configured COFH to spawn nuclearcraft ores in the bases of mountains

## Changed
 - Waystones config updated to prevent breaking generated waystones
 - Waystones set max level cost to 30
 - set wickerman spawn to 0 because I found a gross wickerman (it spawned real bad)
 - reduced the spawning frequency of embers small ruins from 5 to 1
 - increased the occurrence of meteoric iron geodes because they are fun
 - changed their surface to sky-stone

## Removed
 - Additional Structures is not sufficiently configurable (or all that useful, really).
   Part of this change is also that we've decided that structures in the near-overworld
   should predominantly be build by players.

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
