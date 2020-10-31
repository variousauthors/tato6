/** Problem
 * a recipe conflict, both earthworks and mystical world
 * want to make mud from 8 dirt and a bucket
 *
 * solution: mystical makes wet mud, so increase the water to dirt ratio
 */

recipes.removeByRecipeName("mysticalworld:wet_mud_block");

val dirt = <ore:dirt>;
val wetMud = <mysticalworld:wet_mud_block>;
val water = <minecraft:water_bucket>;

recipes.addShaped("tato6_wet_mud_block", wetMud * 6,
 [[dirt, dirt],
  [dirt, water]]);
