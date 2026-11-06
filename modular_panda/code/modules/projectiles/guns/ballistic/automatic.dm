
/obj/item/shiptest_gun/ballistic/automatic
	abstract_type = /obj/item/shiptest_gun/ballistic/automatic
	w_class = WEIGHT_CLASS_BULKY

	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_BURST, FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_SEMIAUTO
	semi_auto = TRUE
	fire_sound = 'modular_panda/sound/weapons/gun/smg/shot.ogg'
	fire_sound_volume = 90
	vary_fire_sound = FALSE
	rack_sound = 'modular_panda/sound/weapons/gun/smg/smgrack.ogg'
	suppressed_sound = 'modular_panda/sound/weapons/gun/smg/shot_suppressed.ogg'
	weapon_weight = WEAPON_MEDIUM
	pickup_sound = 'modular_panda/sound/handling/rifle_pickup.ogg'

	fire_delay = 0.4 SECONDS
	spread = 1
	recoil = 0.6

/obj/item/shiptest_gun/ballistic/automatic/zip_pistol
	name = "makeshift pistol"
	desc = "A makeshift open-bolt automatic pistol cobbled together from various scrap bits and stamped steel. the barrel is smoothbore, is lacking a front-sight, and the balancing is uneven, all the best for a pirate."
	icon_state = "brazilpistol"
	inhand_icon_state = "brazilpistol"
	icon = 'modular_panda/icons/obj/guns/manufacturer/hermits/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/hermits/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/hermits/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/hermits/onmob.dmi'
	recoil = 1.2
	spread = 15
	dual_wield_spread = 35
	has_safety = FALSE
	safety = FALSE
	safety_multiplier = 2
	fire_delay = 0.15 SECONDS
	gun_firemodes = list(FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_FULLAUTO
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/zip_ammo_9mm
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/zip_ammo_9mm,
	)
	actions_types = list()
	show_magazine_on_sprite = TRUE
	weapon_weight = WEAPON_LIGHT
	wear_rate = 3 //it's a. piece of shit.
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/shiptest_gun/ballistic/automatic/zip_pistol/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_PIRATE)

/obj/item/shiptest_gun/ballistic/automatic/m12_sporter
	name = "Model 12 \"Sporter\""
	desc = "An extremely popular target shooting rifle produced by Hinterland Sporting Arms. Inexpensive, widely available, and produced in massive numbers, the Sporter is also popular for hunting small game and ground birds. Chambered in .22 LR."

	icon = 'modular_panda/icons/obj/guns/manufacturer/hinterland_sporting/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/hinterland_sporting/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/hinterland_sporting/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/hinterland_sporting/onmob.dmi'
	icon_state = "m12"
	inhand_icon_state = "m12"

	weapon_weight = WEAPON_MEDIUM
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m12_sporter
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m12_sporter,
	)

	fire_delay =  0.4 SECONDS
	burst_size = 1
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE
	show_magazine_on_sprite = TRUE
	bolt_type = BOLT_TYPE_LOCKING

	fire_sound = 'modular_panda/sound/weapons/gun/gauss/claris.ogg'

	spread = 0
	recoil = 0

/obj/item/shiptest_gun/ballistic/automatic/m12_sporter/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_HINTERLAND)

/obj/item/shiptest_gun/ballistic/automatic/m12_sporter/mod
	name = "Model 13 \"Larker\""
	desc = "A common after-market modification of the Model 12 \"Sporter\" rifle, keyed to fire a three round burst."
	burst_size = 3
	burst_delay = 0.6

	icon_state = "larker"
	inhand_icon_state = "larker"

	wear_minor_threshold = 240
	wear_major_threshold = 720
	wear_maximum = 1200
	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_BURST)
	gun_firenames = list(FIREMODE_SEMIAUTO = "single", FIREMODE_BURST = "triptych")
	default_firemode = FIREMODE_BURST

/obj/item/shiptest_gun/ballistic/automatic/m15
	name = "Model 15 \"Super Sporter\""
	desc = "A popular semi-automatic hunting rifle produced by Hinterland Sporting Arms. Solid all-round performance, high accuracy, and ease of access compared to military rifles makes the Super Sporter a popular choice for hunting medium game and occasionally self-defense. Chambered in 7.62x40mm."

	icon = 'modular_panda/icons/obj/guns/manufacturer/hinterland_sporting/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/hinterland_sporting/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/hinterland_sporting/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/hinterland_sporting/onmob.dmi'
	icon_state = "m15"
	inhand_icon_state = "m15"

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m15
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m15,
	)

	fire_sound = 'modular_panda/sound/weapons/gun/rifle/m16.ogg'

	show_magazine_on_sprite = TRUE

	bolt_type = BOLT_TYPE_LOCKING

	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE

	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_MEDIUM

	spread = 0
	recoil = 0.5

	fire_delay = 3

	wear_minor_threshold = 200
	wear_major_threshold = 600
	wear_maximum = 1200

/obj/item/shiptest_gun/ballistic/automatic/m15/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_HINTERLAND)
