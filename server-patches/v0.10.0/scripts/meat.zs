import mods.harvestcrafttweaker.HarvestCraftTweaker;
// @see https://www.curseforge.com/minecraft/mc-mods/harvestcraft-tweaker

// venison
mods.harvestcrafttweaker.HarvestCraftTweaker.addGrinding(<familiarfauna:venison_raw>, <harvestcraft:groundvenisonitem>, <harvestcraft:groundvenisonitem>);
mods.harvestcrafttweaker.HarvestCraftTweaker.addGrinding(<mysticalworld:venison>, <harvestcraft:groundvenisonitem>, <harvestcraft:groundvenisonitem>);

mods.thermalexpansion.Pulverizer.addRecipe(<harvestcraft:groundvenisonitem> * 2, <familiarfauna:venison_raw>, 1000);
mods.thermalexpansion.Pulverizer.addRecipe(<harvestcraft:groundvenisonitem> * 2, <mysticalworld:venison>, 1000);

// turkey
mods.harvestcrafttweaker.HarvestCraftTweaker.addGrinding(<familiarfauna:turkey_leg_raw>, <harvestcraft:groundturkeyitem>, <harvestcraft:groundturkeyitem>);

mods.thermalexpansion.Pulverizer.addRecipe(<harvestcraft:groundturkeyitem> * 2, <familiarfauna:turkey_leg_raw>, 1000);
mods.thermalexpansion.Pulverizer.addRecipe(<harvestcraft:groundturkeyitem> * 2, <harvestcraft:turkeyrawitem>, 1000);

// beef
mods.harvestcrafttweaker.HarvestCraftTweaker.addGrinding(<animania:raw_prime_beef>, <harvestcraft:groundbeefitem>, <harvestcraft:groundbeefitem>);
mods.harvestcrafttweaker.HarvestCraftTweaker.addGrinding(<animania:raw_prime_steak>, <harvestcraft:groundbeefitem>, <harvestcraft:groundbeefitem>);

mods.thermalexpansion.Pulverizer.addRecipe(<harvestcraft:groundbeefitem> * 2, <animania:raw_prime_beef>, 1000);
mods.thermalexpansion.Pulverizer.addRecipe(<harvestcraft:groundbeefitem> * 2, <animania:raw_prime_steak>, 1000);

// pork
mods.harvestcrafttweaker.HarvestCraftTweaker.addGrinding(<animania:raw_prime_pork>, <harvestcraft:groundporkitem>, <harvestcraft:groundporkitem>);
mods.harvestcrafttweaker.HarvestCraftTweaker.addGrinding(<animania:raw_prime_bacon>, <harvestcraft:groundporkitem>, <harvestcraft:groundporkitem>);

mods.thermalexpansion.Pulverizer.addRecipe(<harvestcraft:groundporkitem> * 2, <animania:raw_prime_pork>, 1000);
mods.thermalexpansion.Pulverizer.addRecipe(<harvestcraft:groundporkitem> * 2, <animania:raw_prime_bacon>, 1000);
