// @TODO after upgrading roots
// import mods.roots.Rituals;
import mods.roots.Fey;

// compost should be brownDye
val compost = <composter:compost>;
val brownDye = <ore:dyeBrown>;
brownDye.add(compost);

// compost should work in floral fertilizer recipe
recipes.addShapeless("tato6-compost-botania-fertilizer_powder", <botania:fertilizer>, [compost, <botania:dye:*>, <botania:dye:*>, <botania:dye:*>, <botania:dye:*>]);
recipes.addShapeless("tato6-compost-botania-fertilizer_dye", <botania:fertilizer>, [compost, <minecraft:dye:11>, <minecraft:dye:11>, <minecraft:dye:1>, <minecraft:dye:1>]);

// mysticalworld:wasp_attractant
recipes.addShapeless("tato6-mysticalworld-wasp_attractant", <mysticalworld:wasp_attractant> * 4, [compost, <minecraft:sugar> | <minecraft:apple> | <minecraft:cookie> | <minecraft:melon> | <minecraft:cake> | <minecraft:pumpkin_pie>, <minecraft:rotten_flesh> | <minecraft:porkchop> | <minecraft:beef> | <minecraft:chicken> | <minecraft:mutton> | <minecraft:fish> | <minecraft:fish:1> | <minecraft:fish:2> | <minecraft:rabbit> | <mysticalworld:raw_squid> | <mysticalworld:venison> | <minecraft:cooked_fish> | <minecraft:cooked_fish:1> | <minecraft:cooked_porkchop> | <minecraft:cooked_beef> | <mysticalworld:cooked_squid> | <mysticalworld:cooked_venison> | <minecraft:cooked_chicken> | <minecraft:cooked_rabbit> | <minecraft:cooked_mutton> | <minecraft:egg>]);

// rustic:fertile_soil
recipes.addShapeless("tato6-rustic-fertile_soil", <rustic:fertile_soil>, [compost, <minecraft:dirt>]);

// fey crafting elemental soil
Fey.addRecipe("elemental_soil", <roots:elemental_soil>, [<minecraft:dirt>, <roots:wildroot>, compost | <minecraft:dye:15>, <minecraft:gravel>, <roots:terra_moss>]);

// pyre ritual germination
// Rituals.modifyRitual("ritual_germination", [<roots:spirit_herb>, <mysticalworld:aubergine>, <roots:bark_jungle>, <minecraft:dye:15> | compost, <roots:wildroot>]);

val tallGrass = <ore:tallgrass>;
tallGrass.add(<betternether:nether_grass>);
tallGrass.add(<betternether:agave>);

val materialBinding = <ore:materialBinding>;
materialBinding.add(<betternether:stalagnate_seed>);
materialBinding.add(<betternether:nether_cactus>);
materialBinding.add(<betternether:barrel_cactus>);
materialBinding.add(<betternether:black_bush>);

val treeSapling = <ore:treeSapling>;
treeSapling.add(<betternether:stalagnate_seed>);

val blockCactus = <ore:blockCactus>;
blockCactus.add(<betternether:nether_cactus>);
blockCactus.add(<betternether:barrel_cactus>);

val orange = <minecraft:dye:14>;
furnace.addRecipe(orange, <betternether:nether_cactus>, 0.35);

val cyan = <minecraft:dye:6>;
furnace.addRecipe(cyan, <betternether:barrel_cactus>, 0.35);

val blockSlime = <ore:blockSlime>;
blockSlime.add(<betternether:block_eyeball>);

val treeLeaves = <ore:treeLeaves>;
treeLeaves.add(<betternether:black_bush>);

val listAllseed = <ore:listAllseed>;
listAllseed.add(<betternether:ink_bush_seed>);
listAllseed.add(<betternether:black_apple_seed>);
listAllseed.add(<betternether:magma_flower>);

val listAllfruit = <ore:listAllfruit>;
val cropApple = <ore:cropApple>;
val foodApple = <ore:foodApple>;
val foodFruit = <ore:foodFruit>;

listAllfruit.add(<betternether:black_apple>);
cropApple.add(<betternether:black_apple>);
foodApple.add(<betternether:black_apple>);
foodFruit.add(<betternether:black_apple>);