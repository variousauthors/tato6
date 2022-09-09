
val gearbox = <mysticalmechanics:gearbox_frame>;
val mergebox = <mysticalmechanics:mergebox_frame>;

// remove the gearbox
recipes.removeShaped(gearbox);
recipes.removeShaped(mergebox);

val iron = <minecraft:iron_ingot>;
val nugget = <minecraft:iron_nugget>;
val gear = <thermalfoundation:material:24>;
val axle = <rustichromia:axle_wood>;

recipes.addShaped('tato6-gearbox', gearbox, [
  [nugget, iron, nugget],
  [axle, gear, axle],
  [nugget, axle, nugget]
]);

val gold = <minecraft:gold_ingot>;
val goldNug = <minecraft:gold_nugget>;
val goldGear = <thermalfoundation:material:25>;

recipes.addShaped('tato6-mergebox', mergebox, [
  [goldNug, gold, goldNug],
  [axle, goldGear, axle],
  [goldNug, axle, goldNug]
]);

