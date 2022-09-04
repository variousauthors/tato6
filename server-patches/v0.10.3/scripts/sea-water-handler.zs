#loader crafttweaker reloadableevents

import crafttweaker.event.PlayerFillBucketEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;

val buckets = [<minecraft:bucket>, <ceramics:clay_bucket>] as IItemStack[];
val water = <fluid:water>;

// debarking trees with an amethyst axe should yield barks
events.onPlayerFillBucket(function (event as crafttweaker.event.PlayerFillBucketEvent) {
  if ((event as IEventCancelable).isCanceled()) {
    return;
  }

  if (event.world.isRemote()) {
    return;
  }

  if (isNull(event.block)) {
    return;
  }

  if (isNull(event.block.fluid)) {
    return;
  }

  if (!water.matches(toLiquidStack(event.block.fluid))) {
    return;
  }

  val types = event.world.getBiome(event.position).types;

  for type in types {
    print(type.name);
    if (type.name == 'OCEAN' || type.name == 'BEACH') {
      event.world.setBlockState(<blockstate:minecraft:air>, event.position);
      event.result = <forge:bucketfilled>.withTag({FluidName: "sea_water", Amount: 1000});
    }
  }
});

function toLiquidStack (liquidDefinition as ILiquidDefinition) as ILiquidStack {
  return liquidDefinition * 1000;
}