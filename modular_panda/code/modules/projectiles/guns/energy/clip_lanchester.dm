// Adapted from Shiptest's clip_lanchester laser weapons (AGPL-3.0).

/obj/item/shiptest_gun/energy/clip_lanchester
	abstract_type = /obj/item/shiptest_gun/energy/clip_lanchester
	icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/righthand.dmi'
	automatic_charge_overlays = FALSE
	modifystate = FALSE
	cell_type = /obj/item/stock_parts/power_store/cell/clip_lanchester

	/// Delay between automatic shots; zero leaves this weapon semiautomatic.
	var/automatic_fire_delay = 0

/obj/item/shiptest_gun/energy/clip_lanchester/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/manufacturer_examine, "Nanotrasen")
	if(automatic_fire_delay)
		AddComponent(/datum/component/automatic_fire, automatic_fire_delay, allow_akimbo = FALSE)

/obj/item/shiptest_gun/energy/clip_lanchester/update_overlays()
	. = ..()
	if(!length(ammo_type))
		return
	var/obj/item/ammo_casing/energy/shot = ammo_type[select]
	if(!shot)
		return

	var/icon_prefix = initial(icon_state)
	. += cell && cell.charge >= shot.e_cost ? "[icon_prefix]_cell" : "[icon_prefix]_cellempty"
	if(shot.select_name == "disable")
		. += "[icon_prefix]_disable"

/obj/item/shiptest_gun/energy/kalix
	parent_type = /obj/item/shiptest_gun/energy/clip_lanchester

/obj/item/shiptest_gun/energy/kalix/clip
	name = "ECM-6 \"Rubus\""
	desc = "A modernized Nanotrasen service energy weapon, based on the ECM-1. It features improvements that bring the aging design into the modern era."
	icon_state = "cm6"
	inhand_icon_state = "cm6"
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/onmob.dmi'
	worn_icon_state = "cm6"
	cell_type = /obj/item/stock_parts/power_store/cell/clip_lanchester/ewc5
	ammo_type = list(/obj/item/ammo_casing/energy/kalix/clip, /obj/item/ammo_casing/energy/disabler)
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_NORMAL
	automatic_fire_delay = 1 SECONDS

/obj/item/shiptest_gun/energy/kalix/clip/old
	name = "ECM-1"
	desc = "A rare, meticulously maintained example of Nanotrasen's early service energy weapon. It is over a century old, and replacement parts are difficult to source, but it remains dependable."
	icon_state = "cm1"
	inhand_icon_state = "cm1"
	worn_icon_state = "cm1"
	cell_type = /obj/item/stock_parts/power_store/cell/clip_lanchester
	ammo_type = list(/obj/item/ammo_casing/energy/kalix)

/obj/item/shiptest_gun/energy/laser/e50/clip
	parent_type = /obj/item/shiptest_gun/energy/clip_lanchester
	name = "ECM-50 \"Pyracanth\""
	desc = "A modified Nanotrasen E-50 emitter, optimized for fighting xenofauna. It trades some raw power for improved energy efficiency while retaining its incendiary effect."
	icon_state = "ecm50"
	inhand_icon_state = "ecm50"
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/onmob.dmi'
	worn_icon_state = "ecm50"
	cell_type = /obj/item/stock_parts/power_store/cell/clip_lanchester/heavy
	ammo_type = list(/obj/item/ammo_casing/energy/laser/eoehoma/e50/clip)
	weapon_weight = WEAPON_HEAVY
	w_class = WEIGHT_CLASS_BULKY

/obj/item/shiptest_gun/energy/clover
	parent_type = /obj/item/shiptest_gun/energy/clip_lanchester
	name = "PL-12 \"Shillelagh\""
	desc = "A pulsed-energy submachine gun that fires relatively high-power bolts. Simple, light, and economical, it is a dependable self-defense weapon. Uses Nanotrasen energy cells."
	icon_state = "pl12"
	inhand_icon_state = "pl12"
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/onmob.dmi'
	worn_icon_state = "pl12"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/clover/smg, /obj/item/ammo_casing/energy/disabler/clover/smg)
	weapon_weight = WEAPON_MEDIUM
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE
	recoil = 0.5
	w_class = WEIGHT_CLASS_BULKY
	automatic_fire_delay = 0.16 SECONDS

/obj/item/shiptest_gun/energy/clover/clip
	name = "ECM-12 \"Shillelagh\""
	desc = "A pulsed-energy submachine gun that fires high-power bolts with improved armor penetration, at the cost of ammunition capacity. Originally derived from the E-11 energy gun."
	icon_state = "ecm12"
	inhand_icon_state = "ecm12"
	worn_icon_state = "ecm12"
	cell_type = /obj/item/stock_parts/power_store/cell/upgraded

/obj/item/shiptest_gun/energy/clover/pistol
	name = "PL-7 \"Nettle\""
	desc = "A compact energy pistol designed to fire three-round bursts. Its simple design and rate of fire have made it a popular sidearm for law enforcement and civilians."
	icon_state = "pl7"
	inhand_icon_state = "clover_generic_civ"
	cell_type = /obj/item/stock_parts/power_store/cell/clip_lanchester/mini
	ammo_type = list(/obj/item/ammo_casing/energy/laser/clover, /obj/item/ammo_casing/energy/disabler/clover)
	burst_size = 1
	burst_delay = 0.15 SECONDS
	spread = 6
	w_class = WEIGHT_CLASS_SMALL
	actions_types = list(/datum/action/item_action/clip_lanchester_burst)

	var/burst_mode_enabled = FALSE

/obj/item/shiptest_gun/energy/clover/pistol/proc/toggle_burst(mob/living/user)
	burst_mode_enabled = !burst_mode_enabled
	burst_size = burst_mode_enabled ? 3 : 1
	to_chat(user, span_notice("You switch [src] to [burst_mode_enabled ? "three-round burst" : "semiautomatic"] fire."))

/obj/item/shiptest_gun/energy/clover/pistol/clip
	name = "ECM-7 \"Nettle\""
	desc = "A compact energy pistol designed to fire three-round bursts. Its light weight and logistical ease have made it a common Nanotrasen service sidearm."
	icon_state = "ecm7"
	inhand_icon_state = "clover_generic"
	spread = 4

/obj/item/shiptest_gun/energy/clover/pistol/auto
	name = "xPL-7 \"Stinging Nettle\""
	desc = "An unofficial modification of the PL-7 that converts the weapon to fully automatic fire. The serial numbers have been filed off."
	icon_state = "stinging_nettle"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/clover/auto)
	automatic_fire_delay = 0.1 SECONDS
	spread = 15
	actions_types = list()

/obj/item/shiptest_gun/energy/clover/pistol/thistle
	name = "PL-9 \"Thistle\""
	desc = "A midweight, armor-piercing energy handgun that trades stopping power for penetration. Its unexpected recoil has made it a frequent subject of firing-range mishaps."
	icon_state = "pl9"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/clover/magnum, /obj/item/ammo_casing/energy/disabler/clover/magnum)
	spread = 2
	recoil = 1
	w_class = WEIGHT_CLASS_NORMAL
	actions_types = list()

/obj/item/shiptest_gun/energy/clover/pistol/thistle/clip
	name = "ECM-9 \"Thistle\""
	desc = "A midweight energy handgun that trades stopping power for armor penetration. It is commonly issued to Nanotrasen security and corporate agents."
	icon_state = "ecm9"
	inhand_icon_state = "clover_generic"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/clover/magnum/clip, /obj/item/ammo_casing/energy/disabler/clover/magnum/clip)

/obj/item/shiptest_gun/energy/clover/faveleira
	name = "PL-24 \"Faveleira\""
	desc = "A reliable energy scattergun. This older design lacks the concentrated-fire feature of the ECM-25 but remains effective at close range."
	icon_state = "pl25"
	inhand_icon_state = "pl25"
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/onmob.dmi'
	worn_icon_state = "pl25"
	cell_type = /obj/item/stock_parts/power_store/cell/clip_lanchester/heavy
	ammo_type = list(/obj/item/ammo_casing/energy/laser/clover/shotgun)
	recoil = 1
	spread = 1
	w_class = WEIGHT_CLASS_BULKY

/obj/item/shiptest_gun/energy/clover/faveleira/clip
	name = "ECM-25 \"Faveleira\""
	desc = "Nanotrasen's latest Faveleira scattergun can switch between a diffuse five-projectile blast and a concentrated, high-velocity energy bolt."
	icon_state = "ecm25"
	inhand_icon_state = "ecm25"
	worn_icon_state = "ecm25"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/clover/shotgun, /obj/item/ammo_casing/energy/laser/clover/beam)

/obj/item/shiptest_gun/energy/clover/maguey
	name = "PL-20 \"Maguey\""
	desc = "A midweight pulsed-energy assault rifle descended from the E-40 energy rifle. It is classified as an energy repeater to meet automatic-weapon sales restrictions."
	icon_state = "pl20"
	inhand_icon_state = "pl20"
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/onmob.dmi'
	worn_icon_state = "pl20"
	cell_type = /obj/item/stock_parts/power_store/cell/clip_lanchester/heavy
	ammo_type = list(/obj/item/ammo_casing/energy/laser/clover/highpower)
	recoil = 0.5
	spread = 2
	w_class = WEIGHT_CLASS_BULKY
	automatic_fire_delay = 0.16 SECONDS

/obj/item/shiptest_gun/energy/clover/maguey/clip
	name = "ECM-20 \"Maguey\""
	desc = "A rare production-model ECM-20 evaluated as a potential replacement for Nanotrasen's service rifle. It delivers accurate, fast-recycling electroplasma fire or an explosive overcharged shot."
	icon_state = "ecm20"
	inhand_icon_state = "ecm20"
	worn_icon_state = "ecm20"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/clover/highpower, /obj/item/ammo_casing/energy/laser/clover/overcharge)

/datum/action/item_action/clip_lanchester_burst
	name = "Toggle Burst Fire"
	desc = "Switch the Nettle between semiautomatic and three-round burst fire."

/datum/action/item_action/clip_lanchester_burst/do_effect(trigger_flags)
	var/obj/item/shiptest_gun/energy/clover/pistol/target_gun = target
	if(!istype(target_gun))
		return FALSE
	target_gun.toggle_burst(owner)
	return TRUE
