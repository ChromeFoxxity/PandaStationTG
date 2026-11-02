//########### ASSAULT ###########//
/obj/item/gun/ballistic/modular/automatic/assault
	abstract_type = /obj/item/gun/ballistic/modular/automatic/assault
	mag_display = TRUE
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE
	mag_display = TRUE
	burst_size = 1
	actions_types = list(/datum/action/item_action/toggle_firemode)
	load_sound = 'modular_panda/sound/weapons/gun/rifle/ar_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/rifle/ar_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/rifle/ar_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/rifle/ar_unload.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/rifle/ar_cock.ogg'

/obj/item/gun/ballistic/modular/automatic/assault/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.2 SECONDS)

/obj/item/gun/ballistic/modular/automatic/assault/hydra
	name = "SMR-80 \"Hydra\""
	desc = "Scarborough Arms' premier modular assault rifle platform. This is the basic configuration, optimized for light weight and handiness. A very well-regarded, if expensive and rare, assault rifle. Chambered in 5.56x42mm."
	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_righthand.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/back.dmi'
	icon_state = "hydra"
	inhand_icon_state = "hydra"
	accepted_magazine_type = /obj/item/ammo_box/magazine/m556_42_hydra
	actions_types = list(/datum/action/item_action/toggle_firemode)
	load_sound = 'modular_panda/sound/weapons/gun/rifle/m16_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/rifle/m16_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/rifle/m16_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/rifle/m16_unload.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/rifle/ar_cock.ogg'
	fire_sound = 'modular_panda/sound/weapons/gun/rifle/hydra.ogg'
	mag_display_ammo = TRUE
	special_mags = TRUE
	burst_fire_selection = TRUE
	can_suppress = FALSE
	burst_size = 2
	burst_delay = 0.1 SECONDS
	fire_delay = 0.18 SECONDS
	spread = 1

/obj/item/gun/ballistic/modular/automatic/assault/hydra/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/gun/ballistic/modular/automatic/assault/hydra/indie
	name = "Hydra-80"
	desc = "A dated variant of Scarborough Arms' premier assault rifle platform. Only accepts small magazines and is locked to semi-auto. Chambered in 5.56x42mm."
	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_righthand.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/back.dmi'
	icon_state = "hydra_80"
	inhand_icon_state = "hydra_80"
	actions_types = list()
	accepted_magazine_type = /obj/item/ammo_box/magazine/m556_42_hydra/small
	burst_size = 1
	spread = 3
	fire_delay = 0.2 SECONDS
	burst_fire_selection = FALSE

/obj/item/gun/ballistic/modular/automatic/assault/hydra/indie/Initialize(mapload)
	. = ..()

/obj/item/gun/ballistic/modular/automatic/assault/hydra/dmr
	name = "SBR-80 \"Hydra\""
	desc = "Scarborough Arms' premier modular assault rifle platform. This example is configured as a marksman rifle, with an extended barrel and medium-zoom scope. Its lightweight cartridge is compensated for with a 2-round burst action, though it is unable to fit large extended magazines. Chambered in 5.56x42mm."
	icon_state = "hydra_dmr"
	inhand_icon_state = "hydra_dmr"
	actions_types = list(/datum/action/item_action/toggle_firemode)
	burst_size = 2
	spread = 0
	accepted_magazine_type = /obj/item/ammo_box/magazine/m556_42_hydra/small

/obj/item/gun/ballistic/modular/automatic/assault/hydra/dmr/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/scope, range_modifier = 6)

/obj/item/gun/ballistic/modular/automatic/assault/nt24
	name = "\improper NT-24"
	desc = "An obsolete and very rugged assault rifle with a heavy projectile and slow action for its class. Once Nanotrasen's standard assault rifle produced in phenomenal numbers for the safety of stations due to heightened Syndicate activity, it now serves as an acceptable, if rare, battle rifle. Chambered in 7.62mm."
	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/back.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_righthand.dmi'
	icon_state = "nt24"
	inhand_icon_state = "nt24"
	actions_types = list(/datum/action/item_action/toggle_firemode)
	special_mags = TRUE
	weapon_weight = WEAPON_MEDIUM
	burst_fire_selection = TRUE
	accepted_magazine_type = /obj/item/ammo_box/magazine/skm_762_40
	spread = 6

/obj/item/gun/ballistic/modular/automatic/assault/nt24/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)

/obj/item/gun/ballistic/modular/automatic/assault/nt82
	name = "\improper NT-82"
	desc = "Nanotrasen's standard assault rifle, a relatively new service weapon. Accurate, reliable, and easy to use, the NT-82 replaced the NT-24 as Nanotrasen's assault rifle almost overnight, and has proven immensely popular since. Chambered in 5.56mm."
	fire_sound = 'modular_panda/sound/weapons/gun/rifle/cm82.ogg'
	icon_state = "nt82"
	inhand_icon_state = "nt82"
	special_mags = TRUE
	tac_reloads = FALSE
	accepted_magazine_type = /obj/item/ammo_box/magazine/p16
	spread = 2
	load_sound = 'modular_panda/sound/weapons/gun/rifle/cm82_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/rifle/cm82_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/rifle/cm82_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/rifle/cm82_unload.ogg'

/obj/item/gun/ballistic/modular/automatic/assault/nt82/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)
