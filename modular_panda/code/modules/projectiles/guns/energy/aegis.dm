/obj/item/shiptest_gun/energy/aegis
	name = "frontier gun master type"
	desc = ""

	w_class = WEIGHT_CLASS_NORMAL

	abstract_type = /obj/item/shiptest_gun/energy/aegis

/obj/item/shiptest_gun/energy/aegis/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_AEGIS)

/obj/item/shiptest_gun/energy/aegis/kalix
	name = "\improper Aegis BG-12"
	desc = "Aegis Dynamics' civilian-market beam gun, adapted from its military counterpart for private ownership. While retaining much of the military model's design and performance, the BG-12 has had its fully automatic firing mode removed to comply with civilian regulations. A reliable, if somewhat dated, design that remains popular among civilian owners."
	icon_state = "kalixgun"
	inhand_icon_state = "kalixgun"
	icon = 'modular_panda/icons/obj/guns/manufacturer/etherbor/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/etherbor/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/etherbor/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/etherbor/onmob.dmi'
	w_class = WEIGHT_CLASS_BULKY

	modifystate = TRUE

	fire_delay = 0.16 SECONDS

	spread = 3

	default_ammo_type = /obj/item/stock_parts/power_store/cell/gun/ewc5
	allowed_ammo_types = list(
		/obj/item/stock_parts/power_store/cell/gun/ewc5,
		/obj/item/stock_parts/power_store/cell/gun/ewc6,
		/obj/item/stock_parts/power_store/cell/gun/ewc5/empty,
		/obj/item/stock_parts/power_store/cell/gun/ewc6/empty,
	)
	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/kalix, /obj/item/shiptest_ammo_casing/energy/disabler/hitscan)

	load_sound = 'modular_panda/sound/weapons/gun/gauss/pistol_reload.ogg'

/obj/item/shiptest_gun/energy/aegis/kalix/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_AEGIS)

/obj/item/shiptest_gun/energy/aegis/kalix/empty_cell
	spawn_no_ammo = TRUE
	allowed_ammo_types = list(
		/obj/item/stock_parts/power_store/cell/gun/ewc5,
		/obj/item/stock_parts/power_store/cell/gun/ewc6,
		/obj/item/stock_parts/power_store/cell/gun/ewc5/empty,
		/obj/item/stock_parts/power_store/cell/gun/ewc6/empty,
	)

/obj/item/shiptest_gun/energy/aegis/kalix/nock
	name = "\improper Aegis VG-F3"
	desc = "The Aegis Dynamics VG-F3 is a modern refinement of the traditional beam volleygun, bringing an antiquated weapon concept into the modern age. Redesigned with improved handling and reliability, the VG-F3 has found considerable commercial success, carving out a comfortable niche in law enforcement and civilian home-defense markets across the galaxy."
	icon_state = "kalixnock"
	inhand_icon_state = "kalixnock"
	slot_flags = ITEM_SLOT_BELT | ITEM_SLOT_SUITSTORE

	modifystate = TRUE

	gun_firemodes = list(FIREMODE_BURST)
	default_firemode = FIREMODE_BURST

	randomspread = TRUE
	burst_size = 4
	burst_delay = 0.1 SECONDS
	fire_delay = 0.7 SECONDS

	spread = 10

	default_ammo_type = /obj/item/stock_parts/power_store/cell/gun/ewc5
	allowed_ammo_types = list(
		/obj/item/stock_parts/power_store/cell/gun/ewc5,
		/obj/item/stock_parts/power_store/cell/gun/ewc6,
		/obj/item/stock_parts/power_store/cell/gun/ewc5/empty,
		/obj/item/stock_parts/power_store/cell/gun/ewc6/empty,
	)
	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/kalix/nock, /obj/item/shiptest_ammo_casing/energy/disabler/hitscan/kalix/nock)

/obj/item/shiptest_gun/energy/aegis/kalix/nock/empty_cell
	spawn_no_ammo = TRUE
	allowed_ammo_types = list(
		/obj/item/stock_parts/power_store/cell/gun/ewc5,
		/obj/item/stock_parts/power_store/cell/gun/ewc6,
		/obj/item/stock_parts/power_store/cell/gun/ewc5/empty,
		/obj/item/stock_parts/power_store/cell/gun/ewc6/empty,
	)
