/* Micro Target */

/obj/item/shiptest_gun/ballistic/automatic/pistol/m17
	name = "Model 17 \"Micro Target\""
	desc = "A lightweight and very accurate target pistol produced by Serene Outdoors. The barrel can be unscrewed for storage. Chambered in .22 LR."

	icon = 'modular_panda/icons/obj/guns/manufacturer/serene_outdoors/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/serene_outdoors/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/serene_outdoors/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/serene_outdoors/onmob.dmi'
	icon_state = "m17"
	inhand_icon_state = "so_generic"

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m17
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m17,
	)

	fire_sound = 'modular_panda/sound/weapons/gun/pistol/himehabu.ogg'

	manufacturer = MANUFACTURER_SERENE
	show_magazine_on_sprite = TRUE
	bolt_type = BOLT_TYPE_LOCKING

	w_class = WEIGHT_CLASS_SMALL

	spread = 15
	recoil = -2


/obj/item/shiptest_ammo_box/magazine/m17
	name = "Model 17 magazine (.22lr)"
	desc = "A 10-round magazine for the Model 17 \"Micro Target\". These rounds do okay damage with awful performance against armor."
	icon_state = "m17_mag-1"
	base_icon_state = "m17_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/c22lr
	caliber = "22lr"
	max_ammo = 10
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/shiptest_ammo_box/magazine/m17/empty
	start_empty = TRUE

/* Auto Elite */

/obj/item/shiptest_gun/ballistic/automatic/pistol/m20_auto_elite
	name = "Model 20 \"Auto Elite\""
	desc = "A large handgun chambered .44 Roumain. Originally developed by Serene Outdoors for the Star City Police Department when their older handguns proved underpowered, the Auto Elite proved heavy and unwieldy in practice. It has nevertheless seen modest success as a sidearm for big game hunters and among customers looking to make an impression."

	icon = 'modular_panda/icons/obj/guns/manufacturer/serene_outdoors/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/serene_outdoors/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/serene_outdoors/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/serene_outdoors/onmob.dmi'
	icon_state = "m20"
	inhand_icon_state = "so_generic"

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m20_auto_elite
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m20_auto_elite,
	)

	fire_sound = 'modular_panda/sound/weapons/gun/pistol/cm23.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/pistol/candor_cocked.ogg'
	lock_back_sound = 'modular_panda/sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/pistol/slide_drop.ogg'
	manufacturer = MANUFACTURER_SERENE
	load_sound = 'modular_panda/sound/weapons/gun/pistol/deagle_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/pistol/deagle_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/pistol/deagle_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/pistol/deagle_unload.ogg'

	recoil = 0.5

/obj/item/shiptest_ammo_box/magazine/m20_auto_elite
	name = "Model 20 magazine (.44 Roumain)"
	desc = "A nine-round magazine designed for the Model 20 pistol. These rounds do good damage, and fare better against armor."
	icon_state = "cm23_mag-1"
	base_icon_state = "cm23_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/a44roum
	caliber = ".44 Roumain"
	max_ammo = 9
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/shiptest_ammo_box/magazine/m20_auto_elite/empty
	start_empty = TRUE

/obj/item/shiptest_gun/ballistic/automatic/pistol/m20_auto_elite/inteq
	name = "PO-20 Pinscher"
	desc = "A large handgun chambered .44 Roumain and manufactured by Serene Outdoors. Modified to Inteq Risk Management Group's standards and issued as a heavy sidearm for officers."

	icon = 'modular_panda/icons/obj/guns/manufacturer/inteq/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/inteq/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/inteq/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/inteq/onmob.dmi'
	icon_state = "m20_inteq"
	inhand_icon_state = "m20_inteq"
	manufacturer = MANUFACTURER_INTEQ

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m20_auto_elite
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m20_auto_elite,
	)

/obj/item/shiptest_ammo_box/magazine/m20_auto_elite/inteq/empty
	start_empty = TRUE

/* Sporter */

/obj/item/shiptest_gun/ballistic/automatic/m12_sporter
	name = "Model 12 \"Sporter\""
	desc = "An extremely popular target shooting rifle produced by Serene Outdoors. Inexpensive, widely available, and produced in massive numbers, the Sporter is also popular for hunting small game and ground birds. Chambered in .22 LR."

	icon = 'modular_panda/icons/obj/guns/manufacturer/serene_outdoors/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/serene_outdoors/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/serene_outdoors/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/serene_outdoors/onmob.dmi'
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

	spread = 15
	recoil = 2

	manufacturer = MANUFACTURER_SERENE

/obj/item/shiptest_ammo_box/magazine/m12_sporter
	name = "Model 12 magazine (.22lr)"
	desc = "A 25-round magazine for the Model 12 \"Sporter\". These rounds do okay damage with awful performance against armor."
	icon_state = "m12_mag-1"
	base_icon_state = "m12_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/c22lr
	caliber = "22lr"
	max_ammo = 25
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/shiptest_ammo_box/magazine/m12_sporter/empty
	start_empty = TRUE

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

/* woodsman */

/obj/item/shiptest_gun/ballistic/automatic/marksman/woodsman
	name = "Model 23 Woodsman"
	desc = "A large semi-automatic hunting rifle manufactured by Serene Outdoors. Its powerful cartridge, excellent ergonomics and ease of use make it highly popular for hunting big game Chambered in 8x50mmR."

	icon = 'modular_panda/icons/obj/guns/manufacturer/serene_outdoors/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/serene_outdoors/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/serene_outdoors/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/serene_outdoors/onmob.dmi'
	icon_state = "woodsman"
	inhand_icon_state = "woodsman"

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m23
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m23,
	)

	unique_mag_sprites_for_variants = TRUE

	fire_sound = 'modular_panda/sound/weapons/gun/rifle/ssg669c.ogg'

	manufacturer = MANUFACTURER_SERENE
	show_magazine_on_sprite = TRUE

	bolt_type = BOLT_TYPE_LOCKING

	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE

	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_MEDIUM

	spread = 20
	recoil = 6
	fire_delay = 0.75 SECONDS
	zoom_out_amt = 2

	can_be_sawn_off = FALSE

/obj/item/shiptest_ammo_box/magazine/m23
	name = "Model 23 magazine (8x50mmR)"
	desc = "A 5-round magazine for the Model 23 \"Woodsman\". These rounds do high damage, with excellent armor penetration."
	icon_state = "woodsman_mag-1"
	base_icon_state = "woodsman_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/a8_50r
	caliber = "8x50mmR"
	max_ammo = 5
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/shiptest_ammo_box/magazine/m23/empty
	start_empty = TRUE

/* super soaker */

/obj/item/shiptest_gun/ballistic/automatic/m15
	name = "Model 15 Super Sporter"
	desc = "A popular semi-automatic hunting rifle produced by Serene Outdoors. Solid all-round performance, high accuracy, and ease of access compared to military rifles makes the Super Sporter a popular choice for hunting medium game and occasionally self-defense. Chambered in 7.62x40mm CLIP."

	icon = 'modular_panda/icons/obj/guns/manufacturer/serene_outdoors/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/serene_outdoors/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/serene_outdoors/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/serene_outdoors/onmob.dmi'
	icon_state = "m15"
	inhand_icon_state = "m15"

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m15
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m15,
	)

	fire_sound = 'modular_panda/sound/weapons/gun/rifle/m16.ogg'

	manufacturer = MANUFACTURER_SERENE
	show_magazine_on_sprite = TRUE

	bolt_type = BOLT_TYPE_LOCKING

	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE

	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_MEDIUM

	spread = 20
	recoil = 3

	fire_delay = 3

	wear_minor_threshold = 200
	wear_major_threshold = 600
	wear_maximum = 1200

/obj/item/shiptest_ammo_box/magazine/m15
	name = "Model 15 magazine (7.62x40mm CLIP)"
	desc = "A 20-round magazine for the Model 15 \"Super Sporter\". These rounds do good damage with good armor penetration."
	icon_state = "p16_mag-1"
	base_icon_state = "p16_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/a762_40
	caliber = "7.62x40mm"
	max_ammo = 20
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/shiptest_ammo_box/magazine/m15/empty
	start_empty = TRUE

/* cuckmaster */

/obj/item/shiptest_gun/ballistic/shotgun/automatic/m11
	name = "Model 11 \"Buckmaster\""
	desc = "A semi-automatic hunting shotgun produced by Serene Outdoors. Much lighter and handier than military combat shotguns, it offers the same fire rate and magazine capacity, making it an excellent choice for hunting birds and large game or for security forces looking to upgrade from pump action guns. Chambered in 12g."

	icon = 'modular_panda/icons/obj/guns/manufacturer/serene_outdoors/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/serene_outdoors/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/serene_outdoors/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/serene_outdoors/onmob.dmi'
	icon_state = "buckmaster"
	inhand_icon_state = "buckmaster"

	fire_delay = 0.3 SECONDS
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/shot/buckmaster
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/shot/buckmaster,
	)
	w_class = WEIGHT_CLASS_BULKY

	bolt_type = BOLT_TYPE_LOCKING

	fire_sound = 'modular_panda/sound/weapons/gun/shotgun/bulldog.ogg'

	spread = 15
	recoil = 4

	casing_ejector = TRUE

	manufacturer = MANUFACTURER_SERENE

/obj/item/shiptest_ammo_box/magazine/internal/shot/buckmaster
	name = "Buckmaster internal magazine"
	ammo_type = /obj/item/shiptest_ammo_casing/shotgun/buckshot
	max_ammo = 6
