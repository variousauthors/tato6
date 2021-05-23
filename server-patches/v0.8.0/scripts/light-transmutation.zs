import mods.astralsorcery.LightTransmutation;

/* this file is for general balance tweaks to light transmutation */

// sandstone to end stone is OP but white sandstone seems nice
mods.astralsorcery.LightTransmutation.removeTransmutation(<minecraft:end_stone>, false);
mods.astralsorcery.LightTransmutation.addTransmutation(<biomesoplenty:white_sandstone>, <minecraft:end_stone>, 400);