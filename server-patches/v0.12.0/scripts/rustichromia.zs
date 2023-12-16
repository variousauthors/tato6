
val gearbox = <mysticalmechanics:gearbox_frame>;
val mergebox = <mysticalmechanics:mergebox_frame>;

// remove the gearbox
recipes.removeShaped(gearbox);
recipes.removeShaped(mergebox);

val iron = <minecraft:iron_ingot>;
val nugget = <minecraft:iron_nugget>;
val gear = <thermalfoundation:material:24>;
val axle = <rustichromia:axle_wood>;
val ironAxle = <mysticalmechanics:axle_iron>;

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
  [ironAxle, goldGear, ironAxle],
  [goldNug, ironAxle, goldNug]
]);

recipes.addShaped('tato6-windup-box', <mystgears:windup_box>, [
  [iron, iron, iron],
  [ironAxle, goldGear, mergebox],
  [iron, iron, iron]
]);