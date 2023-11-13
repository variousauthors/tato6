// general scrips for food

import mods.futuremc.Campfire;
import mods.jei.JEI;
import mods.harvestcrafttweaker.HarvestCraftTweaker;

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

// kelp should be edible
val cropSeaweed = <ore:cropSeaweed>;
cropSeaweed.add(<biomesoplenty:seaweed>);

mods.harvestcrafttweaker.HarvestCraftTweaker.removeGrindingByInput(<harvestcraft:seaweeditem>);
mods.harvestcrafttweaker.HarvestCraftTweaker.addGrinding(<harvestcraft:seaweeditem>, <saltmod:salt_pinch>, <harvestcraft:veggiebaititem>);
mods.harvestcrafttweaker.HarvestCraftTweaker.addGrinding(<biomesoplenty:seaweed>, <saltmod:salt_pinch>, <harvestcraft:veggiebaititem>);

// campfire does not tofu
mods.futuremc.Campfire.removeRecipe(<harvestcraft:grubitem>);
mods.futuremc.Campfire.addRecipe(<harvestcraft:grubitem>, <harvestcraft:cookedgrubitem>, 600);

mods.futuremc.Campfire.removeRecipe(<harvestcraft:rawtofeakitem>);
mods.futuremc.Campfire.addRecipe(<harvestcraft:rawtofeakitem>, <harvestcraft:cookedtofeakitem>, 600);

mods.futuremc.Campfire.removeRecipe(<harvestcraft:rawtofaconitem>);
mods.futuremc.Campfire.addRecipe(<harvestcraft:rawtofaconitem>, <harvestcraft:cookedtofaconitem>, 600);

mods.futuremc.Campfire.removeRecipe(<harvestcraft:rawtofuttonitem>);
mods.futuremc.Campfire.addRecipe(<harvestcraft:rawtofuttonitem>, <harvestcraft:cookedtofuttonitem>, 600);

mods.futuremc.Campfire.removeRecipe(<harvestcraft:rawtofickenitem>);
mods.futuremc.Campfire.addRecipe(<harvestcraft:rawtofickenitem>, <harvestcraft:cookedtofickenitem>, 600);

mods.futuremc.Campfire.removeRecipe(<harvestcraft:rawtofabbititem>);
mods.futuremc.Campfire.addRecipe(<harvestcraft:rawtofabbititem>, <harvestcraft:cookedtofabbititem>, 600);

mods.futuremc.Campfire.removeRecipe(<harvestcraft:rawtofurkeyitem>);
mods.futuremc.Campfire.addRecipe(<harvestcraft:rawtofurkeyitem>, <harvestcraft:cookedtofurkeyitem>, 600);

mods.futuremc.Campfire.removeRecipe(<harvestcraft:rawtofenisonitem>);
mods.futuremc.Campfire.addRecipe(<harvestcraft:rawtofenisonitem>, <harvestcraft:cookedtofenisonitem>, 600);

mods.futuremc.Campfire.removeRecipe(<harvestcraft:rawtofuduckitem>);
mods.futuremc.Campfire.addRecipe(<harvestcraft:rawtofuduckitem>, <harvestcraft:cookedtofuduckitem>, 600);

mods.futuremc.Campfire.removeRecipe(<harvestcraft:rawtofishitem>);
mods.futuremc.Campfire.addRecipe(<harvestcraft:rawtofishitem>, <harvestcraft:cookedtofishitem>, 600);

// can't just cook ground meat, gotta make food with it
mods.futuremc.Campfire.removeRecipe(<harvestcraft:groundbeefitem>);
mods.futuremc.Campfire.removeRecipe(<harvestcraft:groundchickenitem>);
mods.futuremc.Campfire.removeRecipe(<harvestcraft:groundduckitem>);
mods.futuremc.Campfire.removeRecipe(<harvestcraft:groundfishitem>);
mods.futuremc.Campfire.removeRecipe(<harvestcraft:groundmuttonitem>);
mods.futuremc.Campfire.removeRecipe(<harvestcraft:groundporkitem>);
mods.futuremc.Campfire.removeRecipe(<harvestcraft:groundrabbititem>);
mods.futuremc.Campfire.removeRecipe(<harvestcraft:groundturkeyitem>);
mods.futuremc.Campfire.removeRecipe(<harvestcraft:groundvenisonitem>);
mods.futuremc.Campfire.removeRecipe(<harvestcraft:groundporkitem>);
mods.futuremc.Campfire.removeRecipe(<harvestcraft:groundfishitem>);

// campfire does not deal well with Pam's meats lol
mods.futuremc.Campfire.removeRecipe(<harvestcraft:turkeyrawitem>);
mods.futuremc.Campfire.addRecipe(<harvestcraft:turkeyrawitem>, <harvestcraft:turkeycookeditem>, 600);

mods.futuremc.Campfire.removeRecipe(<harvestcraft:venisonrawitem>);
mods.futuremc.Campfire.addRecipe(<harvestcraft:venisonrawitem>, <harvestcraft:venisoncookeditem>, 600);

mods.futuremc.Campfire.removeRecipe(<harvestcraft:duckrawitem>);
mods.futuremc.Campfire.addRecipe(<harvestcraft:duckrawitem>, <harvestcraft:duckcookeditem>, 600);

// campfire fishes
mods.futuremc.Campfire.removeRecipe(<minecraft:cod>);
mods.futuremc.Campfire.addRecipe(<minecraft:cod>, <minecraft:cooked_fish:0>, 600);

mods.futuremc.Campfire.removeRecipe(<minecraft:salmon>);
mods.futuremc.Campfire.addRecipe(<minecraft:salmon>, <minecraft:cooked_fish:1>, 600);

mods.futuremc.Campfire.removeRecipe(<minecraft:clownfish>);
mods.futuremc.Campfire.addRecipe(<minecraft:clownfish>, <minecraft:cooked_fish:0>, 600);

mods.futuremc.Campfire.removeRecipe(<minecraft:pufferfish>);
mods.futuremc.Campfire.addRecipe(<minecraft:pufferfish>, <minecraft:cooked_fish:0>, 600);

mods.futuremc.Campfire.removeRecipe(<harvestcraft:calamarirawitem>);
mods.futuremc.Campfire.addRecipe(<harvestcraft:calamarirawitem>, <harvestcraft:calamaricookeditem>, 600);

mods.futuremc.Campfire.removeRecipe(<harvestcraft:anchovyrawitem>);
mods.futuremc.Campfire.addRecipe(<harvestcraft:anchovyrawitem>, <minecraft:cooked_fish>, 600);

mods.futuremc.Campfire.removeRecipe(<harvestcraft:bassrawitem>);
mods.futuremc.Campfire.addRecipe(<harvestcraft:bassrawitem>, <minecraft:cooked_fish>, 600);

mods.futuremc.Campfire.removeRecipe(<harvestcraft:bassrawitem>);
mods.futuremc.Campfire.addRecipe(<harvestcraft:bassrawitem>, <minecraft:cooked_fish>, 600);

mods.futuremc.Campfire.removeRecipe(<harvestcraft:carprawitem>);
mods.futuremc.Campfire.addRecipe(<harvestcraft:carprawitem>, <minecraft:cooked_fish>, 600);

mods.futuremc.Campfire.removeRecipe(<harvestcraft:catfishrawitem>);
mods.futuremc.Campfire.addRecipe(<harvestcraft:catfishrawitem>, <minecraft:cooked_fish>, 600);

mods.futuremc.Campfire.removeRecipe(<harvestcraft:charrrawitem>);
mods.futuremc.Campfire.addRecipe(<harvestcraft:charrrawitem>, <minecraft:cooked_fish>, 600);

mods.futuremc.Campfire.removeRecipe(<harvestcraft:herringrawitem>);
mods.futuremc.Campfire.addRecipe(<harvestcraft:herringrawitem>, <minecraft:cooked_fish>, 600);

mods.futuremc.Campfire.removeRecipe(<harvestcraft:mudfishrawitem>);
mods.futuremc.Campfire.addRecipe(<harvestcraft:mudfishrawitem>, <minecraft:cooked_fish>, 600);

mods.futuremc.Campfire.removeRecipe(<harvestcraft:perchrawitem>);
mods.futuremc.Campfire.addRecipe(<harvestcraft:perchrawitem>, <minecraft:cooked_fish>, 600);

mods.futuremc.Campfire.removeRecipe(<harvestcraft:snapperrawitem>);
mods.futuremc.Campfire.addRecipe(<harvestcraft:snapperrawitem>, <minecraft:cooked_fish>, 600);

mods.futuremc.Campfire.removeRecipe(<harvestcraft:tilapiarawitem>);
mods.futuremc.Campfire.addRecipe(<harvestcraft:tilapiarawitem>, <minecraft:cooked_fish>, 600);

mods.futuremc.Campfire.removeRecipe(<harvestcraft:troutrawitem>);
mods.futuremc.Campfire.addRecipe(<harvestcraft:troutrawitem>, <minecraft:cooked_fish>, 600);

mods.futuremc.Campfire.removeRecipe(<harvestcraft:tunarawitem>);
mods.futuremc.Campfire.addRecipe(<harvestcraft:tunarawitem>, <minecraft:cooked_fish>, 600);

mods.futuremc.Campfire.removeRecipe(<harvestcraft:walleyerawitem>);
mods.futuremc.Campfire.addRecipe(<harvestcraft:walleyerawitem>, <minecraft:cooked_fish>, 600);

mods.futuremc.Campfire.removeRecipe(<harvestcraft:greenheartfishitem>);
mods.futuremc.Campfire.addRecipe(<harvestcraft:greenheartfishitem>, <minecraft:cooked_fish>, 600);

mods.futuremc.Campfire.removeRecipe(<harvestcraft:sardinerawitem>);
mods.futuremc.Campfire.addRecipe(<harvestcraft:sardinerawitem>, <minecraft:cooked_fish>, 600);

mods.futuremc.Campfire.removeRecipe(<harvestcraft:grouperrawitem>);
mods.futuremc.Campfire.addRecipe(<harvestcraft:grouperrawitem>, <minecraft:cooked_fish>, 600);

// bbq jackfruit crafting is not in the game
val skillet = <harvestcraft:skilletitem>;
val bbqsauce = <harvestcraft:bbqsauceitem>;
val jackfruit = <harvestcraft:jackfruititem>;
val bbqjackfruit = <harvestcraft:bbqjackfruititem>;

recipes.addShapeless('tato6-bbqjackfruit', bbqjackfruit, [ skillet, bbqsauce, jackfruit ]);