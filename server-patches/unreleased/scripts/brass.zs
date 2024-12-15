


// all rustic brass items should be craftable from alubrass
var candle = <rusticthaumaturgy:candle_brass>;
var chain = <rusticthaumaturgy:chain_brass>;
var changelier = <rusticthaumaturgy:chandelier_brass>;
var lantern = <rusticthaumaturgy:lantern_brass>;

var wax = <ore:wax>;
var aluBrassIngot = <tconstruct:ingots:5>;
var minecraftString = <minecraft:string>;
var coal = <minecraft:coal>;
var charcoal = <minecraft:coal:1>;

recipes.addShaped("tato6-resticthaumaturgy-alubrass-candle", <rusticthaumaturgy:candle_brass> * 4, [
  [minecraftString], 
  [wax],
  [aluBrassIngot]
]);

recipes.addShaped("tato6-resticthaumaturgy-alubrass-chain", <rusticthaumaturgy:chain_brass> * 12, [
  [aluBrassIngot], 
  [aluBrassIngot],
  [aluBrassIngot]
]);

recipes.addShaped("tato6-resticthaumaturgy-alubrass-chandelier", <rusticthaumaturgy:chandelier_brass> * 2, [
  [null, aluBrassIngot, null], 
  [chain, null, chain],
  [aluBrassIngot, aluBrassIngot, aluBrassIngot]
]);

recipes.addShaped("tato6-resticthaumaturgy-alubrass-lantern", <rusticthaumaturgy:lantern_brass> * 4, [
  [aluBrassIngot], 
  [coal | charcoal],
  [aluBrassIngot]
]);

// BUT brass rustic stuff shouold not melt back into magical brass
mods.tconstruct.Melting.removeRecipe(<liquid:brass>, chain);

var brassIngot = <thaumcraft:ingot:2>;

// aluBrass should have aspects
aluBrassIngot.setAspects([<aspect:metallum> * 10, <aspect:aer> * 5, <aspect:permutatio> * 5]);

// should be able to go aluBrass -> thaumbrass
mods.thaumcraft.Crucible.registerRecipe("tato6_alubrass_to_brass", "item.ingot.brass", brassIngot, aluBrassIngot, [<aspect:instrumentum> * 5]);
