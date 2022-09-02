#loader crafttweaker reloadableevents

import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.item.IItemStack;

val logs = [
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

/** @TODO this should be any roots axe, amethyst or living
 * because if we make it any axe, then people who use stripped
 * wood for construction will end up with an inventory full of
 * roots bark (unless there is some versatile recipe they can use from
 * roots to turn bark into whatever, planks. Then I say open it up to all axes) 
 * bark -> paper 
 * bark -> composter
 * bark -> thread to make rope (some kind of machine involved here)
 * bark -> mortar to make pulp
 */
val axe = <mysticalworld:amethyst_axe>;

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
      // fix this, should be any axe that can strip bark
      if (event.item.definition.makeStack().matches(axe)) {
        val bark = barks[i];
        val barkEntity = bark.createEntityItem(event.world, event.position);
        event.world.spawnEntity(barkEntity);
      }
    }
  }
});