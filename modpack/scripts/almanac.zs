
val almanac = <patchouli:guide_book>.withTag({"patchouli:book": "patchouli:almanac"});

recipes.addShaped("tato6_almanac", almanac, [
  [null, <minecraft:dye:4>, null], 
  [<minecraft:wheat>, <minecraft:book>, <minecraft:sapling:*>], 
  [null, <minecraft:piston>, null]
]);