
///SOLAR ARMORIES
//fuck you im not typing the full name out
//solarwaffledesuckenmydickengeschutzenweaponmanufacturinglocation

//not gauss pistol
/obj/item/shiptest_gun/ballistic/automatic/pistol/solgov
	name = "\improper Pistole C"
	desc = "A favorite of the Terran Regency that is despised by the Solarian bureaucracy. Shifted out of military service centuries ago, though still popular among civilians. Chambered in 5.56mm caseless."
	icon_state = "pistole-c"
	icon = 'modular_panda/icons/obj/guns/manufacturer/solararmories/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/solararmories/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/solararmories/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/solararmories/onmob.dmi'

	weapon_weight = WEAPON_LIGHT
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/pistol556mm
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/pistol556mm,
	)
	fire_sound = 'modular_panda/sound/weapons/gun/pistol/pistolec.ogg'
	manufacturer = MANUFACTURER_SOLARARMORIES
	load_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release.ogg'

	rack_sound = 'modular_panda/sound/weapons/gun/pistol/rack_small.ogg'
	lock_back_sound = 'modular_panda/sound/weapons/gun/pistol/lock_small.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/pistol/drop_small.ogg'

	fire_select_icon_state_prefix = "caseless_"

/obj/item/shiptest_gun/ballistic/automatic/pistol/solgov/old
	icon_state = "pistole-c-old"

///Rifles

///Sniper
/obj/item/shiptest_gun/ballistic/rifle/solgov
	name = "SSG-669C"
	desc = "A bolt-action sniper rifle used by Solarian troops. Beloved for its rotary design and accuracy. Chambered in 8x58mm Caseless."
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/boltaction/solgov
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/boltaction/solgov,
	)
	icon_state = "ssg669c"
	inhand_icon_state = "ssg669c"
	icon = 'modular_panda/icons/obj/guns/manufacturer/solararmories/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/solararmories/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/solararmories/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/solararmories/onmob.dmi'

	fire_sound = 'modular_panda/sound/weapons/gun/rifle/ssg669c.ogg'
	can_be_sawn_off = FALSE

	zoomable = TRUE
	zoom_amt = 10 //Long range, enough to see in front of you, but no tiles behind you.
	zoom_out_amt = 5

	manufacturer = MANUFACTURER_SOLARARMORIES
	spread = 20
	recoil = 8
