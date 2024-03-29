import mods.roots.FlowerGrowth;
import mods.roots.Pyre;
import mods.roots.Transmutation;
import mods.roots.predicates.StatePredicate;
import mods.roots.predicates.BlockStateBelow;

// flower groth ritual with fire elemental soil nearby conjures cinder pearls
FlowerGrowth.addRecipeItemOnSoils(
  'tato6-flower-growth-cinderpearl-sand',
  <thaumcraft:cinderpearl>,
  [<minecraft:sand>]
);

// transmutation with a baffle cap on arcane stone nearby transmutes vishroom
Transmutation.addStateToItemRecipe(
  "tato6-vishroom-transmutation", 
  StatePredicate.create(<blockstate:roots:baffle_cap_mushroom>),
  <thaumcraft:vishroom>,
  BlockStateBelow.create(StatePredicate.create(<blockstate:thaumcraft:stone_arcane>))
);

// shimmerleaf crafted with pyre crafting
Pyre.addRecipe(
  'tato6-shimmerleaf-pyre-crafting',
  <thaumcraft:shimmerleaf>,
  [
    <thaumcraft:sapling_silverwood>,
    <thaumcraft:nugget:5>, // quicksilver
    <thaumcraft:salis_mundus>,
    <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "auram"}]}),
    <ore:allFlowers>
  ]
);