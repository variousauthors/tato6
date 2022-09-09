#loader crafttweaker reloadableevents

import crafttweaker.event.BlockHarvestDropsEvent;
import mods.botania.PureDaisy;
import crafttweaker.event.IEventCancelable;
import moretweaker.bewitchment.WitchesOven;
import mods.harvestcrafttweaker.HarvestCraftTweaker;

/**

Problems: 
 - Pinch of Salt got unified away
 - salt was never in the dustSalt oreDict

*/

// 1. saltmod:salt_pinch should be the only dustSalt
val pinch = <saltmod:salt_pinch>;

// remove niter
val dustSalt = <ore:dustSalt>;
dustSalt.remove(<thermalfoundation:material:772>);

// remove mekanism salt
dustSalt.remove(<mekanism:salt>);

// add pinch of salt
dustSalt.add(pinch);

// 2. saltmod:salt should be the only itemSalt

// remove mekanism salt
val itemSalt = <ore:itemSalt>;
itemSalt.add(pinch);
itemSalt.remove(<mekanism:salt>);

val foodSalt = <ore:foodSalt>;
foodSalt.remove(<mekanism:salt>);
foodSalt.add(pinch);

// 3. add the salt = 9 x pinch recipe
recipes.addShapeless("tato6_saltmod_salt_pinch_from_salt", pinch * 9, [<saltmod:salt>]);

// 4. for some reason the recipe salt_pinch_from_slab gives you 40 pinches!
recipes.removeByRecipeName("saltmod:salt_pinch_from_slab");

// Bewitchment Salt needs to be obtainable but can be separate from kitchen salt

recipes.removeByRecipeName("bewitchment:block_of_salt_to_resource");

// pull it out of all the ore dict entries
for entry in oreDict {
  entry.remove(<bewitchment:salt>);
}

// name it "pure salt"
<bewitchment:salt>.displayName = "Pure Salt";
<bewitchment:block_of_salt>.displayName = "Block of Pure Salt";

// you can of course purify salt with a daisy
mods.botania.PureDaisy.addRecipe(<saltmod:salt_block>, <bewitchment:block_of_salt>);

// and you can make it in a witches oven, with a chance of... spectral dust? Why not!
moretweaker.bewitchment.WitchesOven.addRecipe(<saltmod:salt>, <bewitchment:salt>, <bewitchment:spectral_dust>, 0.2);

val oneDay = 24000; // ticks
// river water, trace amounts... 4 / day
// 1 salt / 5 minutes
// this is good because it is like 5 time less than an evaporator but trivial to automate
mods.rustic.EvaporatingBasin.addRecipe(pinch, <liquid:water> * 500, oneDay / 4);
// sea water, 35 g / liter -> 100 pinches ~> 12 * 9 -> 12 salt
// 9 salt / 5 minutes, faster than the evaporator
mods.rustic.EvaporatingBasin.addRecipe(<saltmod:salt>, <liquid:sea_water> * 500, oneDay / 4);
// 324 pinches so that the chemical oxidizer makes sense
// if you go salt -> bring -> salt you are losing salt in the process
// 27 salt / 5 minutes, best yield
mods.rustic.EvaporatingBasin.addRecipe(<saltmod:salt> * 3, <liquid:brine> * 500, oneDay / 4);

// make nuclearcraft and evaporator agree
mods.nuclearcraft.melter.removeRecipeWithOutput([<liquid:brine> * 15]);
mods.nuclearcraft.melter.addRecipe([pinch, <liquid:brine> * 15]);

mods.mekanism.chemical.oxidizer.removeRecipe(<gas:brine>, itemSalt);
mods.mekanism.chemical.oxidizer.removeRecipe(<gas:brine>, <bewitchment:salt>);
mods.mekanism.chemical.oxidizer.removeRecipe(<gas:brine>, <mekanism:salt>);
mods.mekanism.chemical.oxidizer.addRecipe(pinch, <gas:brine> * 15);

// mekanism chemical oxidizer goes from salt dust to 15 mb
// so evaporation should go from 15 mb to salt dust
// that's 400 salt dust, which is too much

// mekanism chemical oxidizer goes from pinch to 15 mb
// so evaporation should go from 15 mb to pinch
// that's 400 pinches from 6000mb brine
// this should take 3 days

// craft freshwater with a bucket to get water
recipes.addShapeless('tato6-freshwater-to-bucket',<minecraft:water_bucket>,[<harvestcraft:freshwateritem>]);

val saltCrystal = <saltmod:salt_crystal>;

// salt crystal is too weak, the plan is to have it be better than
// evaporating fresh water but worse than the evaporator
// hmm... maybe it should be straight up better than the evaporator
// since it is not automatable... yes
events.onBlockHarvestDrops(function (event as crafttweaker.event.BlockHarvestDropsEvent) {
  if (event.world.isRemote()) {
    return;
  }

  if (isNull(event.block)) {
    return;
  }

  if (saltCrystal.asBlock() has event.block) {
    event.drops += (pinch * 8) % 100;
  }
});
