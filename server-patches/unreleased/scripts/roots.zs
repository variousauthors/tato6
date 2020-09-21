import mods.roots.Mortar;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

/** MORTAR -- The Mortar should not be a doubler, it should be a +1 at best. */

/** Add pulverized materials, but do not double them */

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

/** MORTAR -- remove various doubling recipes */

Mortar.removeRecipe(<minecraft:blaze_powder>);
Mortar.removeRecipe(<minecraft:string>);
Mortar.removeRecipe(<mysticalworld:silk_thread>);

Mortar.addRecipe(<minecraft:blaze_powder> * 3, [<minecraft:blaze_rod>]);
Mortar.addRecipe(<minecraft:string> * 2, [<minecraft:wool>]);

/** SILK -- silk is OP so lets tone it down */

recipes.remove(<mysticalworld:silk_thread>);

recipes.addShapeless(<mysticalworld:silk_thread> * 2, [<mysticalworld:silk_cocoon>, <mysticalworld:spindle>]);
recipes.addShapeless(<mysticalworld:silk_thread>, [<mysticalworld:silk_cocoon>]);

// the roots book recipe is OP it uses silk-thread instead os string
recipes.removeByRecipeName('roots:book');

// remove silk from the string ore dictionary
val oreString = <ore:string>;
oreString.remove(<mysticalworld:silk_thread>);

val silk = <mysticalworld:silk_thread>;
val wool = <minecraft:wool>;
// silk can be crafted into wool, which can be broken down into string
recipes.addShaped("tato6_silk_wool", wool,
 [[silk,silk],
  [silk,silk]]);

/** MISC */

// remove baking roots flour into bread
furnace.remove(<minecraft:bread>, <roots:flour>);
// remove plain crafting of bread
recipes.remove(<minecraft:bread>);

// bake bread in an oven, you monster
furnace.addRecipe(<minecraft:bread>, <ore:foodDough>, 0.35);
