/obj/item/ammo_box/magazine/internal/cylinder/rev38
	name = "detective revolver cylinder"
	ammo_type = /obj/item/ammo_casing/c38
	caliber = ".38"
	max_ammo = 6

/obj/item/ammo_box/magazine/internal/cylinder/rev38/big
	name = "\improper Montagne cylinder"
	max_ammo = 7

/obj/item/ammo_box/magazine/internal/cylinder/rev4570
	name = "hunting revolver cylinder"
	ammo_type = /obj/item/ammo_casing/a4570
	caliber = ".45-70"
	max_ammo = 6

/obj/item/ammo_box/magazine/internal/cylinder/rus357
	name = "\improper Russian revolver cylinder"
	ammo_type = /obj/item/ammo_casing/c357
	caliber = ".357"
	max_ammo = 6

/obj/item/ammo_box/magazine/internal/rus357/Initialize()
	stored_ammo += new ammo_type(src)
	. = ..()

/obj/item/ammo_box/magazine/internal/cylinder/pepperbox
	name = "pepperbox revolver cylinder"
	ammo_type = /obj/item/ammo_casing/c357
	caliber = ".357"
	max_ammo = 5

/obj/item/ammo_box/magazine/internal/cylinder/rev44
	name = "cattleman revolver cylinder"
	ammo_type = /obj/item/ammo_casing/a44roum
	caliber = ".44 Roumain"
	max_ammo = 6

/obj/item/ammo_box/magazine/internal/cylinder/rev44/montagne
	name = "montagne revolver cylinder"
