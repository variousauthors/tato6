import mods.rustichromia.Quern;
import mods.rustichromia.Gin;

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

var ironNative = <thaumcraft:cluster>;
var ironDust = <thermalfoundation:material>;
var goldNative = <thaumcraft:cluster:1>;
var goldDust = <thermalfoundation:material:1>;
var copperNative = <thaumcraft:cluster:2>;
var copperDust = <thermalfoundation:material:64>;
var tinNative = <thaumcraft:cluster:3>;
var tinDust = <thermalfoundation:material:65>;
var silverNative = <thaumcraft:cluster:4>;
var silverDust = <thermalfoundation:material:66>;
var leadNative = <thaumcraft:cluster:5>;
var leadDust = <thermalfoundation:material:67>;
var cinnabarNative = <thaumcraft:cluster:6>;
var quicksilver = <thaumcraft:quicksilver>;

// Quern Additions
// native cluster tripple
Quern.add('tato-6-quern-native-iron', [ironNative], [ironDust * 3], 20, 1000, 1);
Quern.add('tato-6-quern-native-gold', [goldNative], [goldDust * 3], 20, 1000, 1);
Quern.add('tato-6-quern-native-copper', [copperNative], [copperDust * 3], 20, 1000, 1);
Quern.add('tato-6-quern-native-tin', [tinNative], [tinDust * 3], 20, 1000, 1);
Quern.add('tato-6-quern-native-silver', [silverNative], [silverDust * 3], 20, 1000, 1);
Quern.add('tato-6-quern-native-lead', [leadNative], [leadDust * 3], 20, 1000, 1);
Quern.add('tato-6-quern-native-cinnabar', [cinnabarNative], [quicksilver * 3], 20, 1000, 1);

// Gin Additions
// Gin.add(string id, IIngredient[] inputs, result[] internal, result[] external, double minPower, double maxPower, double time);