/obj/item/ammo_box/speedloader/c357
	name = "speed loader (.357)"
	desc = "A 6-round speed loader for quickly reloading .357 revolvers. These rounds do good damage with average performance against armor."
	icon = 'modular_panda/icons/obj/weapons/ammo/magazine.dmi'
	icon_state = "speedloader_357-6"
	base_icon_state = "speedloader_357"
	ammo_type = /obj/item/ammo_casing/c357
	caliber = ".357"
	max_ammo = 6
	item_flags = NO_MAT_REDEMPTION
	w_class = WEIGHT_CLASS_TINY

/obj/item/ammo_box/speedloader/c357/match
	name = "speed loader (.357 match)"
	desc = "A 6-round speed loader for quickly reloading .357 revolvers. These match rounds travel faster, perform better against armor, and can ricochet off targets."
	ammo_type = /obj/item/ammo_casing/c357/match

/obj/item/ammo_box/speedloader/c357/hp
	name = "speed loader (.357 hollow point)"
	desc = "A 6-round speed loader for quickly reloading .357 revolvers. These hollow point rounds do incredible damage against soft targets, but are nearly ineffective against armored ones."
	ammo_type = /obj/item/ammo_casing/c357/hp
