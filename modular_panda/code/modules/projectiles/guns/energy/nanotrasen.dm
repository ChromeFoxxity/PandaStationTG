/obj/item/shiptest_gun/energy/kalix/nanotrasen
	name = "NT-6 \"Rubus\""
	desc = "A modernized copy of the NT-1, Nanotrasen's first service weapon. Features a number of improvements to bring the aging design back into the modern age."
	icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/onmob.dmi'

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

/obj/item/shiptest_gun/energy/kalix/nanotrasen/old
	name = "NT-1"
	desc = "This is either a flawless replica, or a genuine example of the colonial-era laser weaponry issued to Nanotrasen's first ever emergency response teams. Over a hundred years old, and especially difficult to source replacement parts for, but still deadly. Kept around for ceremonial use in Central Command, and, rarely, for influential members of military divisions."

	default_ammo_type = /obj/item/stock_parts/power_store/cell/gun
	allowed_ammo_types = list(
		/obj/item/stock_parts/power_store/cell/gun,
		/obj/item/stock_parts/power_store/cell/gun/upgraded,
		/obj/item/stock_parts/power_store/cell/gun/empty,
		/obj/item/stock_parts/power_store/cell/gun/upgraded/empty,
	)
	icon_state = "cm1"
	inhand_icon_state = "cm1"

	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/kalix)

/obj/item/shiptest_gun/energy/clover/nanotrasen
	name = "NT-12 \"Shillelagh\""
	desc = "A pulsed-energy SMG that fires relatively high-power bolts for improved performance and armor penetration, at the cost of overall ammo capacity. Originally derived from the E-11 Energy Gun. Uses Nanotrasen cells."
	icon_state = "ecm12"
	inhand_icon_state = "ecm12"
	default_ammo_type = /obj/item/stock_parts/power_store/cell/gun/upgraded

/obj/item/shiptest_gun/energy/clover/pistol/nanotrasen
	name = "NT-7 \"Nettle\""
	desc = "A light, compact energy pistol designed to fire in 3 round bursts. Its light weight and logistical ease have made it the preferred sidearm in many Nanotrasen emergency response teams. Uses Nanotrasen Mini cells."
	icon_state = "ecm7"
	inhand_icon_state = "clover_generic"

	fire_delay = 0.5 SECONDS
	spread = 4

/obj/item/shiptest_gun/energy/clover/pistol/thistle/nanotrasen
	name = "NT-9 \"Thistle\""
	desc = "A midweight energy-based handgun, it trades stopping power for armor penetration, and is often found in the hands of some Nanotrasen security teams, and private security. Uses Nanotrasen mini cells."
	icon_state = "ecm9"
	inhand_icon_state = "clover_generic"

	fire_delay = 0.35 SECONDS

/obj/item/shiptest_gun/energy/clover/faveleira/nanotrasen
	name = "NT-25 \"Faveleira\""
	desc = "Nanotrasen's latest product, the NT-25 can switch between a diffuse scattershot mode, with all five lenses firing independently. Or in a 'concentrated' mode to release a hypervelocity bolt of plasma. Uses Nanotrasen heavy cells."
	icon_state = "ecm25"
	inhand_icon_state = "ecm25"

	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/laser/clover/shotgun, /obj/item/shiptest_ammo_casing/energy/laser/clover/beam)

/obj/item/shiptest_gun/energy/clover/maguey/nanotrasen
	name = "NT-20 \"Maguey\""
	desc = "A rare, original production-model NT-20, produced in small numbers for trials and examination as a potential replacement to Nanotrasen's current service rifle. The NT-20 boasts accurate electroplasma fire, a fast recycling rate."
	icon_state = "ecm20"
	inhand_icon_state = "ecm20"

	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_FULLAUTO)
	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/laser/clover/highpower, /obj/item/shiptest_ammo_casing/energy/laser/clover/overcharge)
