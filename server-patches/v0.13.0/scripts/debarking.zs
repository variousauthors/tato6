#loader crafttweaker reloadableevents

import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.item.IItemStack;
import mods.rustichromia.Quern;

val logWood = <ore:logWood>;

// add all the debarkedlogs to logwood
// for some reason ore dict addAll did not work :/
logWood.add(<debark:debarked_log_biomesoplenty_log_0:0>);
logWood.add(<debark:debarked_log_biomesoplenty_log_0:1>);
logWood.add(<debark:debarked_log_biomesoplenty_log_0:2>);
logWood.add(<debark:debarked_log_biomesoplenty_log_0:3>);
logWood.add(<debark:debarked_log_biomesoplenty_log_1:0>);
logWood.add(<debark:debarked_log_biomesoplenty_log_1:1>);
logWood.add(<debark:debarked_log_biomesoplenty_log_1:2>);
logWood.add(<debark:debarked_log_biomesoplenty_log_1:3>);
logWood.add(<debark:debarked_log_biomesoplenty_log_2:0>);
logWood.add(<debark:debarked_log_biomesoplenty_log_2:1>);
logWood.add(<debark:debarked_log_biomesoplenty_log_2:2>);
logWood.add(<debark:debarked_log_biomesoplenty_log_2:3>);
logWood.add(<debark:debarked_log_biomesoplenty_log_3:0>);
logWood.add(<debark:debarked_log_biomesoplenty_log_3:1>);
logWood.add(<debark:debarked_log_biomesoplenty_log_3:2>);
logWood.add(<debark:debarked_log_biomesoplenty_log_3:3>);
logWood.add(<debark:debarked_log_biomesoplenty_log_4:0>);
logWood.add(<debark:debarked_log_biomesoplenty_log_4:1>);
logWood.add(<debark:debarked_log_bewitchment_juniper_wood>);
logWood.add(<debark:debarked_log_bewitchment_elder_wood>);
logWood.add(<debark:debarked_log_bewitchment_cypress_wood>);
logWood.add(<debark:debarked_log_rustic_log>);
logWood.add(<debark:debarked_log_rustic_log:1>);
logWood.add(<debark:debarked_log_mysticalworld_charred_log>);
logWood.add(<debark:debarked_log_roots_wildwood_log>);
logWood.add(<debark:debarked_log_thaumcraft_log_greatwood>);
logWood.add(<debark:debarked_log_thaumcraft_log_silverwood>);

val logs = [
  <minecraft:log:0>,
  <minecraft:log:1>,
  <minecraft:log:2>,
  <minecraft:log:3>,
  <minecraft:log2:0>,
  <minecraft:log2:1>,
  // <roots:wildwood_log>, // have to add this later, if we add a stripped form
] as IItemStack[];

val strippedLogs = [
  <futuremc:stripped_oak_log>,
  <futuremc:stripped_spruce_log>,
  <futuremc:stripped_birch_log>,
  <futuremc:stripped_jungle_log>,
  <futuremc:stripped_acacia_log>,
  <futuremc:stripped_dark_oak_log>,
  // <roots:wildwood_log>, // have to add this later, if we add a stripped form
] as IItemStack[];

val barks = [
  <roots:bark_oak>,
  <roots:bark_spruce>,
  <roots:bark_birch>,
  <roots:bark_jungle>,
  <roots:bark_acacia>,
  <roots:bark_dark_oak>,
  // <roots:bark_wildwood>, // have to add this later, if we add a stripped form
] as IItemStack[];

val axe = 'axe';

// debarking trees with an amethyst axe should yield barks
events.onPlayerInteractBlock(function (event as crafttweaker.event.PlayerInteractBlockEvent) {
  if ((event as IEventCancelable).isCanceled()) {
    return;
  }

  if (event.world.isRemote()) {
    return;
  }

  // click with an empty hand (or an empty off hand)
  if (isNull(event.item)) {
    return;
  }

  for i, log in logs {
    if (log.asBlock() has event.block) {
      val toolStrength = event.item.getStrengthAgainstBlock(event.block.definition.defaultState);
      val toolClasses = event.item.toolClasses;

      // fix this, should be any axe that can strip bark
      if (toolClasses has axe) {
        val strippedLog = strippedLogs[i];
        val bark = barks[i];
        val barkEntity = bark.createEntityItem(event.world, event.position);
        event.world.spawnEntity(barkEntity);
        event.world.setBlockState(strippedLog.asBlock().definition.defaultState, event.position);
      }
    }
  }
});

/** MAKE BARK A USEFUL BIPRODUCT */

val sawdust = <rustichromia:dust_wood>;
val thermalSawdust = <thermalfoundation:material:800>;
val mekanismSawdust = <mekanism:sawdust>;

Quern.add('tato6-bark-to-sawdust', [<ore:rootsBark>], [sawdust * 3], 3, 1000, 300);

// mekanism sawmill is too good at producing sticks, tone it down
mods.mekanism.sawmill.removeRecipe(<ore:plankWood>);
mods.mekanism.sawmill.addRecipe(<ore:plankWood>, <minecraft:stick> * 3);

mods.mekanism.sawmill.removeRecipe(<ore:slabWood>);
mods.mekanism.sawmill.addRecipe(<ore:slabWood>, <minecraft:stick> * 2);

for bark in barks {
  // MACHINES
  mods.thermalexpansion.Pulverizer.addRecipe(thermalSawdust * 2, bark, 250);
  mods.thermalexpansion.Sawmill.addRecipe(thermalSawdust * 2, bark, 250, thermalSawdust, 50);
  mods.mekanism.sawmill.addRecipe(bark, mekanismSawdust * 3);

  // BURN TIME
  furnace.setFuel(bark, 100);
}


