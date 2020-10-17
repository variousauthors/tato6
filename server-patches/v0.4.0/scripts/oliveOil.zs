import mods.thermalexpansion.CompressionDynamo;
import mods.thermalexpansion.Transposer;
import mods.enderio.CombustionGen;

val biomass = <thermalfoundation:material:816>;
val richBiomass = <thermalfoundation:material:817>;
val bioblend = <thermalfoundation:material:818>;
val richBioblend = <thermalfoundation:material:819>;
val oliveOil = <liquid:oliveoil>;

mods.thermalexpansion.Transposer.addFillRecipe(richBiomass, biomass, oliveOil * 100, 800);
mods.thermalexpansion.Transposer.addFillRecipe(richBioblend, bioblend, oliveOil * 100, 800);

mods.thermalexpansion.CompressionDynamo.addFuel(oliveOil, 80000);
mods.enderio.CombustionGen.addFuel(oliveOil, 20, 6000);