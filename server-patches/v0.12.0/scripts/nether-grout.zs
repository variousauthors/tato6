#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var netherGrout = VanillaFactory.createBlock("nether_grout", <blockmaterial:clay>);
netherGrout.setBlockHardness(5.0);
netherGrout.setBlockResistance(5.0);
netherGrout.setToolClass("shovel");
netherGrout.setToolLevel(0);
netherGrout.register();