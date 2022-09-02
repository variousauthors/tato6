// general scrips for food

import mods.jei.JEI;

// humus made from chickpeas!

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

// adding some stuff to relevant ore dicts

val tomatoSeeds = <rustic:tomato_seeds>;
val rice = <growthcraft_rice:rice>;
val bopPlant1 = <biomesoplenty:plant_1:3>;
val riceSeeds = <teastory:xian_rice_seeds>;
val honeyComb = <harvestcraft:honeycombitem>;
val silkwormEgg = <mysticalworld:silkworm_egg>;
val chamomile = <rustic:chamomile>;

val listAllseed = <ore:listAllseed>;
val materialHoneycomb = <ore:materialHoneycomb>;
val listAllegg = <ore:listAllegg>;
val cropTea = <ore:cropTea>;

listAllseed.add(tomatoSeeds);
listAllseed.add(rice);
listAllseed.add(bopPlant1);
listAllseed.add(riceSeeds);
materialHoneycomb.add(honeyComb);
listAllegg.add(silkwormEgg);

cropTea.add(chamomile);