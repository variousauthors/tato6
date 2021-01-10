import mods.mekanism.enrichment;
import mods.mekanism.smelter;
import mods.mekanism.purification;
import mods.mekanism.chemical.injection;
import mods.mekanism.chemical.dissolution;

// gravel ores
var goldOre = <gravelores:gold_gravel_ore>;
var silverOre = <gravelores:silver_gravel_ore>;
var tinOre = <gravelores:tin_gravel_ore>;
var aluminumOre = <gravelores:aluminum_gravel_ore>;

mods.mekanism.enrichment.addRecipe(goldOre, <mekanism:dust:0> * 2);
mods.mekanism.enrichment.addRecipe(silverOre, <mekanism:dust:5> * 2);
mods.mekanism.enrichment.addRecipe(tinOre, <mekanism:dust:4> * 2);
mods.mekanism.enrichment.addRecipe(aluminumOre, <thermalfoundation:material:68> * 2);

mods.mekanism.smelter.addRecipe(goldOre, <minecraft:gold_ingot>);
mods.mekanism.smelter.addRecipe(silverOre, <thermalfoundation:material:130>);
mods.mekanism.smelter.addRecipe(tinOre, <thermalfoundation:material:129>);
mods.mekanism.smelter.addRecipe(aluminumOre, <thermalfoundation:material:132>);

mods.mekanism.purification.addRecipe(goldOre, <gas:oxygen>, <mekanism:clump:1> * 3);
mods.mekanism.purification.addRecipe(silverOre, <gas:oxygen>, <mekanism:clump:5> * 3);
mods.mekanism.purification.addRecipe(tinOre, <gas:oxygen>, <mekanism:clump:4> * 3);

mods.mekanism.chemical.injection.addRecipe(goldOre, <gas:hydrogenchloride>, <mekanism:shard:1> * 4);
mods.mekanism.chemical.injection.addRecipe(silverOre, <gas:hydrogenchloride>, <mekanism:shard:4> * 4);
mods.mekanism.chemical.injection.addRecipe(tinOre, <gas:hydrogenchloride>, <mekanism:shard:5> * 4);

mods.mekanism.chemical.dissolution.addRecipe(goldOre, <gas:gold> * 1000);
mods.mekanism.chemical.dissolution.addRecipe(silverOre, <gas:tin> * 1000);
mods.mekanism.chemical.dissolution.addRecipe(tinOre, <gas:silver> * 1000);
