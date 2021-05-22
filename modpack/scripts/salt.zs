
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
recipes.addShapeless(<saltmod:salt_pinch> * 9, [<saltmod:salt>]);

// 4. for some reason the recipe salt_pinch_from_slab gives you 40 pinches!
recipes.removeByRecipeName("saltmod:salt_pinch_from_slab");