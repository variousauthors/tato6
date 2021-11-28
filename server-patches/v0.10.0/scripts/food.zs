// general scrips for food

import mods.jei.JEI;

val hummus = <harvestcraft:hummusitem>;
val cuttingBoard = <harvestcraft:cuttingboarditem>;
val garlic = <ore:cropGarlic>;
val lemon = <ore:cropLemon>;
val oliveOil = <harvestcraft:oliveoilitem>;
val sesameSeeds = <harvestcraft:sesameseedsitem>;
val chickpeas= <harvestcraft:chickpeaitem>;

recipes.remove(hummus);

recipes.addShaped('tato6-hummus', hummus, [
  [cuttingBoard, chickpeas, garlic],
  [lemon, garlic, oliveOil],
  [sesameSeeds, null, null]
]);
