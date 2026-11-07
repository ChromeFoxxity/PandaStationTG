/obj/item/shiptest_gun/energy/nanotrasen
	name = "nanotrasen gun master type"
	desc = ""

	w_class = WEIGHT_CLASS_NORMAL

	abstract_type = /obj/item/shiptest_gun/energy/nanotrasen

/obj/item/shiptest_gun/energy/nanotrasen/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)

/obj/item/shiptest_gun/energy/nanotrasen/rubus
	name = "NT-6 \"Rubus\""
	desc = "A modernized copy of the NT-1, Nanotrasen's first service weapon, commissioned by Nanotrasen from Aegis Dynamics. Features a number of improvements to bring the aging design back into the modern age, however it is still effectively ruled out of standard-issue."
	icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/onmob.dmi'
	w_class = WEIGHT_CLASS_BULKY

	modifystate = TRUE

	fire_delay = 0.16 SECONDS

	spread = 3

	icon_state = "cm6"
	inhand_icon_state = "cm6"

	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_SEMIAUTO

	default_ammo_type = /obj/item/stock_parts/power_store/cell/gun/ewc5
	allowed_ammo_types = list(
		/obj/item/stock_parts/power_store/cell/gun/ewc5,
		/obj/item/stock_parts/power_store/cell/gun/ewc6,
		/obj/item/stock_parts/power_store/cell/gun/ewc5/empty,
		/obj/item/stock_parts/power_store/cell/gun/ewc6/empty,
	)
	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/kalix/nt, /obj/item/shiptest_ammo_casing/energy/disabler/hitscan)

	load_sound = 'modular_panda/sound/weapons/gun/gauss/pistol_reload.ogg'

/obj/item/shiptest_gun/energy/nanotrasen/rubus/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_AEGIS)

/obj/item/shiptest_gun/energy/nanotrasen/rubus/old
	name = "NT-1"
	desc = "This is either a flawless replica, or a genuine example of the colonial-era laser weaponry that was commissioned by Nanotrasen from Aegis Dynamics, it was issued to Nanotrasen's first ever emergency response teams. Over a hundred years old, and especially difficult to source replacement parts for, but still deadly. Kept around for ceremonial use in Central Command, and, rarely, for influential members of military divisions."

	default_ammo_type = /obj/item/stock_parts/power_store/cell/gun
	allowed_ammo_types = list(
		/obj/item/stock_parts/power_store/cell/gun,
		/obj/item/stock_parts/power_store/cell/gun/upgraded,
		/obj/item/stock_parts/power_store/cell/gun/empty,
		/obj/item/stock_parts/power_store/cell/gun/upgraded/empty,
	)
	icon_state = "cm1"
	inhand_icon_state = "cm1"

	gun_firemodes = list(FIREMODE_SEMIAUTO)
	default_firemode = FIREMODE_SEMIAUTO

	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/kalix)

/obj/item/shiptest_gun/energy/nanotrasen/shillelagh
	name = "NT-12 \"Shillelagh\""
	desc = "A light, compact energy pistol designed to fire in 3 round bursts. Its light weight and logistical ease have made it the preferred sidearm in many Nanotrasen emergency response teams. Uses Nanotrasen Mini cells."

	icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/onmob.dmi'

	icon_state = "ecm12"
	inhand_icon_state = "ecm12"

	default_ammo_type = /obj/item/stock_parts/power_store/cell/gun/upgraded
	allowed_ammo_types = list(
		/obj/item/stock_parts/power_store/cell/gun,
		/obj/item/stock_parts/power_store/cell/gun/empty,
		/obj/item/stock_parts/power_store/cell/gun/upgraded,
		/obj/item/stock_parts/power_store/cell/gun/upgraded/empty,
	)

	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/laser/clover/smg, /obj/item/shiptest_ammo_casing/energy/disabler/clover/smg)

	modifystate = TRUE

	weapon_weight = WEAPON_MEDIUM

	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE

	recoil = 0.5

	fire_delay = 0.16 SECONDS

	w_class = WEIGHT_CLASS_BULKY

	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_SEMIAUTO

	muzzleflash_iconstate = "muzzle_flash_pulse"

/obj/item/shiptest_gun/energy/nanotrasen/nettle
	name = "NT-7 \"Nettle\""
	desc = "A light, compact energy pistol designed to fire in 3 round bursts. Its light weight and logistical ease have made it the preferred sidearm in many Nanotrasen emergency response teams. Uses Nanotrasen Mini cells."
	icon_state = "ecm7"
	inhand_icon_state = "clover_generic"

	icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/onmob.dmi'

	burst_size = 3
	burst_delay = 0.15 SECONDS
	fire_delay = 0.5 SECONDS

	spread = 4
	recoil = 0

	w_class = WEIGHT_CLASS_SMALL

	default_ammo_type = /obj/item/stock_parts/power_store/cell/gun/mini
	allowed_ammo_types = list(
		/obj/item/stock_parts/power_store/cell/gun/mini,
		/obj/item/stock_parts/power_store/cell/gun/mini/empty,
	)

	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_BURST)
	default_firemode = FIREMODE_SEMIAUTO

	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/laser/clover, /obj/item/shiptest_ammo_casing/energy/disabler/clover)

/obj/item/shiptest_gun/energy/nanotrasen/thistle
	name = "NT-9 \"Thistle\""
	desc = "A midweight energy-based handgun, it trades stopping power for armor penetration, and is often found in the hands of some Nanotrasen security teams, and private security. Uses Nanotrasen mini cells."
	icon_state = "ecm25"
	inhand_icon_state = "ecm25"

	icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/onmob.dmi'

	spread = 2

	fire_delay = 0.35 SECONDS

	recoil = 1

	w_class = WEIGHT_CLASS_NORMAL

	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/laser/clover/magnum, /obj/item/shiptest_ammo_casing/energy/disabler/clover/magnum)
	gun_firemodes = list(FIREMODE_SEMIAUTO)

/obj/item/shiptest_gun/energy/nanotrasen/faveleira
	name = "NT-25 \"Faveleira\""
	desc = "Nanotrasen's latest product, the NT-25 can switch between a diffuse scattershot mode, with all five lenses firing independently. Or in a 'concentrated' mode to release a hypervelocity bolt of plasma. Uses Nanotrasen heavy cells."
	icon_state = "ecm25"
	inhand_icon_state = "ecm25"

	icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/onmob.dmi'

	default_ammo_type = /obj/item/stock_parts/power_store/cell/gun

	fire_delay = 0.7 SECONDS
	spread = 1

	recoil = 1

	w_class = WEIGHT_CLASS_BULKY
	modifystate = FALSE

	gun_firemodes = list(FIREMODE_SEMIAUTO)
	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/laser/clover/shotgun, /obj/item/shiptest_ammo_casing/energy/laser/clover/beam)

	default_ammo_type = /obj/item/stock_parts/power_store/cell/gun/heavy
	allowed_ammo_types = list(
		/obj/item/stock_parts/power_store/cell/gun/heavy,
		/obj/item/stock_parts/power_store/cell/gun/heavy/empty,
		/obj/item/stock_parts/power_store/cell/gun/heavy/upgraded,
		/obj/item/stock_parts/power_store/cell/gun/heavy/upgraded/empty,
	)

/obj/item/shiptest_gun/energy/nanotrasen/maguey
	name = "NT-20 \"Maguey\""
	desc = "A rare, original production-model NT-20, produced in small numbers for trials and examination as a potential replacement to Nanotrasen's current service rifle. The NT-20 boasts accurate electroplasma fire, a fast recycling rate."
	icon_state = "ecm20"
	inhand_icon_state = "ecm20"

	icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/onmob.dmi'

	default_ammo_type = /obj/item/stock_parts/power_store/cell/gun/heavy
	allowed_ammo_types = list(
		/obj/item/stock_parts/power_store/cell/gun/heavy,
		/obj/item/stock_parts/power_store/cell/gun/heavy/empty,
		/obj/item/stock_parts/power_store/cell/gun/heavy/upgraded,
		/obj/item/stock_parts/power_store/cell/gun/heavy/upgraded/empty,
	)

	fire_delay = 0.16 SECONDS
	spread = 2
	recoil = 0.5

	w_class = WEIGHT_CLASS_BULKY

	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_FULLAUTO)
	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/laser/clover/highpower, /obj/item/shiptest_ammo_casing/energy/laser/clover/overcharge)
