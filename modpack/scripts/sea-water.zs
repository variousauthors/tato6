#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

val seaWater = VanillaFactory.createFluid('sea_water', Color.fromHex("0061ad"));
seaWater.vaporize = true;

seaWater.register();


