import crafttweaker.item.IItemStack;

// use arcane archive slivers to make vis crystals
var aer = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]});
var sliver = <arcanearchives:quartz_sliver>;

mods.thaumcraft.Crucible.registerRecipe("tato6_arcane_archives_sliver_to_aer_vis_crystal", "item.crystal_essence", aer, sliver, [<aspect:aer> * 2]);

// native ore clusters from gravel ores
var oreNames = [
  "iron",
  "gold",
  "copper",
  "tin",
  "silver",
  "lead"
] as string[];

var clusters = [
  <thaumcraft:cluster:0>,
  <thaumcraft:cluster:1>,
  <thaumcraft:cluster:2>,
  <thaumcraft:cluster:3>,
  <thaumcraft:cluster:4>,
  <thaumcraft:cluster:5>
] as IItemStack[];

var gravelOres = [
  <gravelores:iron_gravel_ore>,
  <gravelores:gold_gravel_ore>,
  <gravelores:copper_gravel_ore>,
  <gravelores:tin_gravel_ore>,
  <gravelores:silver_gravel_ore>,
  <gravelores:lead_gravel_ore>,
] as IItemStack[];

for i, oreName in oreNames {
  var recipeName = "tato6_gravel_ore_native_cluster_" + oreName;
  var lockName = "item.cluster." + oreName;
  var input = gravelOres[i];
  var output = clusters[i];

  mods.thaumcraft.Crucible.registerRecipe(recipeName, lockName, output, input, [<aspect:metallum> * 5, <aspect:ordo> * 5]);
}