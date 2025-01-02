#loader crafttweaker reloadableevents

import mods.dropt.Dropt;
import crafttweaker.event.IEventCancelable;
import crafttweaker.event.BlockHarvestDropsEvent;
import mods.contenttweaker.BlockState;

val listAllFruit = <ore:listAllfruit>;
val listAllBerry = <ore:listAllberry>;
val foodFruit = <ore:foodFruit>;

listAllFruit.addAll(foodFruit);
foodFruit.mirror(listAllFruit);

val juniper = <bewitchment:juniper_berries>;

listAllFruit.add(juniper);
listAllBerry.add(juniper);
foodFruit.add(juniper);

/** apple gall */
// I like the mystical world way of producing apple gall
// so I am thinking to replace the drop with bewitchment gall
// and then the one recipe mystical world has

val appleGall = <bewitchment:oak_apple_gall>;
// <mysticalworld:gall_apple>
/** apple gall */
recipes.removeByRecipeName("mysticalworld:tannins");
recipes.addShapeless("tato6-mysticalworld-tannins", <mysticalworld:tannins> * 3, [appleGall, <minecraft:glass_bottle>, <minecraft:glass_bottle>, <minecraft:glass_bottle>]);

// set things up so the mystic world gall apple crop drops the lovely bewitchment gall apple
events.onBlockHarvestDrops(function (event as crafttweaker.event.BlockHarvestDropsEvent) {
  if (event.world.isRemote()) {
    return;
  }

  if (!event.isPlayer) {
    return;
  }

  if (isNull(event.block) || isNull(event.blockState)) {
    return;
  }

  if (event.block.definition.defaultState in <blockstate:mysticalworld:gall_apple_crop:age=0,facing=north>) {
    val age = event.blockState.getPropertyValue('age');

    if (isNull(age) || age < 3) {
      event.drops = [];
      return;
    }

    event.drops = [(appleGall * 1) % 50, (appleGall * 1) % 50];
    return;
  }
});

// remove the gall apple drop from oak leaves
Dropt.list("list_name")
  .add(Dropt.rule()
      .matchBlocks(["minecraft:leaves", "minecraft:leaves2"])
      .matchDrops([appleGall])
      .replaceStrategy("REPLACE_ITEMS")
      .addDrop(Dropt.drop())
  );

// remove the mystical world gall apple from JEI
mods.jei.JEI.removeAndHide(<mysticalworld:gall_apple>);