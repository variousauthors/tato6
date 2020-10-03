
// requiring iron for maps is too oldschool
recipes.remove(<minecraft:map>);

val writableBook = <minecraft:writable_book>;
val paper = <minecraft:paper>;

recipes.addShaped("tato6_map", <minecraft:map>,
 [[paper, paper, paper],
 [paper, writableBook, paper],
 [paper, paper, paper]]);