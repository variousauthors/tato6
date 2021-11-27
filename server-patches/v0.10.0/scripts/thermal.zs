import mods.thermalexpansion.Factorizer;

// remove charcoal from coal oredict entries
val coalpiece = <ore:coalpiece>;
val gemCoal = <ore:gemCoal>;

coalpiece.remove(<minecraft:coal:1>);
gemCoal.remove(<minecraft:coal:1>);

mods.thermalexpansion.Factorizer.removeRecipeCombine(<minecraft:coal> * 9);
mods.thermalexpansion.Factorizer.removeRecipeCombine(<minecraft:coal:1> * 9);

mods.thermalexpansion.Factorizer.addRecipeCombine(<minecraft:coal:0> * 9, <minecraft:coal_block>);
mods.thermalexpansion.Factorizer.addRecipeCombine(<minecraft:coal:1> * 9, <gardenstuff:stone_block>);