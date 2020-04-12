import mods.roots.Mortar;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

// add thermal pulverized materials to the mortar
val ores = [
  <ore:oreIron>,
  <ore:oreGold>,
  <ore:oreCopper>,
  <ore:oreTin>,
  <ore:oreSilver>, 
  <ore:oreLead>,
  <ore:oreAluminum>,
  <ore:oreNickel>, 
  <ore:coal>,
  <ore:charcoal>
] as IOreDictEntry[];

val dusts = [
  <thermalfoundation:material:0>,
  <thermalfoundation:material:1>,
  <thermalfoundation:material:64>,
  <thermalfoundation:material:65>,
  <thermalfoundation:material:66>,
  <thermalfoundation:material:67>,
  <thermalfoundation:material:68>,
  <thermalfoundation:material:69>,
  <thermalfoundation:material:768>,
  <thermalfoundation:material:769>
] as IItemStack[];

for i, ore in ores {
  val dust = dusts[i];
  Mortar.addRecipe(dust, [ore]);
}

// remove baking roots flour into bread
furnace.remove(<minecraft:bread>, <roots:flour>);
// remove plain crafting of bread
recipes.remove(<minecraft:bread>);

// bake bread in an oven, you monster
furnace.addRecipe(<minecraft:bread>, <ore:foodDough>, 0.35);
