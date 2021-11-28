
val gearbox = <mysticalmechanics:gearbox_frame>;

// remove the gearbox
recipes.removeShaped(gearbox);

val iron = <minecraft:iron_ingot>;
val gear = <thermalfoundation:material:24>;
val axle = <rustichromia:axle_wood>;

recipes.addShaped('tato6-gearbox', gearbox, [
  [iron, iron, iron],
  [axle, gear, axle],
  [iron, axle, iron]
]);

