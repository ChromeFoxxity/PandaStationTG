/obj/item/shiptest_gun/energy/kalix
	name = "\improper Aegis BG-12"
	desc = "The BG-12 is Aegis Dynamics' current civilian beam gun model. The BG-12 energy beam gun is practically identical to the military model barring the removal of the full auto mode. Otherwise, it's no different from older beam guns."
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

/obj/item/shiptest_gun/energy/kalix/empty_cell
	spawn_no_ammo = TRUE
	allowed_ammo_types = list(
		/obj/item/stock_parts/power_store/cell/gun/ewc5,
		/obj/item/stock_parts/power_store/cell/gun/ewc6,
		/obj/item/stock_parts/power_store/cell/gun/ewc5/empty,
		/obj/item/stock_parts/power_store/cell/gun/ewc6/empty,
	)

/obj/item/shiptest_gun/energy/kalix/nock
	name = "\improper Aegis VG-F3"
	desc = "The Aegis Dynamics VG-F3 is a further refinement of the antiquated beam volleygun concept. The first of its kind to find commercial success in the modern day, the VG-F3 has found a comfortable niche with law enforcement and home defense markets galaxy-wide."
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

/obj/item/shiptest_gun/energy/kalix/nock/empty_cell
	spawn_no_ammo = TRUE
	allowed_ammo_types = list(
		/obj/item/stock_parts/power_store/cell/gun/ewc5,
		/obj/item/stock_parts/power_store/cell/gun/ewc6,
		/obj/item/stock_parts/power_store/cell/gun/ewc5/empty,
		/obj/item/stock_parts/power_store/cell/gun/ewc6/empty,
	)

/obj/item/shiptest_gun/energy/clover
	name = "PL-12 \"Shillelagh\""
	desc = "A pulsed-energy SMG, that fires relatively high power bolts. A simple, light, and economical automatic for the discerning captain looking for self-defense firearms. Uses Nanotrasen cells."

	icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/onmob.dmi'

	icon_state = "pl12"
	inhand_icon_state = "pl12"

	default_ammo_type = /obj/item/stock_parts/power_store/cell/gun
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

/obj/item/shiptest_gun/energy/clover/pistol
	name = "PL-7 \"Nettle\""
	desc = "A light, compact energy pistol designed to fire in 3 round bursts. A simple pistol favored by law enforcement and league citizens alike for its simple design and rate of fire. Uses Nanotrasen mini cells."
	icon_state = "pl7"
	inhand_icon_state = "clover_generic_civ"

	burst_size = 3
	burst_delay = 0.15 SECONDS
	fire_delay = 0.6 SECONDS

	spread = 6
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

/obj/item/shiptest_gun/energy/clover/pistol/auto
	name = "xPL-7 \"Stinging Nettle\""
	desc = "An 'off-the-streets' modified version of the PL-7, that uses an electropulse gas recycler to convert the firearm into a fully automatic version. The serial numbers have been filed off. Uses Nanotrasen mini cells."
	icon_state = "stinging_nettle"

	spread = 15

	fire_delay = 0.1 SECONDS

	gun_firemodes = list(FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_FULLAUTO

	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/laser/clover/auto)

/obj/item/shiptest_gun/energy/clover/pistol/thistle
	name = "PL-9 \"Thistle\""
	desc = "A midweight, armor-piercing energy handgun, trading stopping power for punch. Famous for its frequent appearance on 'firing range fail' compilation videos, due to its often unexpected recoil. Uses Nanotrasen mini cells."
	icon_state = "pl9"

	spread = 2

	fire_delay = 0.5 SECONDS

	recoil = 1

	w_class = WEIGHT_CLASS_NORMAL

	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/laser/clover/magnum, /obj/item/shiptest_ammo_casing/energy/disabler/clover/magnum)
	gun_firemodes = list(FIREMODE_SEMIAUTO)

/obj/item/shiptest_gun/energy/clover/faveleira
	name = "PL-24 \"Faveleira\""
	desc = "An older model of the NT-25. The PL-24 lacks the concentrated fire feature, but still makes for a dependable energy-based scattergun. Uses Nanotrasen heavy cells"
	icon_state = "pl25"
	inhand_icon_state = "pl25"

	default_ammo_type = /obj/item/stock_parts/power_store/cell/gun

	fire_delay = 0.7 SECONDS
	spread = 1

	recoil = 1

	w_class = WEIGHT_CLASS_BULKY
	modifystate = FALSE

	gun_firemodes = list(FIREMODE_SEMIAUTO)
	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/laser/clover/shotgun)

	default_ammo_type = /obj/item/stock_parts/power_store/cell/gun/heavy
	allowed_ammo_types = list(
		/obj/item/stock_parts/power_store/cell/gun/heavy,
		/obj/item/stock_parts/power_store/cell/gun/heavy/empty,
		/obj/item/stock_parts/power_store/cell/gun/heavy/upgraded,
		/obj/item/stock_parts/power_store/cell/gun/heavy/upgraded/empty,
	)

/obj/item/shiptest_gun/energy/clover/maguey
	name = "PL-20 \"Maguey\""
	desc = "A midweight pulsed-energy assault rifle that traces its heritage back to Nanotrasen's prototype NT-40 energy rifle. The firearm is classified as a 'Energy Repeater' to get around automatic weapon sales restrictions in most jurisdictions."
	icon_state = "pl20"
	inhand_icon_state = "pl20"

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
	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/laser/clover/highpower)
