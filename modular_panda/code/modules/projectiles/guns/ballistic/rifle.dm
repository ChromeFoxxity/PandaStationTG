//########### RIFLES ###########//

/obj/item/gun/ballistic/automatic/ar/modular
	name = "\improper NT ARG-63"
	desc = "Nanotrasen's prime ballistic option based on the Stoner design, fitted with a light polymer frame and other tactical furniture, and chambered in .223 - nicknamed 'Boarder' by Special Operations teams."
	icon = 'modular_panda/icons/obj/weapons/guns/guns_gubman2.dmi'
	icon_state = "arg"
	inhand_icon_state = "arg"
	can_suppress = FALSE

/obj/item/gun/ballistic/automatic/hydra
	name = "SMR-80 \"Hydra\""
	desc = "Scarborough Arms' premier modular assault rifle platform. This is the basic configuration, optimized for light weight and handiness. A very well-regarded, if expensive and rare, assault rifle. Chambered in 5.56x42mm CLIP."

	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/scarborough_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/scarborough_righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/clothing/back.dmi'
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

	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE

	mag_display = TRUE
	mag_display_ammo = TRUE
	special_mags = TRUE
	burst_fire_selection = TRUE

	can_suppress = FALSE

	burst_size = 2
	burst_delay = 0.1 SECONDS
	fire_delay = 0.18 SECONDS
	spread = 1

/obj/item/gun/ballistic/automatic/hydra/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.3 SECONDS)

/obj/item/gun/ballistic/automatic/hydra/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/gun/ballistic/automatic/hydra/indie
	name = "Hydra-80"
	desc = "A dated variant of Scarborough Arms' premier assault rifle platform. Only accepts small magazines and is locked to semi-auto. Chambered in 5.56x42mm CLIP."

	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/scarborough_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/scarborough_righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/clothing/back.dmi'
	icon_state = "hydra_80"
	inhand_icon_state = "hydra_80"

	accepted_magazine_type = /obj/item/ammo_box/magazine/m556_42_hydra/small

	burst_size = 1
	spread = 3
	fire_delay = 0.2 SECONDS
	burst_fire_selection = FALSE

/obj/item/gun/ballistic/automatic/hydra/indie/Initialize(mapload)
	. = ..()

/obj/item/gun/ballistic/automatic/hydra/dmr
	name = "SBR-80 \"Hydra\""
	desc = "Scarborough Arms' premier modular assault rifle platform. This example is configured as a marksman rifle, with an extended barrel and medium-zoom scope. Its lightweight cartridge is compensated for with a 2-round burst action, though it is unable to fit large extended magazines. Chambered in 5.56x42mm CLIP."

	icon_state = "hydra_dmr"
	inhand_icon_state = "hydra_dmr"

	actions_types = list(/datum/action/item_action/toggle_firemode)

	spread = 0

	accepted_magazine_type = /obj/item/ammo_box/magazine/m556_42_hydra/small

/obj/item/gun/ballistic/automatic/hydra/dmr/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/scope, range_modifier = 2)

/obj/item/gun/ballistic/automatic/python
	name = "\improper SAW-90 Python"
	desc = "Scarborough Arms' premier Squad-Automatic Weapon. A unique bullpup LMG with best-in-class weight and capacity. The reloading process has been described with every colorful name in the Uncommon language. Chambered in 5.56x42mm CLIP."
	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/scarborough_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/scarborough_righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/clothing/back.dmi'

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
	burst_size = 1

	actions_types = list()

	can_suppress = FALSE

	pin = /obj/item/firing_pin

	mag_display = TRUE
	mag_display_ammo = TRUE
	tac_reloads = FALSE

	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE
	accepted_magazine_type = /obj/item/ammo_box/magazine/python_box

	spread = 8
	recoil = 1.5 //identical to other LMGS

/obj/item/gun/ballistic/automatic/python/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.2 SECONDS)

/obj/item/gun/ballistic/automatic/python/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)
