/obj/item/gun/ballistic/modular/automatic/lmg
	abstract_type = /obj/item/gun/ballistic/modular/automatic/lmg
	w_class = WEIGHT_CLASS_HUGE
	slot_flags = null
	actions_types = list()
	weapon_weight = WEAPON_HEAVY
	burst_size = 1
	fire_delay = 0.1 SECONDS
	spread = 4
	recoil = 1

/obj/item/gun/ballistic/modular/automatic/lmg/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.4 SECONDS)

/obj/item/gun/ballistic/modular/automatic/lmg/python
	name = "\improper SAW-90 Python"
	desc = "Scarborough Arms' premier Squad-Automatic Weapon. A unique bullpup LMG with best-in-class weight and capacity. The reloading process has been described with every colorful name in the Uncommon language. Chambered in 5.56x42mm."
	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/back.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_righthand.dmi'
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
	mag_display = TRUE
	mag_display_ammo = TRUE
	tac_reloads = FALSE
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE
	accepted_magazine_type = /obj/item/ammo_box/magazine/python_box
	spread = 8
	recoil = 1.5 //identical to other LMGS

/obj/item/gun/ballistic/modular/automatic/lmg/python/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/gun/ballistic/modular/automatic/lmg/nt40
	name = "\improper NT-40"
	desc = "A light machine gun used by Nanotrasen heavy military units, capable of withering suppressive fire. The weight and recoil make it nearly impossible without the training and strength to handle it. Chambered in 7.62x40mm."
	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/back.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_righthand.dmi'
	icon_state = "nt40"
	inhand_icon_state = "nt40"
	fire_sound = 'modular_panda/sound/weapons/gun/hmg/cm40.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/hmg/cm40_cocked.ogg'
	rack_sound_vary = FALSE
	load_sound_vary = FALSE
	eject_sound_vary = FALSE
	load_sound = 'modular_panda/sound/weapons/gun/hmg/cm40_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/hmg/cm40_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/hmg/cm40_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/hmg/cm40_unload.ogg'
	mag_display = TRUE
	tac_reloads = FALSE
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE
	accepted_magazine_type = /obj/item/ammo_box/magazine/nt40_762_40_box
	spread = 10
	recoil = 2 //identical to other LMGS

/obj/item/gun/ballistic/modular/automatic/lmg/nt40/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.1 SECONDS)

/obj/item/gun/ballistic/modular/automatic/lmg/nt40/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)
