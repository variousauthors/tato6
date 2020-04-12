val tin = <ore:ingotTin>;
val tinPlate = <ore:plateTin>;
val bin = <embers:bin>;

recipes.remove(<embers:bin>);

recipes.addShaped("tato6:tinBin", bin,
 [[tin,null,tin],
  [tin,null,tin],
  [tin,tinPlate,tin]]);
