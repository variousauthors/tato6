import mods.arcanearchives.GCT;

recipes.remove(<enderstorage:ender_storage:0>);
recipes.remove(<enderstorage:ender_storage:1>);
recipes.remove(<enderstorage:ender_pouch>);

GCT.addRecipe("tato6_ender_chest", <enderstorage:ender_storage:0>, [
  <arcanearchives:shaped_quartz>,
  <minecraft:wool>,
  <ore:obsidian> * 2,
  <arcanearchives:radiant_chest>,
  <minecraft:blaze_rod> * 4,
  <minecraft:ender_pearl>,
]);

GCT.addRecipe("tato6_ender_tank", <enderstorage:ender_storage:1>, [
  <arcanearchives:shaped_quartz>,
  <minecraft:wool>,
  <ore:obsidian> * 2,
  <arcanearchives:radiant_tank>,
  <minecraft:blaze_rod> * 4,
  <minecraft:ender_pearl>,
]);

GCT.addRecipe("tato6_ender_pouch", <enderstorage:ender_pouch>, [
  <arcanearchives:scintillating_inlay>,
  <minecraft:wool>,
  <minecraft:blaze_powder> * 4,
  <minecraft:ender_pearl>,
  <ore:leather> * 3,
]);