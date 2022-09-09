import moretweaker.bewitchment.WitchesOven;
import mods.enderio.AlloySmelter;
import mods.thermalexpansion.RedstoneFurnace;

val woodAsh = <bewitchment:wood_ash>;

// allow any sapling to be converted to wood ash
moretweaker.bewitchment.WitchesOven.addRecipe(<rustic:sapling>, woodAsh, null);
moretweaker.bewitchment.WitchesOven.addRecipe(<rustic:sapling:1>, woodAsh, null);

// add furnace recipes
furnace.addRecipe(woodAsh, <ore:treeSapling>, 0.15);

// add redstone furnace recipes
// unfortunately ModTweaker's thermal integration only accepts itemstacks not oreDict entries so screw it
mods.thermalexpansion.RedstoneFurnace.addRecipe(woodAsh, <rustic:sapling>, 2000);
mods.thermalexpansion.RedstoneFurnace.addRecipe(woodAsh, <rustic:sapling:1>, 2000);

// add enderio alloy smelter recipes
mods.enderio.AlloySmelter.addRecipe(woodAsh, [<ore:treeSapling>], 2000);
