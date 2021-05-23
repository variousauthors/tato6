import mods.botania.PureDaisy;
import moretweaker.bewitchment.WitchesOven;

/**

Problems: 
 - Pinch of Salt got unified away
 - salt was never in the dustSalt oreDict

*/

// 1. saltmod:salt_pinch should be the only dustSalt

// remove niter
val dustSalt = <ore:dustSalt>;
dustSalt.remove(<thermalfoundation:material:772>);

// remove mekanism salt
dustSalt.remove(<mekanism:salt>);

// add pinch of salt
dustSalt.add(<saltmod:salt_pinch>);

// 2. saltmod:salt should be the only itemSalt

// remove mekanism salt
val itemSalt = <ore:itemSalt>;
itemSalt.add(<saltmod:salt_pinch>);
itemSalt.remove(<mekanism:salt>);

val foodSalt = <ore:foodSalt>;
foodSalt.remove(<mekanism:salt>);
foodSalt.add(<saltmod:salt_pinch>);

// 3. add the salt = 9 x pinch recipe
recipes.addShapeless("tato6_saltmod_salt_pinch_from_salt", <saltmod:salt_pinch> * 9, [<saltmod:salt>]);

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