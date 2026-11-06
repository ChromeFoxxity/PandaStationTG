/obj/item/shiptest_ammo_box/magazine/python_box
	name = "Python drum magazine (5.56x42mm)"
	desc = "A 90 round drum magazine for SAW-90 Python. These rounds do good damage with good armor penetration."
	base_icon_state = "python_mag"
	icon_state = "python_mag-1"
	ammo_type = /obj/item/shiptest_ammo_casing/a556_42
	caliber = "5.56x42mm"
	max_ammo = 90
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/shiptest_ammo_box/magazine/python_box/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[!!ammo_count()]"

/obj/item/shiptest_ammo_box/magazine/python_box/empty
	start_empty = TRUE

/obj/item/shiptest_ammo_box/magazine/m12_shredder
	name = "belt box (12g)"
	desc = "A 40-round belt box for the Shredder heavy machine gun."
	icon_state = "shredder_mag-1"
	base_icon_state = "shredder_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/shotgun/buckshot
	caliber = "12ga"
	max_ammo = 40
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/shiptest_ammo_box/magazine/m12_shredder/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[!!ammo_count()]"

/obj/item/shiptest_ammo_box/magazine/m12_shredder/slug
	name = "belt box (12g slug)"
	desc = "A 40-round belt box for the Shredder heavy machine gun."
	icon_state = "shredder_mag_slug-1"
	base_icon_state = "shredder_mag_slug"
	ammo_type = /obj/item/shiptest_ammo_casing/shotgun
	caliber = "12ga"
	max_ammo = 40
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/shiptest_ammo_box/magazine/mower_lmg_308
	name = "machine gun drum (.308)"
	desc = "A drum shaped, 50-round magazine for the Mower .308 machine gun. These rounds do good damage with excelent armor penetration."
	icon_state = "firestorm_pan"
	base_icon_state = "firestorm_pan"
	ammo_type = /obj/item/shiptest_ammo_casing/a308
	caliber = ".308"
	max_ammo = 50
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/shiptest_ammo_box/magazine/mower_lmg_308/update_icon_state()
	. = ..()
	icon_state = "firestorm_pan"

/obj/item/shiptest_ammo_box/magazine/mower_lmg_308/empty
	start_empty = TRUE

/obj/item/shiptest_ammo_box/magazine/nt40_762_40_box
	name = "NT-40 box magazine (7.62x40mm)"
	desc = "An 80 round box magazine for NT-40 light machine gun. These rounds do good damage with good armor penetration."
	base_icon_state = "cm40_mag"
	icon_state = "cm40_mag-1"
	ammo_type = /obj/item/shiptest_ammo_casing/a762_40
	caliber = "7.62x40mm"
	max_ammo = 80
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/shiptest_ammo_box/magazine/nt40_762_40_box/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[!!ammo_count()]"

/obj/item/shiptest_ammo_box/magazine/nt40_762_40_box/empty
	start_empty = TRUE
