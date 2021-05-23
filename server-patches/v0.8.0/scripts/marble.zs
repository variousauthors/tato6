import mods.botania.ManaInfusion;
import mods.tconstruct.Fuel;

/* there was not way to generate marble, unlike limestone 
 * this is also a bit of a problem with chalk and the other
 * sedimentary stones */

/* add a sedimentary stone cycle to the mana infusion */

var chalk = <earthworks:block_chalk>;
var limestone = <chisel:limestone2:7>;
var marble = <astralsorcery:blockmarble>;

/* a diluted mana pool has 10000 mana and can do this operation 50 times 
 * just like the igneous rock cycle */
mods.botania.ManaInfusion.addAlchemy(limestone, chalk, 200);
mods.botania.ManaInfusion.addAlchemy(marble, limestone, 200);
mods.botania.ManaInfusion.addAlchemy(chalk, marble, 200);

/* add the ability to transmute limestone to marble in starlight */
mods.astralsorcery.LightTransmutation.addTransmutation(limestone, marble, 1000);