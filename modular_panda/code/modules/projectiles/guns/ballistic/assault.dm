/obj/item/shiptest_gun/ballistic/automatic/assault
	abstract_type = /obj/item/shiptest_gun/ballistic/automatic/assault

	show_magazine_on_sprite = TRUE
	w_class = WEIGHT_CLASS_BULKY

	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_SEMIAUTO

	zoom_amt = RIFLE_ZOOM

	fire_delay = 0.2 SECONDS

	load_sound = 'modular_panda/sound/weapons/gun/rifle/ar_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/rifle/ar_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/rifle/ar_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/rifle/ar_unload.ogg'

	rack_sound = 'modular_panda/sound/weapons/gun/rifle/ar_cock.ogg'

	light_range = 2
	wear_minor_threshold = 200
	wear_major_threshold = 600
	wear_maximum = 1200

/obj/item/shiptest_gun/ballistic/automatic/assault/skm
	name = "\improper SKM-24"
	desc = "An obsolete model of assault rifle once used by various military personnel. Legendary for its durability and low cost, however surplus rifles are hard to find in the Spinward Sector, but the design has been widely copied nonetheless. Chambered in 7.62x40mm."
	icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/onmob.dmi'

	fire_sound = 'modular_panda/sound/weapons/gun/rifle/skm.ogg'

	rack_sound = 'modular_panda/sound/weapons/gun/rifle/skm_cocked.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/rifle/skm_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/rifle/skm_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/rifle/skm_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/rifle/skm_unload.ogg'

	icon_state = "skm"
	inhand_icon_state = "skm"
	show_magazine_on_sprite = TRUE
	unique_mag_sprites_for_variants = TRUE
	weapon_weight = WEAPON_MEDIUM
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/skm_762_40
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/skm_762_40,
	)

	unique_reskin = list(\
		"SKM" = "skm",
		"Polymer" = "skm_polymer",
		"Bright" = "skm_bright",
		)
	unique_reskin_changes_inhand = TRUE

	spread = 1

	fire_delay = 0.2 SECONDS

/obj/item/shiptest_gun/ballistic/automatic/assault/skm/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_FRONTIER)

/obj/item/shiptest_gun/ballistic/automatic/assault/skm/pirate
	name = "\improper Chopper"
	desc = "An SKM-24 in a state of shockingly poor repair: Several parts are missing and the 'grip' is improvised from scrap wood. It's a miracle it still works at all. Chambered in 7.62x40mm."

	icon_state = "skm_pirate"
	inhand_icon_state = "skm_pirate"
	wear_rate = 2

/obj/item/shiptest_gun/ballistic/automatic/assault/skm/pirate/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_PIRATE)

/obj/item/shiptest_gun/ballistic/automatic/assault/hydra
	name = "SMR-80 \"Hydra\""
	desc = "Scarborough Arms' premier modular assault rifle platform. This is the basic configuration, optimized for light weight and handiness. A very well-regarded, if expensive and rare, assault rifle. Chambered in 5.56mm HITP."

	icon = 'modular_panda/icons/obj/guns/manufacturer/scarborough/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/scarborough/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/scarborough/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/scarborough/onmob.dmi'
	icon_state = "hydra"
	inhand_icon_state = "hydra"

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m556_42_hydra
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m556_42_hydra,
	)
	gun_firenames = list(FIREMODE_SEMIAUTO = "single", FIREMODE_BURST = "burst fire", FIREMODE_FULLAUTO = "full auto")
	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_BURST, FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_SEMIAUTO
	show_magazine_on_sprite = FALSE //we do this to avoid making the same  of every sprite, see below

	load_sound = 'modular_panda/sound/weapons/gun/rifle/m16_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/rifle/m16_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/rifle/m16_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/rifle/m16_unload.ogg'

	fire_sound = 'modular_panda/sound/weapons/gun/rifle/hydra.ogg'

	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE

	burst_size = 2
	burst_delay = 0.1 SECONDS
	fire_delay = 0.18 SECONDS
	spread = 1

/obj/item/shiptest_gun/ballistic/automatic/assault/hydra/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/shiptest_gun/ballistic/automatic/assault/hydra/indie
	name = "Hydra-80"
	desc = "A dated variant of Scarborough Arms' premier assault rifle platform. Only accepts small magazines and is locked to semi-auto. Chambered in 5.56mm HITP."

	icon = 'modular_panda/icons/obj/guns/manufacturer/scarborough/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/scarborough/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/scarborough/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/scarborough/onmob.dmi'
	icon_state = "hydra_80"
	inhand_icon_state = "hydra_80"

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m556_42_hydra/small
	blacklisted_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m556_42_hydra/extended,
		/obj/item/shiptest_ammo_box/magazine/m556_42_hydra/casket,
	)

	gun_firemodes = list(FIREMODE_SEMIAUTO)
	gun_firenames = list(FIREMODE_SEMIAUTO)

	spread = 3

//we hard code "hydra", why? because if not, i would need to duplicate the extended/short magazine sprites like 3 fucking times for every variant with a different icon state. this eases the spriting burden
/obj/item/shiptest_gun/ballistic/automatic/assault/hydra/update_overlays()
	. = ..()
	if (magazine)
		. += "hydra_mag_[magazine.base_icon_state]"
		var/capacity_number = 0
		switch(get_ammo() / magazine.max_ammo)
			if(0.2 to 0.39)
				capacity_number = 20
			if(0.4 to 0.59)
				capacity_number = 40
			if(0.6 to 0.79)
				capacity_number = 60
			if(0.8 to 0.99)
				capacity_number = 80
			if(1.0 to 2.0) //to catch the chambered round
				capacity_number = 100
		if (capacity_number)
			. += "hydra_mag_[magazine.base_icon_state]_[capacity_number]"

/obj/item/shiptest_gun/ballistic/automatic/assault/hydra/dmr
	name = "SBR-80 \"Hydra\""
	desc = "Scarborough Arms' premier modular assault rifle platform. This example is configured as a marksman rifle, with an extended barrel and medium-zoom scope. Its lightweight cartridge is compensated for with a 2-round burst action, though it is unable to fit large extended magazines. Chambered in 5.56mm HITP."

	icon_state = "hydra_dmr"
	inhand_icon_state = "hydra_dmr"

	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_BURST)
	default_firemode = FIREMODE_SEMIAUTO

	spread = 0
	zoomable = TRUE
	zoom_amt = 6
	zoom_out_amt = 2
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m556_42_hydra/small
	blacklisted_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m556_42_hydra/extended,
		/obj/item/shiptest_ammo_box/magazine/m556_42_hydra/casket,
	)

/obj/item/shiptest_gun/ballistic/automatic/assault/invictus
	name = "BA Invictus"
	desc = "An unwieldy automatic rifle fielded by the Terran Colonial Defense Militia, commonly sold to police forces and private buyers. This one has a smooth wood finish and is in pristine condition. Chambered in .308."
	icon = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/onmob.dmi'

	icon_state = "invictus"
	inhand_icon_state = "invictus"

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/invictus_308_mag
	allowed_ammo_types = /obj/item/shiptest_ammo_box/magazine/invictus_308_mag

	gun_firemodes = list(FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_FULLAUTO

	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE

	fire_delay = 0.25 SECONDS

	spread = 1
	recoil = 1

	wear_rate = 0.6

	fire_sound = 'modular_panda/sound/weapons/gun/hmg/hmg.ogg'

/obj/item/shiptest_gun/ballistic/automatic/assault/invictus/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_BASTION)

/obj/item/shiptest_gun/ballistic/automatic/assault/invictus/old
	desc = "An unwieldy automatic rifle fielded by the Terran Colonial Defense Militia, commonly sold to police forces and private buyers. Chambered in .308."
	icon_state = "invictus_old"
	inhand_icon_state = "invictus_old"

	wear_rate = 1

/obj/item/shiptest_gun/ballistic/automatic/assault/nt82
	name = "\improper NT-82"
	desc = "Nanotrasen's standard assault rifle, a relatively new service weapon. Accurate, reliable, and easy to use, the NT-82 replaced the NT-24 as Nanotrasen's Security Forces' assault rifle almost overnight, and has proven immensely popular since. Chambered in 5.56mm."
	icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/onmob.dmi'

	fire_sound = 'modular_panda/sound/weapons/gun/rifle/cm82.ogg'
	icon_state = "cm82"
	inhand_icon_state = "cm82"
	show_magazine_on_sprite = TRUE
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE
	bolt_type = BOLT_TYPE_CLIP
	unique_mag_sprites_for_variants = TRUE
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/p16
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/p16,
	)
	spread = 2

	fire_delay = 0.18 SECONDS

	load_sound = 'modular_panda/sound/weapons/gun/rifle/cm82_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/rifle/cm82_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/rifle/cm82_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/rifle/cm82_unload.ogg'

	fire_select_icon_state_prefix = "clip_"
	adjust_fire_select_icon_state_on_safety = TRUE

/obj/item/shiptest_gun/ballistic/automatic/assault/nt82/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)

/obj/item/shiptest_gun/ballistic/automatic/assault/skm/nt24
	name = "\improper NT-24"
	desc = "An obsolete and very rugged assault rifle with a heavy projectile and slow action for its class. Once Nanotrasen's standard assault rifle produced in phenomenal numbers for their Security Forces, it now serves as an acceptable, if rare, battle rifle. Chambered in 7.62x40mm."

	icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/onmob.dmi'

	icon_state = "cm24"
	inhand_icon_state = "cm24"

	fire_select_icon_state_prefix = "clip_"
	adjust_fire_select_icon_state_on_safety = TRUE

/obj/item/shiptest_gun/ballistic/automatic/assault/skm/nt24/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)

/obj/item/shiptest_gun/ballistic/automatic/assault/skm/nt24/Initialize(mapload, spawn_empty)
	. = ..()
