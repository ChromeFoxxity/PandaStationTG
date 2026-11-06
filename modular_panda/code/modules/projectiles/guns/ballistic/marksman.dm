/obj/item/shiptest_gun/ballistic/automatic/marksman
	abstract_type = /obj/item/shiptest_gun/ballistic/automatic/marksman
	show_magazine_on_sprite = TRUE
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE

	gun_firemodes = list(FIREMODE_SEMIAUTO)
	default_firemode = FIREMODE_SEMIAUTO

	burst_size = 1
	zoomable = TRUE //this var as true without setting anything else produces a 2x zoom
	zoom_amt = DMR_ZOOM

	fire_delay = 1 SECONDS

	min_recoil = 0.1

	light_range = 2

/obj/item/shiptest_gun/ballistic/automatic/marksman/boomslang
	name = "MSR-90 \"Boomslang\""
	desc = "A bullpup semi-automatic sniper rifle with a high-magnification scope. Compact and capable of rapid follow-up fire without sacrificing power. Used by Syndicate support units and infiltrators. Chambered in 6.5mm."

	icon = 'modular_panda/icons/obj/guns/manufacturer/scarborough/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/scarborough/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/scarborough/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/scarborough/onmob.dmi'

	icon_state = "boomslang"
	inhand_icon_state = "boomslang"

	fire_sound = 'modular_panda/sound/weapons/gun/sniper/cmf90.ogg'

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/boomslang
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/boomslang,
	)
	w_class = WEIGHT_CLASS_BULKY

	show_magazine_on_sprite = TRUE
	unique_mag_sprites_for_variants = TRUE
	show_ammo_capacity_on_magazine_sprite = TRUE
	spread = -5
	recoil = 2

	zoom_amt = 10 //Long range, enough to see in front of you, but no tiles behind you.
	zoom_out_amt = 5

/obj/item/shiptest_gun/ballistic/automatic/marksman/boomslang/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/shiptest_gun/ballistic/automatic/marksman/boomslang/indie
	name = "Boomslang-90"
	desc = "A modern semi-automatic hunting rifle. Its relative portability and fast follow-up potential compared to other weapons in its class have made it very popular with well-to-do hunters and the occasional law enforcement agency or mercenary. Chambered in 6.5mm."

	icon_state = "boomslang90"
	inhand_icon_state = "boomslang90"

	zoom_amt = 6
	zoom_out_amt = 2

/obj/item/shiptest_gun/ballistic/automatic/marksman/taipan
	name = "AMR-83 \"Taipan\""
	desc = "A monstrous semi-automatic anti-materiel rifle, surprisingly short for its class. Designed to destroy mechs, light vehicles, and equipment, but more than capable of obliterating regular personnel. Chambered in .50 BMG."

	icon = 'modular_panda/icons/obj/guns/manufacturer/scarborough/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/scarborough/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/scarborough/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/scarborough/onmob.dmi'

	icon_state = "taipan"
	inhand_icon_state = "taipan"
	fire_sound = 'modular_panda/sound/weapons/gun/sniper/shot.ogg'
	fire_sound_volume = 90
	vary_fire_sound = FALSE
	load_sound = 'modular_panda/sound/weapons/gun/sniper/mag_insert.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/sniper/rack.ogg'
	suppressed_sound = 'modular_panda/sound/weapons/gun/general/heavy_shot_suppressed.ogg'
	weapon_weight = WEAPON_HEAVY
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/sniper_rounds
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/sniper_rounds,
	)
	w_class = WEIGHT_CLASS_BULKY
	zoom_amt = 10 //Long range, enough to see in front of you, but no tiles behind you.
	zoom_out_amt = 5
	actions_types = list()
	show_magazine_on_sprite = TRUE

	show_ammo_capacity_on_magazine_sprite = TRUE

	spread = -5
	recoil = 5

	fire_delay = 3 SECONDS

/obj/item/shiptest_gun/ballistic/automatic/marksman/taipan/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/shiptest_gun/ballistic/automatic/marksman/m23
	name = "Model 23 \"Woodsman\""
	desc = "A large semi-automatic hunting rifle manufactured by Hinterland Sporting Arms. Its powerful cartridge, excellent ergonomics and ease of use make it highly popular for hunting big game Chambered in 8x50mmR."

	icon = 'modular_panda/icons/obj/guns/manufacturer/hinterland_sporting/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/hinterland_sporting/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/hinterland_sporting/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/hinterland_sporting/onmob.dmi'
	icon_state = "woodsman"
	inhand_icon_state = "woodsman"

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m23
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m23,
	)

	unique_mag_sprites_for_variants = TRUE

	fire_sound = 'modular_panda/sound/weapons/gun/rifle/ssg669c.ogg'

	show_magazine_on_sprite = TRUE

	bolt_type = BOLT_TYPE_LOCKING

	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE

	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_MEDIUM

	spread = -4
	recoil = 1.25
	fire_delay = 0.75 SECONDS
	zoom_out_amt = 2

	can_be_sawn_off = FALSE

/obj/item/shiptest_gun/ballistic/automatic/marksman/m23/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_HINTERLAND)

/obj/item/shiptest_gun/ballistic/automatic/marksman/vickland //weapon designed by Apogee-dev
	name = "\improper BA Vickland"
	desc = "The pride of the Terran Colonial Defense Militia, the Vickland is a rare semi-automatic battle rifle produced by Bastion Armaments exclusively for SRM use. It is unusual in its class for its internal rotary magazine, which must be reloaded using stripper clips. Chambered in 8x50mmR."
	icon = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/onmob.dmi'

	fire_sound = 'modular_panda/sound/weapons/gun/rifle/vickland.ogg'
	icon_state = "vickland"
	inhand_icon_state = "vickland"
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_BULKY
	internal_magazine = TRUE
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/vickland
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/vickland,
	)
	fire_sound = 'modular_panda/sound/weapons/gun/rifle/vickland.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/rifle/ar_cock.ogg'

	fire_delay = 0.8 SECONDS

	recoil = 2

	wear_rate = 0.8 //HP weapons are more resistant to wear

/obj/item/shiptest_gun/ballistic/automatic/marksman/vickland/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_BASTION)

/obj/item/shiptest_gun/ballistic/automatic/marksman/f4
	name = "NT-F4"
	desc = "Nanotrasen's marksman rifle, used by Central Command's military units, and rarely for high-budget security officers. Designed not long after the NT-24, the venerable F4 has adapted well to continued upgrades. Chambered in .308."

	icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/onmob.dmi'

	icon_state = "f4"
	inhand_icon_state = "f4"
	show_magazine_on_sprite = TRUE
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_BULKY
	bolt_type = BOLT_TYPE_CLIP
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/f4_308
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/f4_308,
	)
	fire_sound = 'modular_panda/sound/weapons/gun/rifle/f4.ogg'
	burst_size = 0
	actions_types = list()

	zoom_amt = 6
	zoom_out_amt = 2

	spread = -4
	recoil = 2
	fire_delay = 3 SECONDS

	fire_select_icon_state_prefix = "clip_"
	adjust_fire_select_icon_state_on_safety = TRUE

/obj/item/shiptest_gun/ballistic/automatic/marksman/f4/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)

/obj/item/shiptest_gun/ballistic/automatic/marksman/f4/indie
	name = "\improper F3"
	desc = "An old model of Nanotrasen's F4 rifle, designed very early into the history of the League. Most have been sold off as surplus by this point and tend to suffer from internal wear due to their age. Chambered in .308."
	icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/onmob.dmi'

	icon_state = "f4_indie"
	inhand_icon_state = "f4_indie"

	spread = 2
	recoil = 3

	wear_rate = 1.5

/obj/item/shiptest_gun/ballistic/automatic/marksman/f90
	name = "NT-F90"
	desc = "A powerful sniper rifle used by vanishingly rare Central Command response team specialists, capable of impressive range and penetrating power. Chambered in 6.5mm."
	icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/onmob.dmi'

	icon_state = "f90"
	inhand_icon_state = "f90"

	fire_sound = 'modular_panda/sound/weapons/gun/sniper/cmf90.ogg'

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/f90
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/f90,
	)
	bolt_type = BOLT_TYPE_CLIP

	fire_delay = 1 SECONDS

	spread = -5
	recoil = 4

	zoom_amt = 10 //Long range, enough to see in front of you, but no tiles behind you.
	zoom_out_amt = 5

/obj/item/shiptest_gun/ballistic/automatic/marksman/f90/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)
