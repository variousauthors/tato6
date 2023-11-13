import mods.appliedenergistics2.Grinder;
import mods.enderio.SagMill;
import mods.roots.Mortar;
import mods.nuclearcraft.manufactory;
import mods.thermalexpansion.Pulverizer;
import mods.futuremc.BlastFurnace;
import mods.futuremc.Smoker;
import mods.futuremc.Campfire;
import mods.rustichromia.Quern;

/* one flour to rule them all */
var wheat = <minecraft:wheat>;
var flour = <harvestcraft:flouritem>;

// get rid of flourEqualsWheat that's silly
// remove "wheat" from "flourEqualsWheat"
val flourEqualsWheat = <ore:flourEqualsWheat>;
flourEqualsWheat.remove(wheat);

// val grains = <ore:listAllGrain>;
// this would be ideal, but machine recipes take
// item stacks for some reason rather than oredict
// so we will need to loop over all the listAllGrains

/* unify the flours
 * at the moment we have
 * nuclearcraft flour which can be crafted in grindstone, sag mill, and manufactory
 * and roots flour which can be crafted in a mortar and pestle

 */

// add pam's flour to dustWheat so that it can be used in all flour recipes
val dustWheat = <ore:dustWheat>;
dustWheat.add(flour);

// make all other flour uncraftable
Grinder.removeRecipe(<nuclearcraft:flour>);
Mortar.removeRecipe(<roots:flour>);
SagMill.removeRecipe(<minecraft:wheat>);
manufactory.removeRecipeWithOutput(<nuclearcraft:flour>);

// but you can go ahead and make Pam's flour!
Grinder.addRecipe(flour, wheat, 2, flour);
Mortar.addRecipe('tato6-roots-mortar-flour', flour, [wheat]);
SagMill.addRecipe([flour * 2, <minecraft:wheat_seeds>], [100, 20], wheat);
manufactory.addRecipe(wheat, flour * 2);
Quern.add('tato6-chaff-to-flour', [<rustichromia:wheat_chaff>], [flour], 1, 1000, 300);

// this takes itemstacks not oredict
// mods.thermalexpansion.Pulverizer.addRecipe(flour, grains, 1000);

// finally, bread should be baked in an oven from DOUGH not other things

Smoker.removeRecipe(<rustichromia:dust_flour>);
Smoker.removeRecipe(<appliedenergistics2:material:4>);
Smoker.removeRecipe(<roots:flour>);

BlastFurnace.removeRecipe(<rustichromia:dust_flour>);
BlastFurnace.removeRecipe(<appliedenergistics2:material:4>);
BlastFurnace.removeRecipe(<roots:flour>);

// remove baking of bread in general
furnace.remove(<minecraft:bread>);
// remove plain crafting of bread
recipes.remove(<minecraft:bread>);

// bake bread in an oven, you monster
furnace.addRecipe(<minecraft:bread>, <ore:foodDough>, 0.35);
// and a smoker...
Smoker.addRecipe(<ore:foodDough>, <minecraft:bread>);
// and campfiiiiire bread!
mods.futuremc.Campfire.addRecipe(<ore:foodDough>, <minecraft:bread>, 600);
