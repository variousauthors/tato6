#loader crafttweaker reloadableevents

val bloodLiquid = <liquid:blood>;

// bloodLiquid of flesh in the crushing tub for blood
mods.rustic.CrushingTub.addRecipe(bloodLiquid * 250, null, <biomesoplenty:fleshchunk>);

// water from nether reeds just like from normal reeds
mods.rustic.CrushingTub.addRecipe(<liquid:water> * 250, <minecraft:sugar>, <betternether:nether_reed>);

// water from block cactus like in a fluid transposer
mods.rustic.CrushingTub.addRecipe(<liquid:water> * 250, null, <minecraft:cactus>);
mods.rustic.CrushingTub.addRecipe(<liquid:water> * 250, null, <betternether:nether_cactus>);
mods.rustic.CrushingTub.addRecipe(<liquid:water> * 250, null, <betternether:barrel_cactus>);

val oneDay = 24000; // ticks

// blood into iron
mods.rustic.EvaporatingBasin.addRecipe(<rustic:dust_tiny_iron>, <liquid:blood> * 500, oneDay / 4);

val compost = <composter:compost>;
val sand = <ore:sand> | <ore:soulSand>;
val magma = <minecraft:magma>;

// making dirt from compost
recipes.addShapeless("tato6-compost-dirt", <minecraft:dirt>, [compost * 3, sand]);

// cooling magma down by burying it in the sand 
recipes.addShaped("tato6_cooling_magma", <minecraft:cobblestone>, [
  [sand, sand, sand], 
  [sand, magma, sand], 
  [sand, sand, sand]
]);

// blood and laval make obsidian
mods.tconstruct.Alloy.addRecipe(<liquid:obsidian> * 36, [<liquid:lava> * 125, <liquid:blood> * 125]);
mods.tconstruct.Alloy.addRecipe(<liquid:clay> * 144, [<liquid:blood> * 250, <liquid:stone> * 72, <liquid:dirt> * 144]);

val netherGrout = <contenttweaker:nether_grout>;

// nether grout recipes
recipes.addShapeless("tato6-nether-grout", netherGrout, [<minecraft:gravel>, <minecraft:magma_cream>, <minecraft:soul_sand>]);

val searedBrick = <tconstruct:materials>;

// furnace recipe for seared brick
furnace.addRecipe(searedBrick, netherGrout, 0.35);

// smelting recipe for seared brick
mods.tconstruct.Melting.addRecipe(<liquid:stone> * 72, netherGrout);

// heater with nether furnace
val tinkersHeater = <tcomplement:melter:8>;
val netherFurnace = <betternether:netherrack_furnace>;

recipes.addShaped("tato6_better_nether_tinkers_melter", tinkersHeater, [
  [null, searedBrick, null], 
  [searedBrick, searedBrick, searedBrick], 
  [searedBrick, netherFurnace, searedBrick]
]);

// mossy cobble from ivy
recipes.addShapeless("tato6-nether-ivy-mossy-cobble", <minecraft:mossy_cobblestone>, [<minecraft:cobblestone>, <biomesoplenty:ivy>]);

val doorWood = <ore:doorWood>;
doorWood.add(<biomesoplenty:hellbark_door>);

// GLAAAAAASSSSSS
// for some reason _none_ of the glass in better nether was ore dicted
val blockGlass = <ore:blockGlass>;

blockGlass.add(<betternether:quartz_glass_framed>);
blockGlass.add(<betternether:quartz_stained_glass_framed>);
blockGlass.add(<betternether:quartz_stained_glass_framed:1>);
blockGlass.add(<betternether:quartz_stained_glass_framed:2>);
blockGlass.add(<betternether:quartz_stained_glass_framed:3>);
blockGlass.add(<betternether:quartz_stained_glass_framed:4>);
blockGlass.add(<betternether:quartz_stained_glass_framed:5>);
blockGlass.add(<betternether:quartz_stained_glass_framed:6>);
blockGlass.add(<betternether:quartz_stained_glass_framed:7>);
blockGlass.add(<betternether:quartz_stained_glass_framed:8>);
blockGlass.add(<betternether:quartz_stained_glass_framed:9>);
blockGlass.add(<betternether:quartz_stained_glass_framed:10>);
blockGlass.add(<betternether:quartz_stained_glass_framed:11>);
blockGlass.add(<betternether:quartz_stained_glass_framed:12>);
blockGlass.add(<betternether:quartz_stained_glass_framed:13>);
blockGlass.add(<betternether:quartz_stained_glass_framed:14>);
blockGlass.add(<betternether:quartz_stained_glass_framed:15>);
blockGlass.add(<betternether:quartz_glass>);
blockGlass.add(<betternether:quartz_stained_glass>);
blockGlass.add(<betternether:quartz_stained_glass:1>);
blockGlass.add(<betternether:quartz_stained_glass:2>);
blockGlass.add(<betternether:quartz_stained_glass:3>);
blockGlass.add(<betternether:quartz_stained_glass:4>);
blockGlass.add(<betternether:quartz_stained_glass:5>);
blockGlass.add(<betternether:quartz_stained_glass:6>);
blockGlass.add(<betternether:quartz_stained_glass:7>);
blockGlass.add(<betternether:quartz_stained_glass:8>);
blockGlass.add(<betternether:quartz_stained_glass:9>);
blockGlass.add(<betternether:quartz_stained_glass:10>);
blockGlass.add(<betternether:quartz_stained_glass:11>);
blockGlass.add(<betternether:quartz_stained_glass:12>);
blockGlass.add(<betternether:quartz_stained_glass:13>);
blockGlass.add(<betternether:quartz_stained_glass:14>);
blockGlass.add(<betternether:quartz_stained_glass:15>);
blockGlass.add(<betternether:cincinnasite_frame>);