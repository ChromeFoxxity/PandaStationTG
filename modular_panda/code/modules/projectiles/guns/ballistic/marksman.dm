//########### MARKSMAN ###########//
/obj/item/gun/ballistic/automatic/boomslang
	name = "MSR-90 \"Boomslang\""
	desc = "A bullpup semi-automatic sniper rifle with a high-magnification scope. Compact and capable of rapid follow-up fire without sacrificing power. Used by Syndicate support units and infiltrators. Chambered in 6.5mm."
	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/clothing/back.dmi'
	icon_state = "boomslang"
	inhand_icon_state = "boomslang"
	fire_sound = 'modular_panda/sound/weapons/gun/sniper/cmf90.ogg'
	accepted_magazine_type = /obj/item/ammo_box/magazine/boomslang
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE
	mag_display = TRUE
	mag_display_ammo = TRUE
	special_mags = TRUE
	fire_delay = 1 SECONDS
	burst_size = 1
	min_recoil = 0.1
	spread = 0
	recoil = 2

/obj/item/gun/ballistic/automatic/boomslang/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/scope, range_modifier = 2)

/obj/item/gun/ballistic/automatic/boomslang/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/gun/ballistic/automatic/boomslang/indie
	name = "Boomslang-90"
	desc = "A modern semi-automatic hunting rifle. Its relative portability and fast follow-up potential compared to other weapons in its class have made it very popular with well-to-do hunters and the occasional law enforcement agency or mercenary. Chambered in 6.5mm."
	icon_state = "boomslang90"
	inhand_icon_state = "boomslang90"

/obj/item/gun/ballistic/automatic/taipan
	name = "AMR-83 \"Taipan\""
	desc = "A monstrous semi-automatic anti-materiel rifle, surprisingly short for its class. Designed to destroy mechs, light vehicles, and equipment, but more than capable of obliterating regular personnel. Chambered in .50 BMG."
	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	worn_icon = 'modular_panda/icons/obj/clothing/back.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_righthand.dmi'
	icon_state = "taipan"
	inhand_icon_state = "taipan"
	fire_sound = 'modular_panda/sound/weapons/gun/sniper/shot.ogg'
	fire_sound_volume = 90
	vary_fire_sound = FALSE
	load_sound = 'modular_panda/sound/weapons/gun/sniper/mag_insert.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/sniper/rack.ogg'
	suppressed_sound = 'modular_panda/sound/weapons/gun/general/heavy_shot_suppressed.ogg'
	accepted_magazine_type = /obj/item/ammo_box/magazine/sniper_rounds
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE
	actions_types = list()
	mag_display = TRUE
	mag_display_ammo = TRUE
	special_mags = TRUE
	burst_size = 1
	min_recoil = 0.1
	spread = -5
	recoil = 5
	fire_delay = 6 SECONDS

/obj/item/gun/ballistic/automatic/taipan/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/scope, range_modifier = 2)

/obj/item/gun/ballistic/automatic/taipan/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/gun/ballistic/automatic/f4
	name = "NT-F4"
	desc = "Nanotrasen's marksman rifle, used by both military units and station security. Designed not long after the NT-24, the venerable F4 has adapted well to continued upgrades. Chambered in .308."
	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	worn_icon = 'modular_panda/icons/obj/clothing/back.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_righthand.dmi'
	icon_state = "f4"
	inhand_icon_state = "f4"
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE
	mag_display = TRUE
	accepted_magazine_type = /obj/item/ammo_box/magazine/f4_308
	fire_sound = 'modular_panda/sound/weapons/gun/rifle/f4.ogg'
	actions_types = list()
	min_recoil = 0.1
	spread = 0
	burst_size = 1

/obj/item/gun/ballistic/automatic/f4/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/scope, range_modifier = 2)

/obj/item/gun/ballistic/automatic/f4/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)

/obj/item/gun/ballistic/automatic/f90
	name = "NT-F90"
	desc = "A powerful sniper rifle used rarely by Nanotrasen private security teams, capable of impressive range and penetrating power. Chambered in 6.5mm."
	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	worn_icon = 'modular_panda/icons/obj/clothing/back.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_righthand.dmi'
	icon_state = "f90"
	inhand_icon_state = "f90"
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE
	mag_display = TRUE
	fire_sound = 'sound/weapons/gun/sniper/cmf90.ogg'
	accepted_magazine_type = /obj/item/ammo_box/magazine/f90
	fire_delay = 1 SECONDS
	min_recoil = 0.1
	burst_size = 1
	spread = 0
	recoil = 1

/obj/item/gun/ballistic/automatic/f90/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/scope, range_modifier = 5)

/obj/item/gun/ballistic/automatic/f90/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)
