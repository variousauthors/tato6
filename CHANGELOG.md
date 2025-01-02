# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.13.0]

### Changed
- BoP devil weed now drops bewitchment seeds
- rustic brass fixture recipes now additionally accept aluminum brass
- rustic brass chain melting recipe produces aluminum brass instead of magic brass
- gravel ores can be used to make the corresponding native clusters
- fixed a recipe conflict so that sentek stone nodes are craftable 
- added a few missing seeds to the composter
- aubergine is seasonal
- alchemical brass can be crafted from aluminum brass in a crucible
- precision sawmill now accepts a variety of BoP wood
- sliver of light can be used in the crucible in place of nether quartz
- bewitchment cauldron can be heated by campfires
- immersive engineering hammer can be used to craft plates just like the rest of the hammers

### Added
- MCMultiPart so you can hide your mekanism ducts
- Immersive Engineering, along with a few addons
- the final ? round of microblocks

### Removed
- book can no longer be crafted from paper x3 + string
- mystcraft apple gall no longer appears in the JEI
- bewitchment apple gall no longer drops from oak leaves

## [0.12.1] - 2024-10-13

### Changed
- thaumcraft native clusters can be ground in a quern for x3 ore dust
- jumping on shards of glass in a crushing tub for blood
- wood ash is compostable

## [0.12.0] - 2023-12-15

The Better Better Nether Update: The Nether Just Got Better. An update for your nethering needs! Crush cacti with your feet; stand in a smeltery to make clay from your blood; craft precious items into cobble! We've pulled out all the stops in this update!

### Added
 - More Buckets (that's a mod)
 - custom Nether Grout, craftable in the nether, that can be used just like grout
 - added recipe for mossy cobble from cobble + BoP's nether ivy
 - pure daisy recipe for permafrost
 - recipe to craft cobblestone from magma and soulsand
 - recipe to craft dirt from compost and sand or soulsand
 - tinker's alloying can use blood instead of water for some recipes
 - blood in a drying basin gives tiny piles of iron

### Changed
 - removed all but one bucket from More Buckets and used it to create cincinnasite bucket
 - fixed recipe for the windup spring
 - mergebox recipe changed to use iron axle
 - Better Nether plants are compostable
 - Better Nether plants are all ore dicted appropriately
 - BoP's hellbark door is doorWood
 - Better Nether's reeds can be crushed for water in a crushing tub
 - all cactus varieties, including Better Nether cacti, can be crushed for water in a crushing tub
 - Better Nether's glass is all blockGlass now
 - seared heater recipe accept's Better Nether's nether furnace

## [0.11.1] - 2023-11-13

We've got an exciting patch release for you today folks! Craftable BBQ Jackfruit, cinderpearls, viscaps, and shimmerleaf plants all in one patch! Also contains an 80% chance to remove creepers from hard to reach places!

### Added
 - added thaumcraft/roots recipes for the thaumcraft plants

### Changed
 - update roots another little bit
 - debarked vanilla logs work in all orientations
 - bits back slots now hold 1 block (4k bits)
 - fixed bbq jackfruit
 - fixed creepers ignoring aversion obelisk

## [0.11.0]

Wow! It's the "Back to School Update, Part 2: salt and gall edition". Prepare to enter a world where sea water is salty, and apple gall is made by wasps. If you've ever wanted to strip the bark off an Olive tree, your time is now! Update your download!

### Added
 - debark adds modded stripped logs
 - biome colorizer for ocean colors

### Changes
 - upgraded Roots to v3.0.35
 - upgraded MysticLib
 - upgraded Mystical World
 - upgraded Rustic to v1.17 for some crafttweaker integrations
 - upgraded crafttweaker
 - unified plate crafting to use the hammer properly
 - add dough -> bread to smoker and campfire
 - removed some errant flour -> bread recipes
 - removed Mekanism holiday greeting
 - add a variety of plants to the composter
 - set embers book to be fully unlocked as a work-around to progress resetting when you restart the client
   - @see https://github.com/DaedalusGame/EmbersRekindled/issues/162
 - added some foods that didn't have ore dict to ore dictionary entries
 - stripping a log with an axe also yields roots bark
 - sawdust to paper recipe that uses a bucket of water is the better one now
   - also added an equivalent recipe to the fluid transposer
 - bark has more general uses, mainly as compost and sawdust
   - added bark -> sawdust recipes to mekanism, thermal, and quern
   - toned down the mekanism sawdust path, it now yields ~18 sawdust instead of ~36
 - compost is more versatile, used in some of the same recipes as bone meal
 - bucketing up water from below sea level gives you sea water, which is useless as water but great for salt
 - adjusted the ocean and beach biomes' water color to be distinct (greener)
 - you can evaporate water in an evaporating basin to get salt
   - evaporating sea water or brine yield more salt
   - machines that create brine have been tweaked to go from pinch -> mb
 - saltmod evaporator can now store up to 3 buckets of water at a time yaay
 - unfired clay bucket can now be crafter (resolved a recipe conflict)
 - campfire correctly handles pam's foods
 - biomesoplenty seaweed can now be used as a source of salt
 - tweaked salty mod's salt crystal to drop more pinches, and grow faster
   - it is better than the evaporator, but can't be "automated" (as easily?)
 - apple gall no longer drops naturally, you must cultivate it (see the guide)
 - adjusted growthcraft heat sources from witches oven and furnace to be sufficient

## [0.10.2]

The "Back to School, 2022" update adds forge microblock compat for a few more blocks, addresses a very minor bug, and officially legitimately makes the nether "all about ghasts". Update your download!

### Changed
 - the nether is all about ghasts now
 - removed or toned down some less flavorful nether mobs
 - update ZenUtils to 1.9.8 (officially)
 - add another round of micro-blocks
 - updated mystcraft/symbols.cfg to remove duplicate growthcraft fluids and BoP biomes (they don't decorate correctly in mystcraft dimensions)
   - note, you have to do something weird here... like start the server and stop it a few times? Look up the weirdness in the BoP/mystcraft fix mod
 - small fix to the mystcraft-ink script to fix a null pointer exception when clicking the air

## [v0.10.1]

### Changed
 - oops! I left some duplicate mods in there when I upgraded them ;)

## [v0.10.0]

The "The Update After Next" update is all about mystcraft, so you can get yourself trapped in an unstable age while you wait for the Lunar Update to drop. Update your download!

### Added
 - Mystcraft
 - JEI support for mystcraft
 - mystcraft-info adds additional tooltips for each page
 - ltta adds a guidebook for mystcraft
 - more mystcraft (because there was not enough already)
 - pages adds even more mystcraft
 - linking-tweaks adds some additional mystcraft configuration options
 - added content tweaker and zenutils for additional modpackery
 - what looms ahead for fancy 1.13+ loom mystcraft integration

### Changed
 - crushing tub recipe for ink bush seeds to mystcraft ink
 - lightwell recipe for ender biotite to mystcraft ink
 - tc crucible recipe to fill a bucket with mystcraft ink
 - changed mystcraft ink to behave more like a normal fluid so you can bucket it up
 - upgraded crafttweaker for zenutils support
 - added the mystcraft section to the almanac

### Removed
 - looms from futuremc conflict with looms from what looms ahead

## [v0.9.0]

Fun fact: this version was never released!

### Added
 - Advanced Rocketry
 - Created a custom moon for your space exploring pleasure

## [v0.8.2] - 2021-11-28

### Removed
 - Oops! I accidentally added options.txt to the modpack, which is not correct. Removing it in this patch.

## [v0.8.1] - 2021-11-28

If you like gears, heat, veal and chickpeas... then this patch has it all and more! If you don't like those things: what's wrong with you? Update your download!

### Added
 - custom resource-pack for katrien server: all livingwood, gearbox, wooden axle, and advanced crafting table

### Changed
 - expanded the microblocks config
 - chicken chunks away timeout set to 30 minutes
 - chisels and bits stack size set to 2048
 - set spanwpoint at anytime by clicking on a bed
 - guide to the overworld recipe accepts any vanilla sapling
 - various machines now can make wood ash from any sapling
 - witches oven can make wood ash from rustic saplings
 - gearbox now requires less iron to craft
 - enabled aetherium gears for maximum revolution
 - juniper from bewitchment can be used in pam's recipies
 - pam's fruits can be used in growthcraft cheese
 - pam's grinder now supports animania and familiar fauna meats
 - growthcraft heatsources now include lit furnace and witch's oven (they are slower than lava/nitor)
 - fluxed electrum, aluminum, and speckled gears all work in gearboxes now
 - factorizer is no longer confused by charcoal
 - overgrown stone can now be crafted from stone by starlight infusion
 - slime saplings of various kinds now occur as very rare drops from leaves wherever those leaves also drop slime (hell, swamps, etc...)
 - hummus is crafted from chickpeas, not beans
 - bibliocraft framing saw and framing sheets can be crafted with any planks
 - snails sometimes drop purple slime if killed by a player
 - (BETA) creepers only spawn below y = 63 (ie "underground"). This is just a test, to see how it feels.

### Removed
 - patreon pie can no longer be crafted or found in the JEI because it is dumb
 - market can no longer be crafted or found in the JEI because it conflicts with the theme of exploration
 - remotes from simple storage network because if you need remotes you should upgrade to AE2

## [v0.8.0] - 2021-05-22

The "This is not an update" update brings you more marble, more colour, more microblocks, and more reasons to go to the nether (one)! What are you waiting for!? Update your download!

### Added
 - MoreTweaker for tweaking bewitchment
 - Flat Colored Blocks for high level chiselling
 - Future MC, see the changes below for a list of what features are included
 - Canny Composter, because future mc's composter is not ready for modded mc

### Changes
 - upgrade bewitchment from 0.21.10 to 0.21.11
 - tweaked bewitchment salt back in as "pure salt"
 - added a round of microblocks for bewitchment and bop
 - fixed ghasts spawning in the end
 - botania alchemy and astral sorcery twighlight transformation can be used to make marble
 - from future mc
   - remove wood blocks (quark adds them)
   - remove soul soil (no way to obtain) and soul lantern/torch
   - disable fletcher
   - disable buzzy bee update
   - disable flowers and walls and trapdoors and fish because we already have them
   - disable trident because it cannot be obtained
   - disable nautilus shell because it has no use without conduit power
   - disable composter in favour of canny composter

## [0.7.1] - 2021-03-12

Do you like fruit? How about slime? Version 0.7.1 is now available. Update your download.

### Changes
 - add orange slime as a drop from some plants in the nether, mistakenly not added in the previous version
 - a variety of swamp trees now drop slime
 - corrected some mistakes with the mekanism ore processing from 0.7.0
 - listAllFruit and foodFruit are interchangeable now
 - redstone gears from mystical mechanics are now craftable
 - the pinch of salt recipe now has a name
 - a variety of blocks can now be used with forge microblocks

### Added
 - dropt, which was mistakenly not included in 0.7.0
 - a patchouli book that serves as a guide to the modpack v1

## [0.7.0] - 2021-01-09

Hey everyone! Welcome to the first official release of Tato6 (a.k.a. Katrien) for the Technic Launcher!

### Changes
 - add botania infusion recipes for getting the other kinds of slimes
 - add orange slime as a drop from some plants in the nether
 - remove preston compression recipes from the JEI since it is all or nothing :/
 - reset the BoP nether biomes to default (previously I had made the BoP nether biomes rare
   to maintain the vanilla feel, but now seeing as vanilla Nether is wild... ours will be too)
 - did some tweaking to inControl spawn rules so that ghasts spawn like I remember them spawning
 - mekanism ore processing accepts gravel ores

### Added
 - add Better Nether to make the nether better

## [0.6.1] - 2020-11-28

### Changed
 - oops: 0.6.0 had the wrong version of nature's compass, so this patch fixes that

## [0.6.0] - 2020-11-28

### Changed
 - unified certus quartz so that Chris could have more certus quartz
 - set astral sorcery falling stars not to explode
 - set chicken chunks to only load when you are online
 - added naturally occurring bewitchment and roots plants to serene seasons
 - add olive wood and logs to forge microblocks
 - blizz spawn in snowy tundra during rain and storms
 - nitor of all colors works as a heat source for growthcraft

## Added
 - Masonry Block to make lovely cornerstones
 - Pantography for more interesting map shenanigans
 - Thermal Innovation adds more toys for industry
 - Just a Few Fish to liven up the rivers and the seas
 - Garden Stuff really just adds like, some wrought iron stuff but... whatever! It looks nice
 - Add wireless redstone for transmitting redstone without having to worry about wires

## [0.5.0] - 2020-10-31

### Changed
 - thermal expansion elementals now spawn from spawners regardless of biome
 - reduce the frequency of silkworm eggs from 1/55 to 1/200
 - stakes and shakes are now craftable
 - pinch of salt is now an itemSalt, previously uncraftable foods are now craftable
 - the mechanical to rf converter can now be crafted

### Added
 - no enderman pickup prevents endermen from picking up blocks
 - redstone arsenal adds tools powered by RF

## [0.4.0] - 2020-10-17

### Added
 - unlimited chisel works so that dooly can craft nice things from pine and olive wood
 - preston for compressed sand, gravel, stone, cobble
 - heterorustichromia for pre-industrial tech shenanigans

### Changed
 - unified flour, now Pam's is the only craftable flour
 - added wheat -> flour to all grinding machines, with flour doubling
 - added feather support to recipe for scribing tools
 - add olive oil as an ingredient for rich biomass and rich bioblend
 - add olive oil as a fuel for compression dynamo and combustion generator
 - scribing tools can now be crafted with any feathers, not just feathers
 - scribing tools can now be used to craft a map instead of compass
 - removed the recipe for quark stone pavement to make way for compressed stone; we already have pavement from chisel anyway
 - removed the recipe for quark thatch due to a conflict with the better looking earthworks thatch

## [0.3.2] - 2020-10-04

### Changed
 - further hacked Nature's Compass to be more friendly at great distances
 - fixed magnesium generation to be in the correct range
 - added Tea the Story lemons to listAllFruit and listAllCitrus
 - Tea the Story lemons no longer drop from trees and are essentially unobtainable
 - resolved a recipe conflict between earthworks mud and mysticalworld wet mud

## [0.3.1] - 2020-09-26

### Added
 - In Control to take back the niiiiiight
 - used in control to control the way that thermal expansion elementals spawn

### Changed
 - corpse was crashing which we fixed by setting "owner only" to false in the config
 - unidict config set to hide unified ores in JEI
 - restore pinch of salt which got clobbered by unidict
 - removed the roots book recipe, because it is OP
 - re-added the roots spindle recipe which was removed in error
 - removed silk from ore:string and added a 2x2 silk -> wool recipe so that 
   you can definitely get string from silk 1 to 1 but it takes processing
 - fixed native silver ore distribution
 - tweaked map recipe to use quill and paper instead of compass
 - generated JER data for 5000 chunks

## [0.3.0] - 2020-09-19

### Added
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

### Changed
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

### Removed
 - corrail tombstone, a wild and crazy gravestone mod
 - roguelike dungeons was not configurable enough it may make a comeback later

## [0.2.0] - 2020-09-11

### Added
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

### Changed
 - Waystones config updated to prevent breaking generated waystones
 - Waystones set max level cost to 30
 - set wickerman spawn to 0 because I found a gross wickerman (it spawned real bad)
 - reduced the spawning frequency of embers small ruins from 5 to 1
 - increased the occurrence of meteoric iron geodes because they are fun
 - changed their surface to sky-stone

### Removed
 - Additional Structures is not sufficiently configurable (or all that useful, really).
   Part of this change is also that we've decided that structures in the near-overworld
   should predominantly be build by players.

## [0.1.1] - 2020-04-12

### Added

 - Fork of Nature's Compass, you can use the compass to track down rare biomes but it isn't easy!
 - Baking Pam's dough in a furnace gives you bread.

### Changed

 - Bewitchemt mobs (like blackdog and druden) mostly spawn in SPOOKY and MAGICAL biomes (including dense forests)
 - Embers bin recipe now uses tin instead of iron because bins suck compared to thermal caches.

### Removed

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
