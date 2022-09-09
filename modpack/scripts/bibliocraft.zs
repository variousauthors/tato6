// framing saw, framing boards etc... should accept all wood

val framingSaw = <bibliocraft:framingsaw>;
val framingSheet = <bibliocraft:framingsheet>;
val planks = <ore:plankWood>;
val iron = <minecraft:iron_ingot>;

recipes.remove(framingSaw);
recipes.remove(framingSheet);

recipes.addShaped('tato6-framingSaw', framingSaw, [
  [iron, iron, null],
  [null, iron, planks],
  [null, null, planks]
]);

recipes.addShapeless('tato6-framingSheet', framingSheet, [ framingSaw, planks ]);