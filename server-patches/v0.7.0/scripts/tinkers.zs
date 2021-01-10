import mods.botania.ManaInfusion;
import mods.tconstruct.Fuel;

/* add colored slime variants to the cactus -> slime cycle */
mods.botania.ManaInfusion.removeRecipe(<minecraft:slime_ball>);
mods.botania.ManaInfusion.removeRecipe(<minecraft:cactus>);

var cactus = <minecraft:cactus>;
var slimeGreen = <minecraft:slime_ball>;
var slimeBlue = <tconstruct:edible:1>;
var slimePurple = <tconstruct:edible:2>;
var slimeOrange = <tconstruct:edible:4>;

mods.botania.ManaInfusion.addAlchemy(slimeGreen, cactus, 1200);
mods.botania.ManaInfusion.addAlchemy(slimeBlue, slimeGreen, 1200);
mods.botania.ManaInfusion.addAlchemy(slimePurple, slimeBlue, 1200);
mods.botania.ManaInfusion.addAlchemy(slimeOrange, slimePurple, 1200);
mods.botania.ManaInfusion.addAlchemy(cactus, slimeOrange, 1200);


/* Blazing Pyrotheum is fuel */
mods.tconstruct.Fuel.registerFuel(<liquid:pyrotheum>, 2000);
