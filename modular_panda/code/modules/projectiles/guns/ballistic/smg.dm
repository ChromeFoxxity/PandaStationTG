/obj/item/shiptest_gun/ballistic/automatic/smg
	abstract_type = /obj/item/shiptest_gun/ballistic/automatic/smg
	show_magazine_on_sprite = TRUE

	burst_size = 2
	actions_types = list()
	fire_delay = 0.1 SECONDS

	spread = 10
	zoom_amt = SMG_ZOOM
	recoil = 4
	w_class = WEIGHT_CLASS_BULKY

	light_range = 1

	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_SEMIAUTO


	load_sound = 'modular_panda/sound/weapons/gun/smg/smg_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/smg/smg_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/smg/smg_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/smg/smg_unload.ogg'
	suppressed_sound = 'modular_panda/sound/weapons/gun/pistol/shot_suppressed.ogg'

	gunslinger_recoil_bonus = 2
	gunslinger_spread_bonus = 16
	wear_minor_threshold = 240
	wear_major_threshold = 720
	wear_maximum = 1200


/obj/item/shiptest_gun/ballistic/automatic/smg/skm_carbine
	name = "\improper SKM-24v"
	desc = "The SKM-24v was a carbine modification of the SKM-24 during the Frontiersmen War. This, however, is just a shoddy imitation of that carbine, effectively an SKM-24 with a sawed down barrel and a folding wire stock. Can be fired with the stock folded, though accuracy suffers. Chambered in 4.6x30mm."

	icon_state = "skm_carbine"
	inhand_icon_state = "skm_carbine"
	icon = 'modular_panda/icons/obj/guns/manufacturer/hermits/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/hermits/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/hermits/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/hermits/onmob.dmi'
	fire_sound = 'modular_panda/sound/weapons/gun/rifle/skm_smg.ogg'

	rack_sound = 'modular_panda/sound/weapons/gun/rifle/skm_cocked.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/rifle/skm_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/rifle/skm_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/rifle/skm_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/rifle/skm_unload.ogg'

	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_NORMAL
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/skm_46_30
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/skm_46_30,
	)

	recoil = 6

	spread = 14


	wear_rate = 1.6

/obj/item/shiptest_gun/ballistic/automatic/smg/skm_carbine/inteq
	name = "\improper SKM-44v Mongrel"
	desc = "An SKM-44, further modified into a sub-machine gun by Inteq artificers with a new magazine well, collapsing stock, and shortened barrel. Faced with a surplus of SKM-44s and a shortage of other firearms, IRMG has made the most of their available materiel with conversions such as this. Chambered in 10mm."
	icon = 'modular_panda/icons/obj/guns/manufacturer/inteq/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/inteq/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/inteq/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/inteq/onmob.dmi'
	icon_state = "skm_inteqsmg"
	inhand_icon_state = "skm_inteqsmg"

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/smgm10mm
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/smgm10mm,
	)
	manufacturer = MANUFACTURER_INTEQ

	fire_sound = 'modular_panda/sound/weapons/gun/smg/vector_fire.ogg'

	load_sound = 'modular_panda/sound/weapons/gun/smg/smg_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/smg/smg_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/smg/smg_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/smg/smg_unload.ogg'

	spread = 10

	recoil = 4
