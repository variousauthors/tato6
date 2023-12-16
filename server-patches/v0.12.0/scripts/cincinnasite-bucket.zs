mods.jei.JEI.removeAndHide(<morebuckets:quartz_bucket>);    
mods.jei.JEI.removeAndHide(<morebuckets:obsidian_bucket>); 
mods.jei.JEI.removeAndHide(<morebuckets:golden_bucket>);
mods.jei.JEI.removeAndHide(<morebuckets:emerald_bucket>);
mods.jei.JEI.removeAndHide(<morebuckets:diamond_bucket>);
mods.jei.JEI.removeAndHide(<morebuckets:tin_bucket>);
mods.jei.JEI.removeAndHide(<morebuckets:rubber_bucket>);
mods.jei.JEI.removeAndHide(<morebuckets:silver_bucket>);
mods.jei.JEI.removeAndHide(<morebuckets:bronze_bucket>);
mods.jei.JEI.removeAndHide(<morebuckets:steel_bucket>);
mods.jei.JEI.removeAndHide(<morebuckets:ardite_bucket>);
mods.jei.JEI.removeAndHide(<morebuckets:cobalt_bucket>);
mods.jei.JEI.removeAndHide(<morebuckets:manyullyn_bucket>);

val cincinnasiteBucket = <morebuckets:copper_bucket>;
val cincinnasite = <betternether:cincinnasite_forged>;

recipes.remove(cincinnasiteBucket);

recipes.addShaped("tato6_cincinnasite_bucket", cincinnasiteBucket, [
  [null, null, null], 
  [cincinnasite, null, cincinnasite], 
  [null, cincinnasite, null]
]);

mods.jei.JEI.addItem(cincinnasiteBucket);
