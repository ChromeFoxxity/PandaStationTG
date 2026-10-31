/obj/item/ammo_box/magazine/smgm10mm
	name = "Mongrel magazine (10mm)"
	desc = "A 24-round magazine for the SKM-44v. These rounds do moderate damage, but struggle against armor."
	icon = 'modular_panda/icons/obj/weapons/ammo/magazine.dmi'
	icon_state = "mongrel_mag-24"
	base_icon_state = "mongrel_mag"
	ammo_type = /obj/item/ammo_casing/c10mm
	caliber = "10mm"
	max_ammo = 24

/obj/item/ammo_box/magazine/smgm10mm/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[round(ammo_count(), 3)]"

/obj/item/ammo_box/magazine/smgm10mm/empty
	icon_state = "mongrel_mag-0"
	start_empty = TRUE

/obj/item/ammo_box/magazine/smgm10mm/rubber
	name = "SMG magazine (10mm rubber)"
	desc = "A 24-round magazine for the SkM-44(k). These rubber rounds trade lethality for a heavy impact which can incapacitate targets. Performs even worse against armor."
	ammo_type = /obj/item/ammo_casing/c10mm/rubber

/obj/item/ammo_box/magazine/m10_cobra
	name = "Cobra magazine (10mm)"
	desc = "A 24-round magazine for Cobra submachine guns. These rounds do moderate damage, but struggle against armor."
	icon = 'modular_panda/icons/obj/weapons/ammo/magazine.dmi'
	icon_state = "c20r45-24"
	base_icon_state = "c20r45"
	ammo_type = /obj/item/ammo_casing/c10mm
	caliber = "10mm"
	max_ammo = 24

/obj/item/ammo_box/magazine/m10_cobra/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[round(ammo_count(), 3)]"

/obj/item/ammo_box/magazine/m10_cobra/empty
	icon_state = "c20r45-0"
	start_empty = TRUE

/obj/item/ammo_box/magazine/c44_firestorm_mag
	name = "stick magazine (.44 Roumain)"
	desc = "A 24-round stick magazine for the toploading Firestorm submachine gun. These rounds do moderate damage, and perform adequately against armor."
	icon = 'modular_panda/icons/obj/weapons/ammo/magazine.dmi'
	icon_state = "firestorm_mag-1"
	base_icon_state = "firestorm_mag"
	ammo_type = /obj/item/ammo_casing/a44roum
	caliber = ".44 Roumain"
	max_ammo = 24

/obj/item/ammo_box/magazine/c44_firestorm_mag/update_icon_state()
	. = ..()
	icon_state = "firestorm_mag-[!!ammo_count()]"

/obj/item/ammo_box/magazine/c44_firestorm_mag/empty
	icon_state = "firestorm_mag-0"
	start_empty = TRUE

/obj/item/ammo_box/magazine/c44_firestorm_mag/pan
	name = "pan magazine (.44 Roumain)"
	desc = "A bulky, 40-round pan magazine for the toploading Firestorm submachine gun. The rate of fire may be low, but this much ammo can mow through anything."
	icon_state = "firestorm_pan"
	base_icon_state = "firestorm_pan"
	max_ammo = 40
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/ammo_box/magazine/c44_firestorm_mag/pan/update_icon_state() //Causes the mag to NOT inherit the parent's update_icon oooh the misery
	. = ..()
	icon_state = "firestorm_pan"

/obj/item/ammo_box/magazine/c44_firestorm_mag/pan/empty
	start_empty = TRUE

/obj/item/ammo_box/magazine/m57_39_sidewinder
	name = "Sidewinder magazine (5.7x39mm)"
	desc = "A 30-round magazine for the Sidewinder personal defense weapon. These rounds do okay damage with average performance against armor."
	icon = 'modular_panda/icons/obj/weapons/ammo/magazine.dmi'
	icon_state = "sidewinder_mag-1"
	base_icon_state = "sidewinder_mag"
	ammo_type = /obj/item/ammo_casing/c57x39mm
	caliber = "5.7x39mm"
	max_ammo = 30
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/ammo_box/magazine/m57_39_sidewinder/empty
	icon_state = "sidewinder_mag-0"
	start_empty = TRUE

/obj/item/ammo_box/magazine/m10_cobra
	name = "Cobra magazine (10mm)"
	desc = "A 24-round magazine for the Cobra submachine gun. These rounds do moderate damage, but struggle against armor."
	icon = 'modular_panda/icons/obj/weapons/ammo/magazine.dmi'
	icon_state = "cobra_mag-24"
	base_icon_state = "cobra_mag"
	ammo_type = /obj/item/ammo_casing/c10mm
	caliber = "10mm"
	max_ammo = 24

/obj/item/ammo_box/magazine/m10_cobra/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[round(ammo_count(),2)]"

/obj/item/ammo_box/magazine/m10_cobra/empty
	icon_state = "cobra_mag-0"
	start_empty = TRUE
