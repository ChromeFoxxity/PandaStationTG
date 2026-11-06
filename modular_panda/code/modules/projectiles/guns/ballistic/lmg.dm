//TODO: rename this file to lmg.dm and: /obj/item/shiptest_gun/ballistic/automatic/lmg --> /obj/item/shiptest_gun/ballistic/automatic/lmg

/obj/item/shiptest_gun/ballistic/automatic/lmg
	abstract_type = /obj/item/shiptest_gun/ballistic/automatic/lmg
	w_class = WEIGHT_CLASS_HUGE
	slot_flags = 0
	weapon_weight = WEAPON_HEAVY
	burst_size = 1
	drag_slowdown = 1.5
	fire_delay = 0.2 SECONDS

	gun_firemodes = list(FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_FULLAUTO

	spread = 4
	recoil = 2

	wear_minor_threshold = 300
	wear_major_threshold = 900
	wear_maximum = 1500

/obj/item/shiptest_gun/ballistic/automatic/lmg/python
	name = "\improper SAW-90 Python"
	desc = "Scarborough Arms' premier Squad-Automatic Weapon. A unique bullpup LMG with best-in-class weight and capacity. The reloading process has been described with every colorful name in the Galactic Common language. Chambered in 5.56mm HITP."
	icon = 'modular_panda/icons/obj/guns/manufacturer/scarborough/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/scarborough/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/scarborough/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/scarborough/onmob.dmi'

	icon_state = "python"
	inhand_icon_state = "python"

	fire_sound = 'modular_panda/sound/weapons/gun/rifle/hydra.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/hmg/cm40_cocked.ogg'

	rack_sound_vary = FALSE

	load_sound_vary = FALSE
	eject_sound_vary = FALSE

	load_sound = 'modular_panda/sound/weapons/gun/hmg/cm40_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/hmg/cm40_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/hmg/cm40_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/hmg/cm40_unload.ogg'

	fire_delay = 0.1 SECONDS

	show_magazine_on_sprite = TRUE
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/python_box
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/python_box,
	)

	spread = 8

	recoil = 2 //identical to other LMGS

/obj/item/shiptest_gun/ballistic/automatic/lmg/python/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.1 SECONDS)
	AddElement(/datum/element/update_icon_updates_onmob)

/obj/item/shiptest_gun/ballistic/automatic/lmg/python/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/shiptest_gun/ballistic/automatic/lmg/shredder
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
	recoil = 4.5
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

/obj/item/shiptest_gun/ballistic/automatic/lmg/shredder/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_FRONTIER)

/obj/item/shiptest_gun/ballistic/automatic/lmg/skm_lmg
	name = "\improper SKM-24u"
	desc = "What appears to be a standard SKM-24 at first glance is actually a light machine gun conversion, with an extended, heavy barrel and overhauled internals. Its weight, bulk, and robust fire rate make it difficult to handle. Chambered in 7.62x40mm."

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
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/skm_762_40
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/skm_762_40,
	)

	fire_delay = 0.13 SECONDS

	spread = 7

	recoil = 3 //identical to other LMGS

/obj/item/shiptest_gun/ballistic/automatic/lmg/skm_lmg/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_FRONTIER)

/obj/item/shiptest_gun/ballistic/automatic/lmg/skm_lmg/Initialize()
	. = ..()
	AddElement(/datum/element/update_icon_updates_onmob)

/obj/item/shiptest_gun/ballistic/automatic/lmg/skm_lmg/extended
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/skm_762_40/extended

/obj/item/shiptest_gun/ballistic/automatic/lmg/skm_lmg/drum_mag
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/skm_762_40/drum

/obj/item/shiptest_gun/ballistic/automatic/lmg/mower
	name = "\improper Mower"
	desc = "A hefty and relatively accurate heavy machine gun, it is nearly impossible to handle the recoil alone, the Mower is built for heavy fire support on the move. Chambered in .308."

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
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/mower_lmg_308
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/mower_lmg_308,
	)

	fire_delay = 0.3 SECONDS //quite slow

	spread = 8
	recoil = 4.5

/obj/item/shiptest_gun/ballistic/automatic/lmg/mower/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_FRONTIER)

/obj/item/shiptest_gun/ballistic/automatic/lmg/mower/before_firing(atom/target, mob/user, params)
	. = ..()
	if(chambered.BB)
		chambered.BB.icon_state = "redtrac"
		chambered.BB.light_system = OVERLAY_LIGHT
		chambered.BB.set_light_color(COLOR_SOFT_RED)
		chambered.BB.set_light_range(2)

/obj/item/shiptest_gun/ballistic/automatic/lmg/nt40
	name = "\improper NT-40"
	desc = "A light machine gun used by Central Command heavy response units, capable of withering suppressive fire. The weight and recoil make it extremely difficult to control. Chambered in 7.62x40mm."
	icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/onmob.dmi'

	icon_state = "cm40"
	inhand_icon_state = "cm40"

	fire_sound = 'modular_panda/sound/weapons/gun/hmg/cm40.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/hmg/cm40_cocked.ogg'

	rack_sound_vary = FALSE

	load_sound_vary = FALSE
	eject_sound_vary = FALSE

	load_sound = 'modular_panda/sound/weapons/gun/hmg/cm40_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/hmg/cm40_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/hmg/cm40_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/hmg/cm40_unload.ogg'

	fire_delay = 0.15 SECONDS

	show_magazine_on_sprite = TRUE
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/nt40_762_40_box
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/nt40_762_40_box,
	)

	spread = 10
	recoil = 2.5

	fire_select_icon_state_prefix = "clip_"
	adjust_fire_select_icon_state_on_safety = TRUE

/obj/item/shiptest_gun/ballistic/automatic/lmg/nt40/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)

/obj/item/shiptest_gun/ballistic/automatic/lmg/nt40/Initialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.1 SECONDS)
	AddElement(/datum/element/update_icon_updates_onmob)
