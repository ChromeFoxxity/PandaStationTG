/obj/item/shiptest_gun/ballistic/automatic/pistol/mauler
	name = "Mauler machine pistol"
	desc = "An automatic machine pistol originating from the Shoal. Impressive volume of fire with high recoil, lackluster armor penetration, and limited magazine size render it difficult to use outside of close quarters. Chambered in 9mm."
	icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/onmob.dmi'
	manufacturer = MANUFACTURER_IMPORT

	icon_state = "mauler_mp"
	inhand_icon_state = "hp_generic"
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m9mm_mauler/extended
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m9mm_mauler,
		/obj/item/shiptest_ammo_box/magazine/m9mm_mauler/extended,
	)
	fire_delay = 0.06 SECONDS

	gun_firemodes = list(FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_FULLAUTO

	show_magazine_on_sprite = FALSE //hard coded

	spread = 15
	recoil = 3
	safety_multiplier = 2 //this means its twice as safe right? //oh, god no.

	fire_sound = 'modular_panda/sound/weapons/gun/pistol/mauler.ogg'

	rack_sound = 'modular_panda/sound/weapons/gun/pistol/candor_cocked.ogg'

	lock_back_sound = 'modular_panda/sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/pistol/candor_cocked.ogg'

	load_sound = 'modular_panda/sound/weapons/gun/pistol/candor_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/pistol/candor_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/pistol/candor_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/pistol/candor_unload.ogg'

	wear_rate = 2
	wear_minor_threshold = 240
	wear_major_threshold = 720
	wear_maximum = 1200



/obj/item/shiptest_gun/ballistic/automatic/pistol/mauler/update_overlays()
	. = ..()
	if (magazine)
		. += "mauler_mag_[magazine.base_icon_state]"

/obj/item/shiptest_gun/ballistic/automatic/pistol/mauler/regular
	name = "Mauler pistol"
	desc = "A toned down semi-auto version of the Mauler. Still fast to fire still with better accuracy than it's auto counterpart, but it's still innaccurate compared to most modern pistols. Chambered in 9mm."

	icon_state = "mauler"

	spread = 15
	recoil = 4
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m9mm_mauler

	fire_delay = 0.12 SECONDS

	gun_firemodes = list(FIREMODE_SEMIAUTO)
	default_firemode = FIREMODE_SEMIAUTO



/obj/item/shiptest_ammo_box/magazine/m9mm_mauler
	name = "mauler pistol magazine (9mm)"
	desc = "A 10-round magazine designed for the Mauler pistol."
	icon_state = "mauler_mag-1"
	base_icon_state = "mauler_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/c9mm
	caliber = "9mm"
	max_ammo = 10

/obj/item/shiptest_ammo_box/magazine/m9mm_mauler/extended
	name = "mauler machine pistol extended magazine (9mm)"
	desc = "A 18-round magazine designed for the Mauler machine pistol."
	icon_state = "mauler_extended_mag-1"
	base_icon_state = "mauler_extended_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/c9mm
	caliber = "9mm"
	max_ammo = 18

/obj/item/shiptest_ammo_box/magazine/m9mm_mauler/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[!!ammo_count()]"

/obj/item/shiptest_gun/ballistic/automatic/pistol/spitter
	name = "\improper Spitter"
	desc = "An open-bolt submachine gun favored by the Frontiersmen. This design's origins are unclear, but its simple, robust design has been widely copied throughout the Frontier, and it is stereotypically used by pirates and various criminal groups that value low price and ease of concealment. Chambered in 9mm."
	icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/onmob.dmi'

	icon_state = "spitter"
	inhand_icon_state = "spitter"
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/spitter_9mm
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/spitter_9mm,
	)
	bolt_type = BOLT_TYPE_OPEN
	weapon_weight = WEAPON_LIGHT
	show_magazine_on_sprite = TRUE
	manufacturer = MANUFACTURER_IMPORT

	spread = 20
	dual_wield_spread = 35
	fire_delay = 0.09 SECONDS
	safety_multiplier = 2

	fire_sound = 'modular_panda/sound/weapons/gun/smg/spitter.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/smg/spitter_cocked.ogg'
	rack_sound_vary = FALSE

	load_sound_vary = FALSE
	eject_sound_vary = FALSE
	load_sound = 'modular_panda/sound/weapons/gun/smg/spitter_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/smg/spitter_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/smg/spitter_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/smg/spitter_unload.ogg'

	wear_rate = 0.8
	wear_minor_threshold = 240
	wear_major_threshold = 720
	wear_maximum = 1200




	gun_firemodes = list(FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_FULLAUTO



/obj/item/shiptest_ammo_box/magazine/spitter_9mm
	name = "spitter pistol magazine (9mm)"
	desc = "A thin 30-round magazine for the Spitter submachine gun."
	icon_state = "spitter_mag-1"
	base_icon_state = "spitter_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/c9mm
	caliber = "9mm"
	max_ammo = 30

/obj/item/shiptest_ammo_box/magazine/spitter_9mm/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[!!ammo_count()]"

/obj/item/shiptest_gun/ballistic/automatic/smg/heater
	name = "\improper Heater"
	desc = "A popular Personal Defense Weapon originating from the Shoal. Essentially a more expensive, compact Spitter with a closed bolt design. It is notably more accurate while suffering from increased recoil due to its lack of stock. "
	icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/onmob.dmi'
	icon_state = "heater"
	inhand_icon_state = "heater"
	w_class = WEIGHT_CLASS_NORMAL
	spread = 4
	fire_delay = 0.12 SECONDS
	recoil = 2.5
	spread = 8
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE | ITEM_SLOT_BELT
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/heater
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/heater,
	)
	wear_rate = 1.25
	fire_sound = 'modular_panda/sound/weapons/gun/rifle/skm_smg.ogg'

	load_sound = 'modular_panda/sound/weapons/gun/smg/cm5_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/smg/cm5_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/smg/cm5_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/smg/cm5_unload.ogg'

	unique_mag_sprites_for_variants = TRUE
	manufacturer = MANUFACTURER_IMPORT

NO_MAG_GUN_HELPER(automatic/smg/heater)

/obj/item/shiptest_gun/ballistic/automatic/smg/heater/scorcher
	name = "\improper Scorcher"
	desc = "A Frontiersmen-modified heater, with a flamethrower and fuel tank bolted onto it. A stock has been fitted on to help control recoil, at the cost of increasing its size."
	icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/onmob.dmi'
	icon_state = "scorcher"
	inhand_icon_state = "scorcher"
	w_class = WEIGHT_CLASS_BULKY
	recoil = 0.1



/obj/item/shiptest_ammo_box/magazine/heater
	name = "Heater magazine (5.7mm)"
	desc = "A 30-round magazine designed for the Heater PDW."
	icon_state = "heater_mag-1"
	base_icon_state = "heater_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/c57x39mm
	caliber = "5.7x39mm"
	max_ammo = 30
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/shiptest_ammo_box/magazine/heater/extended
	name = "Heater casket magazine (5.7mm)"
	desc = "A 50-round casket magazine designed for the Heater PDW."
	icon_state = "heater_extended_mag-1"
	base_icon_state = "heater_extended_mag"
	max_ammo = 50

/obj/item/shiptest_gun/ballistic/automatic/smg/pounder
	name = "Pounder"
	desc = "An unusual submachine gun of Frontiersman make. A miniscule cartridge lacking both stopping power and armor penetration is compensated for with best-in-class ammunition capacity and cycle rate. Chambered in .22 LR."
	icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/onmob.dmi'
	w_class = WEIGHT_CLASS_BULKY //this gun is visually larger, so I believe this is good

	icon_state = "pounder"
	inhand_icon_state = "pounder"
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/c22lr_pounder_pan
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/c22lr_pounder_pan,
	)
	burst_size = 1
	fire_delay = 0.04 SECONDS
	spread = 50

	fire_sound = 'modular_panda/sound/weapons/gun/smg/pounder.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/smg/pounder_cocked.ogg'
	rack_sound_vary = FALSE

	load_sound_vary = FALSE
	eject_sound_vary = FALSE
	load_sound = 'modular_panda/sound/weapons/gun/smg/pounder_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/smg/pounder_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/smg/pounder_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/smg/pounder_unload.ogg'

	wear_rate = 1

	gun_firemodes = list(FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_FULLAUTO

	manufacturer = MANUFACTURER_IMPORT
	safety_multiplier = 2


/obj/item/shiptest_ammo_box/magazine/c22lr_pounder_pan
	name = "pan magazine (.22 LR)"
	desc = "A 50-round pan magazine for the Pounder submachine gun."
	icon_state = "firestorm_pan"
	base_icon_state = "firestorm_pan"
	ammo_type = /obj/item/shiptest_ammo_casing/c22lr
	caliber = "22lr"
	max_ammo = 50
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/shiptest_ammo_box/magazine/c22lr_pounder_pan/update_icon_state()
	. = ..()
	icon_state = "firestorm_pan"

/obj/item/shiptest_gun/ballistic/automatic/hmg/shredder
	name = "\improper Shredder"
	desc = "A vastly atypical heavy machine gun, extensively modified by the Frontiersmen. Additional grips have been added to enable firing from the hip, and it has been modified to fire belts of shotgun shells. Chambered in 12g."
	icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/onmob.dmi'

	icon_state = "shredder"
	inhand_icon_state = "shredder"
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m12_shredder
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m12_shredder,
	)
	spread = 15
	recoil = 7
	fire_delay = 0.16 SECONDS
	mag_display_ammo = TRUE

	bolt_type = BOLT_TYPE_STANDARD
	show_magazine_on_sprite = TRUE
	show_magazine_on_sprite_ammo = TRUE
	tac_reloads = FALSE
	fire_sound = 'modular_panda/sound/weapons/gun/hmg/shredder.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/hmg/shredder_cocked_alt.ogg'

	load_sound_vary = FALSE
	eject_sound_vary = FALSE
	load_sound = 'modular_panda/sound/weapons/gun/hmg/shredder_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/hmg/shredder_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/hmg/shredder_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/hmg/shredder_unload.ogg'

	wear_rate = 3 // 20 to malfunction, 60 to critical

	manufacturer = MANUFACTURER_IMPORT
	has_bipod = FALSE



/obj/item/shiptest_ammo_box/magazine/m12_shredder
	name = "belt box (12g)"
	desc = "A 40-round belt box for the Shredder heavy machine gun."
	icon_state = "shredder_mag-1"
	base_icon_state = "shredder_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/shotgun/buckshot
	caliber = "12ga"
	max_ammo = 40
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/shiptest_ammo_box/magazine/m12_shredder/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[!!ammo_count()]"

/obj/item/shiptest_ammo_box/magazine/m12_shredder/slug
	name = "belt box (12g slug)"
	desc = "A 40-round belt box for the Shredder heavy machine gun."
	icon_state = "shredder_mag_slug-1"
	base_icon_state = "shredder_mag_slug"
	ammo_type = /obj/item/shiptest_ammo_casing/shotgun
	caliber = "12ga"
	max_ammo = 40
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/shiptest_gun/ballistic/automatic/hmg/skm_lmg
	name = "\improper SKM-24u"
	desc = "What appears to be a standard SKM-24 at first glance is actually a light machine gun conversion, with an extended, heavy barrel and overhauled internals. Its weight, bulk, and robust fire rate make it difficult to handle without using the bipod in a prone position or against appropriate cover such as a table. Chambered in 7.62x40mm CLIP."

	icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/onmob.dmi'

	icon_state = "skm_lmg"
	inhand_icon_state = "skm_lmg"

	fire_sound = 'modular_panda/sound/weapons/gun/rifle/skm.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/rifle/skm_cocked.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/rifle/skm_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/rifle/skm_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/rifle/skm_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/rifle/skm_unload.ogg'

	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_SEMIAUTO

	show_magazine_on_sprite = TRUE
	unique_mag_sprites_for_variants = TRUE
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE
	manufacturer = MANUFACTURER_IMPORT
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/skm_762_40
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/skm_762_40,
	)

	fire_delay = 0.13 SECONDS

	spread = 25

	recoil = 4 //same as skm


	has_bipod = TRUE

/obj/item/shiptest_gun/ballistic/automatic/hmg/mower
	name = "\improper Mower"
	desc = "A hefty and relatively accurate HMG, the Mower is built for heavy fire support on the move. Chambered in .308."

	icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/onmob.dmi'

	icon_state = "mower"
	inhand_icon_state = "mower"

	fire_sound = 'modular_panda/sound/weapons/gun/hmg/hmg.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/hmg/cm40_cocked.ogg'

	rack_sound_vary = FALSE

	load_sound_vary = FALSE
	eject_sound_vary = FALSE

	load_sound = 'modular_panda/sound/weapons/gun/hmg/cm40_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/hmg/cm40_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/hmg/cm40_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/hmg/cm40_unload.ogg'

	gun_firemodes = list(FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_FULLAUTO

	show_magazine_on_sprite = TRUE
	weapon_weight = WEAPON_HEAVY
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE
	manufacturer = MANUFACTURER_IMPORT
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/mower_lmg_308
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/mower_lmg_308,
	)

	fire_delay = 0.27 SECONDS //quite slow

	spread = 50

	recoil = 4

	//low deploy bonuses due already being somewhat better than average undeployed
	deploy_spread_bonus = -2
	deploy_recoil_bonus = -0.5

	has_bipod = TRUE

/obj/item/shiptest_ammo_box/magazine/mower_lmg_308
	name = "machine gun drum (.308)"
	desc = "A drum shaped, 50-round magazine for the Mower .308 machine gun. These rounds do good damage with excelent armor penetration."
	icon_state = "firestorm_pan"
	base_icon_state = "firestorm_pan"
	ammo_type = /obj/item/shiptest_ammo_casing/a308
	caliber = ".308"
	max_ammo = 50
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/shiptest_ammo_box/magazine/mower_lmg_308/update_icon_state()
	. = ..()
	icon_state = "firestorm_pan"

/obj/item/shiptest_ammo_box/magazine/mower_lmg_308/empty
	start_empty = TRUE

/obj/item/shiptest_gun/ballistic/automatic/hmg/mower/before_firing(atom/target, mob/user, params)
	. = ..()
	if(chambered.BB)
		chambered.BB.icon_state = "redtrac"
		chambered.BB.light_system = OVERLAY_LIGHT
		chambered.BB.set_light_color(COLOR_SOFT_RED)
		chambered.BB.set_light_range(2)

/obj/item/shiptest_gun/ballistic/automatic/hmg/skm_lmg/Initialize()
	. = ..()
	AddElement(/datum/element/update_icon_updates_onmob)

/obj/item/shiptest_gun/ballistic/automatic/hmg/skm_lmg/extended //spawns with the proper extended magazine, for erts
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/skm_762_40/extended

/obj/item/shiptest_gun/ballistic/automatic/hmg/skm_lmg/drum_mag //spawns with a drum, maybe not for erts but admin enhanced ERTS? when things really go to shit
	autowiki_hidden = TRUE //ERT loadout only, which is an admin-summoned event
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/skm_762_40/drum

/obj/item/shiptest_gun/ballistic/rocketlauncher/oneshot
	name = "\improper Hammer"
	desc = "A disposable rocket-propelled grenade launcher loaded with a standard HE shell."

	icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/onmob.dmi'
	base_icon_state = "rpg"
	icon_state = "rpg"
	inhand_icon_state = "rpg"

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/rocketlauncher/oneshot
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/rocketlauncher/oneshot,
	)
	fire_sound = 'modular_panda/sound/weapons/gun/general/rocket_launch.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/general/rocket_load.ogg'
	weapon_weight = WEAPON_HEAVY
	bolt_type = BOLT_TYPE_NO_BOLT

	cartridge_wording = "rocket"
	empty_indicator = FALSE
	manufacturer = MANUFACTURER_IMPORT
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE
	has_safety = FALSE
	safety = FALSE

	safety_multiplier = 0

/obj/item/shiptest_gun/ballistic/rocketlauncher/oneshot/eject_magazine(mob/user, display_message = TRUE)
	if (!chambered)
		to_chat(user, span_warning("It's spent!"))
	else
		to_chat(user, span_warning("You can't remove the rocket!"))
	return

/obj/item/shiptest_gun/ballistic/rocketlauncher/oneshot/insert_magazine(mob/user, display_message = TRUE)
	if (!chambered)
		to_chat(user, span_warning("It's spent!"))
	else
		to_chat(user, span_warning("You can't load this!"))
	return

/obj/item/shiptest_gun/ballistic/rocketlauncher/oneshot/hedp
	autowiki_hidden = TRUE //ERT loadout only, which is an admin-summoned event
	name = "\improper Hammer-DP"
	desc = "A disposable rocket-propelled grenade launcher loaded with an HEDP shell for Direct Penetration of your target."

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/rocketlauncher/oneshot/hedp
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/rocketlauncher/oneshot/hedp,
	)

/obj/item/shiptest_gun/ballistic/rocketlauncher/oneshot/Initialize()
	. = ..()
	if(prob(1))
		name = "\improper Mallet"

/obj/item/shiptest_gun/ballistic/rocketlauncher/oneshot/examine(mob/user)
	. = ..()
	if(!chambered)
		. += span_warning("It has been spent, and is now useless.")

/obj/item/shiptest_ammo_box/magazine/internal/rocketlauncher/oneshot
	name = "oneshot rocket launcher magazine"
	ammo_type = /obj/item/shiptest_ammo_casing/caseless/rocket
	caliber = "84mm"
	max_ammo = 1

/obj/item/shiptest_ammo_box/magazine/internal/rocketlauncher/oneshot/hedp
	name = "oneshot rocket launcher magazine"
	ammo_type = /obj/item/shiptest_ammo_casing/caseless/rocket/hedp
	caliber = "84mm"
	max_ammo = 1

/obj/item/shiptest_gun/ballistic/shotgun/automatic/slammer
	name = "\improper Slammer"
	desc = "An unusual, dated riot shotgun originating from Lanchester City. Often in the hands of pirates and eccentric indies, this weapon is mag-fed and pump-action."

	icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/onmob.dmi'

	fire_sound = 'modular_panda/sound/weapons/gun/shotgun/brimstone.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/rifle/ar_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/rifle/ar_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/rifle/ar_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/rifle/ar_unload.ogg'

	icon_state = "slammer"
	inhand_icon_state = "slammer"

	manufacturer = MANUFACTURER_IMPORT

	gun_firemodes = list(FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_FULLAUTO

	semi_auto = FALSE
	tac_reloads = TRUE
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_BULKY
	show_magazine_on_sprite = TRUE
	internal_magazine = FALSE
	casing_ejector = TRUE

	fire_delay = 0.1 SECONDS
	rack_delay = 0.1 SECONDS

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m12g_slammer
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m12g_slammer,
	)

	spread = 10

	recoil = 6


/obj/item/shiptest_ammo_box/magazine/m12g_slammer
	name = "slammer box magazine (12g buckshot)"
	desc = "A single-stack, 6-round box magazine for the Slammer shotgun and it's derivatives."
	icon_state = "slammer_mag-1"
	base_icon_state = "slammer_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/shotgun/buckshot
	caliber = "12ga"
	max_ammo = 6
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/shiptest_ammo_box/magazine/m12g_slammer/empty
	start_empty = TRUE
