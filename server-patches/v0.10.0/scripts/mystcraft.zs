import mods.rustic.CrushingTub;
import mods.astralsorcery.Lightwell;
import crafttweaker.event.PlayerInteractBlockEvent;
import mods.thaumcraft.Crucible;

val linkingThroughTheAges = <gbook:guidebook>.withTag({Book: "ltta:xml/ltta.xml"});
val bucketOfInk = <forge:bucketfilled>.withTag({FluidName: "myst.ink.black", Amount: 1000});
val book = <minecraft:book>;
val inkBottle = <mystcraft:vial>;

// lol ink should be black dye
<ore:dyeBlack>.add(inkBottle);

/** craft the guidebook with ink + book */
recipes.remove(linkingThroughTheAges);
recipes.addShapeless('tato6-linking-through-the-ages', linkingThroughTheAges, [book, inkBottle]);

/** mystcraft ink */
recipes.remove(<mystcraft:vial>);
val inkLiquid = <liquid:myst.ink.black>;

// better nether black ink bush seed in a crushing tub
mods.rustic.CrushingTub.addRecipe(inkLiquid * 250, null, <betternether:ink_bush_seed>);

// ender biotite in a lightwell
mods.astralsorcery.Lightwell.addLiquefaction(<quark:biotite>, inkLiquid, 1, 20, 0);

<quark:biotite>.setAspects(<aspect:gelum> * 5, <aspect:alienis> * 10);

// crucible to fill ink bucket
mods.thaumcraft.Crucible.registerRecipe("tato6-crucible-mystcraft-ink", "", bucketOfInk, <minecraft:bucket>, [<aspect:aqua> * 15, <aspect:alienis> * 1]);

/** ALL THOSE WEIRD PAGES I HOPE WE CAN FIX THEIR NAMES LATER */

/** v1.16 of craft tweaker has a "modifyTooltip" method, and 1.12 has a `getTooltip` that
returns a list (it just isn't a @zenmethod). It feeeeeels like it would not be hard to
make that a zenmethod... */

/*
function pageName (name as string) as string {
  return "Page (" + name + " Block)";
}

// growthcraft
<mystcraft:page>.withTag({symbol: "growthcraft_apples:modmat_fluid_applecider_apple_cider_ethereal_0"}).displayName = pageName("Etherial Apple Cider");
<mystcraft:page>.withTag({symbol: "growthcraft_apples:modmat_fluid_applecider_apple_cider_extended_0"}).displayName = pageName("Extended Apple Cider");
<mystcraft:page>.withTag({symbol: "growthcraft_apples:modmat_fluid_applecider_apple_cider_fermented_0"}).displayName = pageName("Fermented Apple Cider");
<mystcraft:page>.withTag({symbol: "growthcraft_apples:modmat_fluid_applecider_apple_cider_intoxicated_0"}).displayName = pageName("Intoxicated Apple Cider");
<mystcraft:page>.withTag({symbol: "growthcraft_apples:modmat_fluid_applecider_apple_cider_poisoned_0"}).displayName = pageName("Poisoneed Apple Cider");
<mystcraft:page>.withTag({symbol: "growthcraft_apples:modmat_fluid_applecider_apple_cider_potent_0"}).displayName = pageName("Potent Apple Cider");
<mystcraft:page>.withTag({symbol: "growthcraft_apples:modmat_fluid_applecider_apple_juice_0"}).displayName = pageName("Apple Juice");
<mystcraft:page>.withTag({symbol: "growthcraft_hops:modmat_fluid_lagerbooze_extended_0"}).displayName = pageName("Extended Lager");
<mystcraft:page>.withTag({symbol: "growthcraft_milk:modmat_fluid_kumisbooze_kumis_potent_hyperextended_0"}).displayName = pageName("Potent Hyper Extended Kumis");
<mystcraft:page>.withTag({symbol: "growthcraft_milk:modmat_fluid_kumisbooze_kumis_potent_extended_0"}).displayName = pageName("Potent Extended Kumis");
<mystcraft:page>.withTag({symbol: "growthcraft_milk:modmat_fluid_kumisbooze_kumis_potent_0"}).displayName = pageName("Potent Kumis");
<mystcraft:page>.withTag({symbol: "growthcraft_milk:modmat_fluid_kumisbooze_kumis_poisoned_0"}).displayName = pageName("Poisoned Kumis");
<mystcraft:page>.withTag({symbol: "growthcraft_milk:modmat_fluid_kumisbooze_kumis_hyperextended_0"}).displayName = pageName("Hyper Extended Kumis");
<mystcraft:page>.withTag({symbol: "growthcraft_milk:modmat_fluid_kumisbooze_kumis_fermented_0"}).displayName = pageName("Fermented Kumis");
<mystcraft:page>.withTag({symbol: "growthcraft_milk:modmat_fluid_kumisbooze_kumis_extended_0"}).displayName = pageName("Extended Kumis");
<mystcraft:page>.withTag({symbol: "growthcraft_hops:modmat_fluid_hopalebooze_young_0"}).displayName = pageName("Young Ale");
<mystcraft:page>.withTag({symbol: "growthcraft_hops:modmat_fluid_hopalebooze_unhopped_0"}).displayName = pageName("Unhopped Ale");
<mystcraft:page>.withTag({symbol: "growthcraft_hops:modmat_fluid_hopalebooze_potent_0"}).displayName = pageName("Potent Ale");
<mystcraft:page>.withTag({symbol: "growthcraft_hops:modmat_fluid_hopalebooze_poisoned_0"}).displayName = pageName("Poisoned Ale");
<mystcraft:page>.withTag({symbol: "growthcraft_hops:modmat_fluid_hopalebooze_normal_0"}).displayName = pageName("Ale");
<mystcraft:page>.withTag({symbol: "growthcraft_hops:modmat_fluid_hopalebooze_lager_0"}).displayName = pageName("Lager Ale");
<mystcraft:page>.withTag({symbol: "growthcraft_hops:modmat_fluid_hopalebooze_intoxicated_0"}).displayName = pageName("Intoxicateed Ale");
<mystcraft:page>.withTag({symbol: "growthcraft_hops:modmat_fluid_hopalebooze_hyperextended_0"}).displayName = pageName("Hyper Extended Ale");
<mystcraft:page>.withTag({symbol: "growthcraft_hops:modmat_fluid_hopalebooze_extended_0"}).displayName = pageName("Extended Ale");
<mystcraft:page>.withTag({symbol: "growthcraft_grapes:modmat_fluid_grapebooze_green_wine_potent_0"}).displayName = pageName("Potent White Wine");
<mystcraft:page>.withTag({symbol: "growthcraft_grapes:modmat_fluid_grapebooze_green_wine_poisoned_0"}).displayName = pageName("Poisoned White Wine");
<mystcraft:page>.withTag({symbol: "growthcraft_grapes:modmat_fluid_grapebooze_green_wine_intoxicated_0"}).displayName = pageName("Intoxicated White Wine");
<mystcraft:page>.withTag({symbol: "growthcraft_grapes:modmat_fluid_grapebooze_green_wine_extended_0"}).displayName = pageName("Extended White Wine");
<mystcraft:page>.withTag({symbol: "growthcraft_grapes:modmat_fluid_grapebooze_green_wine_0"}).displayName = pageName("White Wine");
<mystcraft:page>.withTag({symbol: "growthcraft_grapes:modmat_fluid_grapebooze_green_portwine_0"}).displayName = pageName("White Wine Port");
<mystcraft:page>.withTag({symbol: "growthcraft_grapes:modmat_fluid_grapebooze_green_juice_0"}).displayName = pageName("White Grape Juice");
<mystcraft:page>.withTag({symbol: "growthcraft_grapes:modmat_fluid_grapebooze_green_ambrosia_0"}).displayName = pageName("White Grape Ambrosia");
<mystcraft:page>.withTag({symbol: "growthcraft_grapes:modmat_fluid_grapebooze_purple_wine_extended_0"}).displayName = pageName("Extended Red Wine");
<mystcraft:page>.withTag({symbol: "growthcraft_grapes:modmat_fluid_grapebooze_purple_wine_intoxicated_0"}).displayName = pageName("Intoxicated Red Wine");
<mystcraft:page>.withTag({symbol: "growthcraft_grapes:modmat_fluid_grapebooze_purple_wine_poisoned_0"}).displayName = pageName("Poisoned Red Wine");
<mystcraft:page>.withTag({symbol: "growthcraft_grapes:modmat_fluid_grapebooze_purple_wine_potent_0"}).displayName = pageName("Potent Red Wine");
<mystcraft:page>.withTag({symbol: "growthcraft_grapes:modmat_fluid_grapebooze_red_ambrosia_0"}).displayName = pageName("Ambrosia de Rosé");
<mystcraft:page>.withTag({symbol: "growthcraft_grapes:modmat_fluid_grapebooze_red_juice_0"}).displayName = pageName("Red Grape Juice");
<mystcraft:page>.withTag({symbol: "growthcraft_rice:modmat_fluid_sakebooze_sake_mash_0"}).displayName = pageName("Moromi");
<mystcraft:page>.withTag({symbol: "growthcraft_rice:modmat_fluid_sakebooze_sake_poisoned_0"}).displayName = pageName("Poisoned Sake");
<mystcraft:page>.withTag({symbol: "growthcraft_rice:modmat_fluid_sakebooze_sake_potent_0"}).displayName = pageName("Potent Sake");
<mystcraft:page>.withTag({symbol: "growthcraft_hops:modmat_fluid_lagerbooze_hyperextended_0"}).displayName = pageName("Hyper Extended Lager");
<mystcraft:page>.withTag({symbol: "growthcraft_hops:modmat_fluid_lagerbooze_intoxicated_0"}).displayName = pageName("Intoxicated Lager");
<mystcraft:page>.withTag({symbol: "growthcraft_hops:modmat_fluid_lagerbooze_normal_0"}).displayName = pageName("Lager");
<mystcraft:page>.withTag({symbol: "growthcraft_hops:modmat_fluid_lagerbooze_poisoned_0"}).displayName = pageName("Poisoned Lager");
<mystcraft:page>.withTag({symbol: "growthcraft_hops:modmat_fluid_lagerbooze_potent_0"}).displayName = pageName("Potent Lager");
<mystcraft:page>.withTag({symbol: "growthcraft_hops:modmat_fluid_lagerbooze_young_0"}).displayName = pageName("Young Lager");
<mystcraft:page>.withTag({symbol: "growthcraft_rice:modmat_fluid_sakebooze_sake_extended_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_grapes:modmat_fluid_grapebooze_red_portwine_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_grapes:modmat_fluid_grapebooze_red_wine_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_bees:modmat_fluid_mead_mead_ethereal_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_bees:modmat_fluid_mead_mead_ethereal_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_bees:modmat_fluid_mead_mead_fermented_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_bees:modmat_fluid_mead_mead_hyperextended_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_bees:modmat_fluid_mead_mead_intoxicated_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_bees:modmat_fluid_mead_mead_poisoned_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_rice:modmat_fluid_sakebooze_sake_fermented_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_grapes:modmat_fluid_grapebooze_red_wine_extended_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_grapes:modmat_fluid_grapebooze_red_wine_intoxicated_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_bees:modmat_fluid_mead_mead_potent_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_bees:modmat_fluid_mead_mead_young_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_grapes:modmat_fluid_grapebooze_purple_ambrosia_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_grapes:modmat_fluid_grapebooze_purple_juice_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_grapes:modmat_fluid_grapebooze_purple_portwine_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_grapes:modmat_fluid_grapebooze_purple_wine_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_rice:modmat_fluid_sakebooze_sake_hyperextended_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_grapes:modmat_fluid_grapebooze_red_wine_poisoned_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_grapes:modmat_fluid_grapebooze_red_wine_potent_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_milk:modmat_fluid_whey_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_milk:modmat_fluid_skim_milk_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_milk:modmat_fluid_rennet_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_milk:modmat_fluid_pasteurized_milk_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_milk:modmat_fluid_milk_curds_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_milk:modmat_fluid_cheese_monterey_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_milk:modmat_fluid_cheese_gouda_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_milk:modmat_fluid_cheese_gorgonzola_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_milk:modmat_fluid_cheese_emmentaler_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_milk:modmat_fluid_cheese_cheddar_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_milk:modmat_fluid_cheese_casu_marzu_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_milk:modmat_fluid_cheese_asiago_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_milk:modmat_fluid_cheese_appenzeller_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_milk:modmat_fluid_butter_milk_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_rice:modmat_fluid_sakebooze_sake_water_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_rice:modmat_fluid_sakebooze_sake_potent_hyperextended_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "growthcraft_rice:modmat_fluid_sakebooze_sake_potent_extended_0"}).displayName = pageName("");

// pewter
<mystcraft:page>.withTag({symbol: "pewter:modmat_pewterfluid_0"}).displayName = pageName("");

// tconstruct
<mystcraft:page>.withTag({symbol: "tconstruct:modmat_molten_thorium_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "tconstruct:modmat_molten_uranium_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "tconstruct:modmat_molten_magnesium_0"}).displayName = pageName("");

// pages 
<mystcraft:page>.withTag({symbol: "pages:block_conductive_iron"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_construction_alloy"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_dark_steel"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_crystalline_pink_slime"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_energetic_silver"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_melodic_alloy"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_crystalline_alloy"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_crude_steel"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_vibrant_alloy"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_soularium"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_redstone_alloy"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_pulsating_iron"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_energetic_alloy"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_end_steel"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_electrical_steel"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_petal_purple"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_petal_blue"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_petal_brown"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_petal_green"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_petal_red"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_petal_black"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_stellar_alloy"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_vivid_alloy"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_dry_grass"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_golden_grass"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_vivid_grass"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_scorched_grass"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_infused_grass"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_mutated_grass"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_dreamwood_log"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_dreamwood_planks"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_dreamwood_planks_mossy"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_livingrock"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_livingrock_brick"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_livingrock_mossy"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_livingwood_log"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_livingwood_planks"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_mossy_livingwood_planks"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_petal_white"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_petal_magenta"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_petal_light_blue"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_petal_yellow"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_petal_lime"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_petal_pink"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_petal_gray"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_petal_light_gray"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_petal_cyan"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_manasteel"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_terrasteel"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_elementium"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_mana_diamond"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_dragonstone"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_mud_bricks"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_dried_clay_bricks"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_dried_clay"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_firewood"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_lavawood"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_alubrass"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_slime_blood"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_slime_blue"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_slime_green"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_clear_stained_glass_black"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_clear_stained_glass_blue"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_clear_stained_glass_brown"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_clear_stained_glass_cyan"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_ore_ardite"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_ardite"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_manyullyn"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_clear_stained_glass_gray"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_clear_stained_glass_green"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_clear_stained_glass_light_blue"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_clear_stained_glass_lime"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_clear_stained_glass_magenta"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_clear_stained_glass_orange"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_ore_cobalt"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_cobalt"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_pigiron"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_clear_stained_glass_pink"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_clear_stained_glass_purple"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_clear_stained_glass_red"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_clear_stained_glass_light_gray"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_clear_stained_glass_white"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_clear_stained_glass_yellow"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_seared_brick"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_knightslime"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_silky_jewel"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_slime_magma"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_slime_purple"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_slime_congealed_blood"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_slime_congealed_blue"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_slime_congealed_green"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_slime_congealed_magma"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_slime_congealed_purple"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_slime_dirt_blue"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_slime_dirt_green"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_slime_dirt_magma"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_slime_dirt_purple"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_consecrated"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_graveyard"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_grout"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_slimy_mud_blue"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_slimy_mud_green"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "pages:block_slimy_mud_magma"}).displayName = pageName("");

// embers
<mystcraft:page>.withTag({symbol: "embers:modmat_dawnstone_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "embers:modmat_alchemical_redstone_0"}).displayName = pageName("");

// bop
<mystcraft:page>.withTag({symbol: "biomesoplenty:modmat_sand_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "biomesoplenty:modmat_honey_7"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "biomesoplenty:modmat_blood_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "biomesoplenty:modmat_poison_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "biomesoplenty:modmat_hot_spring_water_0"}).displayName = pageName("");

// animania
<mystcraft:page>.withTag({symbol: "animania:modmat_milk_friesian_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "animania:modmat_milk_goat_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "animania:modmat_milk_holstein_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "animania:modmat_milk_jersey_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "animania:modmat_milk_sheep_0"}).displayName = pageName("");
<mystcraft:page>.withTag({symbol: "animania:modmat_slop_0"}).displayName = pageName("");
*/