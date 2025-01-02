import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

// these recipes are cheaper than the machines
mods.unidict.removalByKind.get("Crafting").remove("plate");

val ingots = [
  <minecraft:iron_ingot>,
  <minecraft:gold_ingot>,
  <thermalfoundation:material:128>,
  <thermalfoundation:material:129>,
  <thermalfoundation:material:130>,
  <thermalfoundation:material:131>,
  <thermalfoundation:material:132>,
  <thermalfoundation:material:133>,
  <thermalfoundation:material:134>,
  <thermalfoundation:material:135>,
  <thermalfoundation:material:136>,
  <thermalfoundation:material:160>,
  <thermalfoundation:material:161>,
  <thermalfoundation:material:162>,
  <thermalfoundation:material:163>,
  <thermalfoundation:material:164>,
  <thermalfoundation:material:165>,
  <thermalfoundation:material:166>,
  <thermalfoundation:material:167>,
  <embers:ingot_dawnstone>,
  <redstonearsenal:material:32>,
  <thaumcraft:ingot:2>,
  <thaumcraft:ingot>,
  <thaumcraft:ingot:1>,
  <immersiveengineering:metal:5>,
] as IIngredient[];

val plates = [
  <thermalfoundation:material:32>,
  <thermalfoundation:material:33>,
  <thermalfoundation:material:320>,
  <thermalfoundation:material:321>,
  <thermalfoundation:material:322>,
  <thermalfoundation:material:323>,
  <thermalfoundation:material:324>,
  <thermalfoundation:material:325>,
  <thermalfoundation:material:326>,
  <thermalfoundation:material:327>,
  <thermalfoundation:material:328>,
  <thermalfoundation:material:352>,
  <thermalfoundation:material:353>,
  <thermalfoundation:material:354>,
  <thermalfoundation:material:355>,
  <thermalfoundation:material:356>,
  <thermalfoundation:material:357>,
  <thermalfoundation:material:358>,
  <thermalfoundation:material:359>,
  <embers:plate_dawnstone>,
  <redstonearsenal:material:128>,
  <thaumcraft:plate>,
  <thaumcraft:plate:2>,
  <thaumcraft:plate:3>,
  <immersiveengineering:metal:35>,
] as IItemStack[];

val hammer = <embers:tinker_hammer>;
val engineersHammer = <immersiveengineering:tool>;

for i, ingot in ingots {
  val plate = plates[i];
  recipes.addShapeless('tato6-plate-hammering-' + i, plate, [ingot, ingot, hammer]);
  recipes.addShapeless('tato6-plate-hammering-immersive' + i, plate, [ingot, ingot, engineersHammer]);
}