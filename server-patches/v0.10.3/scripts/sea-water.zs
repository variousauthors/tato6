#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

val seaWater = VanillaFactory.createFluid('sea_water', Color.fromHex("1DA2D8"));
seaWater.vaporize = true;

seaWater.register();


