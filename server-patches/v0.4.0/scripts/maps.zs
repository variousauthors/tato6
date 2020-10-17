val feather = <ore:feather>;
val dyeBlack = <ore:dyeBlack>;
val phial = <thaumcraft:phial>;
val bottle = <minecraft:glass_bottle>;
val scribingTools = <thaumcraft:scribing_tools>;

recipes.remove(scribingTools);

recipes.addShapeless(scribingTools, [phial, dyeBlack, feather]);
recipes.addShapeless(scribingTools, [bottle, dyeBlack, feather]);

// add another map recipe
val paper = <minecraft:paper>;

recipes.addShaped("tato6_map", <minecraft:map>,
 [[paper, paper, paper],
 [paper, scribingTools, paper],
 [paper, paper, paper]]);