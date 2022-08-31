#loader crafttweaker reloadableevents

import crafttweaker.event.PlayerInteractBlockEvent;
import mods.zenutils.LiquidHandler;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.event.IEventCancelable;
import crafttweaker.event.PlayerFillBucketEvent;
import crafttweaker.liquid.ILiquidDefinition;

/** 
ok so in my final script the plan is 
4 olives make enough olive oil for a bottle of olive oil
which is 1000 mb
so I will stick with the 1000 mb / bottle thing
then my script will handle pulling, but I will leave pushing up to mystcraft
*/

global emptyBottle as IItemStack = <minecraft:glass_bottle>;
global inkBottle as IItemStack = <mystcraft:vial>;
global ink as ILiquidStack = <liquid:myst.ink.black>;
global oneBottle as int = 1000;

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

  val liquidHandler = event.world.getLiquidHandler(event.position);

  if (isNull(liquidHandler)) {
    return;
  }

  if (emptyBottle.matches(event.item)) {
    fillBottle(event.player, event.item, liquidHandler);
  } else if (inkBottle.matches(event.item)) {
    // we don't push ink because mystcraft handles this
    // drainBottle(event.player, event.item, liquidHandler);
  }
});

events.onPlayerFillBucket(function (event as PlayerFillBucketEvent) {
  if ((event as IEventCancelable).isCanceled()) {
    return;
  }

  if (event.world.isRemote()) {
    return;
  }

  if (isNull(event.block) || isNull(event.block.fluid)) {
    return;
  }

  if (ink.matches(toLiquidStack(event.block.fluid))) {
    event.world.setBlockState(<blockstate:minecraft:air>, event.position);
    event.result = <forge:bucketfilled>.withTag({FluidName: "myst.ink.black", Amount: 1000});
  }
});

function toLiquidStack (liquidDefinition as ILiquidDefinition) as ILiquidStack {
  return liquidDefinition * 1000;
}

function fillBottle (player as IPlayer, emptyBottles as IItemStack, liquidHandler as LiquidHandler) as int {
  val contents = liquidHandler.tankProperties[0].contents;
  val amount = isNull(contents) ? 0 : contents.amount;

  if (amount < oneBottle) {
    return 0;
  }

  if (!ink.matches(contents)) {
    return 0;
  }

  liquidHandler.drain(ink * oneBottle, true);

  emptyBottles.mutable().shrink(1);
  player.give(inkBottle);

  return 0;
}

function drainBottle (player as IPlayer, inkBottles as IItemStack, liquidHandler as LiquidHandler) as int {
  val tankProps = liquidHandler.tankProperties[0];
  val contents = tankProps.contents;

  val amount = isNull(contents) ? 0 : contents.amount;

  if (amount > 0 && !ink.matches(contents)) {
    return 0;
  }

  if ((tankProps.capacity - amount) < oneBottle) {
    return 0;
  }

  liquidHandler.fill(ink * oneBottle, true);

  inkBottles.mutable().shrink(1);
  player.give(emptyBottle);

  return 0;
}
