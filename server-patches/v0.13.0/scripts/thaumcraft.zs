import crafttweaker.item.IItemStack;
import thaumcraft.aspect.CTAspectStack;

// use arcane archive slivers to make vis crystals
var sliver = <arcanearchives:quartz_sliver>;

val aspectNames = [
  "aer",
  "terra",
  "ignis",
  "aqua",
  "ordo",
  "perditio",
  "vacuos",
  "lux",
  "motus",
  "gelum",
  "vitreus",
  "metallum",
  "victus",
  "mortuus",
  "potentia",
  "permutatio",
  "praecantatio",
  "auram",
  "alkimia",
  "vitium",
  "tenebrae",
  "alienis",
  "volatus",
  "herba",
  "instrumentum",
  "fabrico",
  "machina",
  "vinculum",
  "spiritus",
  "cognitio",
  "sensus",
  "aversio",
  "praemunio",
  "desiderium",
  "exanimis",
  "bestia",
  "humanus",
  "sol",
  "luna",
  "stellae",
  "diabolus",
] as string[];

val aspects = [
  <aspect:aer>,
  <aspect:terra>,
  <aspect:ignis>,
  <aspect:aqua>,
  <aspect:ordo>,
  <aspect:perditio>,
  <aspect:vacuos>,
  <aspect:lux>,
  <aspect:motus>,
  <aspect:gelum>,
  <aspect:vitreus>,
  <aspect:metallum>,
  <aspect:victus>,
  <aspect:mortuus>,
  <aspect:potentia>,
  <aspect:permutatio>,
  <aspect:praecantatio>,
  <aspect:auram>,
  <aspect:alkimia>,
  <aspect:vitium>,
  <aspect:tenebrae>,
  <aspect:alienis>,
  <aspect:volatus>,
  <aspect:herba>,
  <aspect:instrumentum>,
  <aspect:fabrico>,
  <aspect:machina>,
  <aspect:vinculum>,
  <aspect:spiritus>,
  <aspect:cognitio>,
  <aspect:sensus>,
  <aspect:aversio>,
  <aspect:praemunio>,
  <aspect:desiderium>,
  <aspect:exanimis>,
  <aspect:bestia>,
  <aspect:humanus>,
  <aspect:sol>,
  <aspect:luna>,
  <aspect:stellae>,
  <aspect:diabolus>,
] as CTAspectStack[];

for i, aspectName in aspectNames {
  var aspect = aspects[i];
  var recipeName = "tato6_arcane_archives_sliver_to_" + aspectName + "_vis_crystal";
  var visCrystal = <thaumcraft:crystal_essence>.withTag({
    Aspects: [{amount: 1, key: aspectName}]
  });

  mods.thaumcraft.Crucible.registerRecipe(recipeName, "item.crystal_essence", visCrystal, sliver, [aspect * 2]);
}

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