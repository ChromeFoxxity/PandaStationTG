/obj/item/gun/proc/give_gun_safeties()
	return

/obj/item/gun/ballistic/give_gun_safeties()
	AddComponent(/datum/component/gun_safety)

/obj/item/gun/modular/ballistic/give_gun_safeties()
	AddComponent(/datum/component/gun_safety)

/obj/item/gun/proc/toggle_firemode()
	return

/obj/item/gun/ballistic/toggle_firemode()
	AddComponent(/datum/component/automatic_fire)

/obj/item/gun/modular/ballistic/toggle_firemode()
	AddComponent(/datum/component/automatic_fire)
