
// removing marketplace because it discourages exploration
mods.jei.JEI.removeAndHide(<harvestcraft:market>);

// this is dumb
mods.jei.JEI.removeAndHide(<harvestcraft:patreonpieitem>);

/** these remotes are easy to craft and require no energy or
 * anything, they are kind of the only thing in SSN that is "better" 
 * than something in AE2 and that's not what SSN is supposed to be about 
 */
mods.jei.JEI.removeAndHide(<storagenetwork:remote>);
mods.jei.JEI.removeAndHide(<storagenetwork:remote:1>);
mods.jei.JEI.removeAndHide(<storagenetwork:remote:2>);
mods.jei.JEI.removeAndHide(<storagenetwork:remote:3>);

// these are not real pages
mods.jei.JEI.removeAndHide(<mystcraft:page>.withTag({symbol: "mystcraft:biome113"}));
mods.jei.JEI.removeAndHide(<mystcraft:page>.withTag({symbol: "mystcraft:pvpoff"}));

// the spindle is useless
mods.jei.JEI.removeAndHide(<mysticalworld:spindle>);

// thermal foundation paper should yield 6 paper
// mekanism paper should yield 2
recipes.removeByRecipeName("mekanism:paper");
recipes.removeByRecipeName("thermalfoundation:paper");

recipes.addShaped("tato6-mekanism-paper", <minecraft:paper> * 2, [[<ore:pulpWood> | <ore:dustWood>, <ore:pulpWood> | <ore:dustWood>, <ore:pulpWood> | <ore:dustWood>]]);
recipes.addShapeless("tato6-thermalfoundation-paper", <minecraft:paper> * 6, [<ore:dustWood>, <ore:dustWood>, <ore:dustWood>, <ore:dustWood>, <minecraft:water_bucket>]);

// add the same to the trasposer
mods.thermalexpansion.Transposer.addFillRecipe(<minecraft:paper> * 6, <rustichromia:dust_wood>, <liquid:water> * 1000, 400);
mods.thermalexpansion.Transposer.addFillRecipe(<minecraft:paper> * 6, <thermalfoundation:material:800>, <liquid:water> * 1000, 400);
mods.thermalexpansion.Transposer.addFillRecipe(<minecraft:paper> * 6, <mekanism:sawdust>, <liquid:water> * 1000, 400);


