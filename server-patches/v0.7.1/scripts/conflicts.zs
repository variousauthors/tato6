
// remove quark thatch, it conflicts with earthworks
recipes.remove(<quark:thatch>);

// remove quark pavements, it conflicts with compression
// and we have chisel pavements
recipes.remove(<quark:world_stone_pavement:0>);
recipes.remove(<quark:world_stone_pavement:1>);
recipes.remove(<quark:world_stone_pavement:2>);

// remove the timber -> vertical planks recipe
// to fix the timber -> shakes recipe
recipes.removeShapeless(<quark:vertical_planks:1>, [<earthworks:block_timber_spruce>]);
recipes.removeShapeless(<quark:vertical_planks:2>, [<earthworks:block_timber_birch>]);
recipes.removeShapeless(<quark:vertical_planks:3>, [<earthworks:block_timber_jungle>]);
recipes.removeShapeless(<quark:vertical_planks:4>, [<earthworks:block_timber_acacia>]);
recipes.removeShapeless(<quark:vertical_planks:5>, [<earthworks:block_timber_dark_oak>]);

recipes.addShapeless("tato6_earthworks_block_wood_shingle1_alt", <earthworks:block_wood_shingle:1> * 6, [<earthworks:block_timber_spruce>]);
recipes.addShapeless("tato6_earthworks_block_wood_shingle2_alt", <earthworks:block_wood_shingle:2> * 6, [<earthworks:block_timber_birch>]);
recipes.addShapeless("tato6_earthworks_block_wood_shingle3_alt", <earthworks:block_wood_shingle:3> * 6, [<earthworks:block_timber_jungle>]);
recipes.addShapeless("tato6_earthworks_block_wood_shingle4_alt", <earthworks:block_wood_shingle:4> * 6, [<earthworks:block_timber_acacia>]);
recipes.addShapeless("tato6_earthworks_block_wood_shingle5_alt", <earthworks:block_wood_shingle:5> * 6, [<earthworks:block_timber_dark_oak>]);


// remove the vertical planks -> rustic stake recipe
// and add a vertical slabs -> rustic stake recipe
// so that it is just like drying rack
recipes.remove(<rustic:crop_stake>);
recipes.addShaped('tato6_rustic_stake', <rustic:crop_stake>, [
  [null, <ore:slabWood>, null],
  [null, <ore:slabWood>, null],
  [null, <ore:slabWood>, null]
]);

// redstone dynamo not craftable
val ironIngot = <ore:ingotIron>;
recipes.remove(<mystgears:redstone_dynamo>);
recipes.addShaped('tato6_mystgears_redstone_dynamo', <mystgears:redstone_dynamo>, [
  [ironIngot, <ore:nuggetGold>, ironIngot],
  [<mysticalmechanics:axle_iron>, <ore:gearGold>, <ore:blockRedstone>],
  [ironIngot, <ore:nuggetGold>, ironIngot]
]);

// redstone gears not craftable

recipes.addShaped("tato6_mysticalmechanics_gear_gold_on", <mysticalmechanics:gear_gold_on>, [
  [<minecraft:redstone_torch>, <minecraft:redstone_torch>, <minecraft:redstone_torch>], 
  [<minecraft:redstone_torch>, <ore:gearGold>, <minecraft:redstone_torch>], 
  [<minecraft:redstone_torch>, <minecraft:redstone_torch>, <minecraft:redstone_torch>]
]);

recipes.addShaped("tato6_mysticalmechanics_gear_gold_off", <mysticalmechanics:gear_gold_off>, [
  [<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>], 
  [<ore:dustRedstone>, <ore:gearGold>, <ore:dustRedstone>], 
  [<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>]
]);

// add all listAllFruit to foodFruit and vis versa?
<ore:listAllFruit>.addAll(<ore:foodFruit>);
<ore:foodFruit>.mirror(<ore:listAllFruit>); 