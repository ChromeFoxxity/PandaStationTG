/obj/item/shiptest_ammo_box/magazine/smgm10mm
	name = "Mongrel magazine (10mm)"
	desc = "A 24-round magazine for the SKM-44v. These rounds do moderate damage, but struggle against armor."
	icon_state = "mongrel_mag-24"
	base_icon_state = "mongrel_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/c10mm
	caliber = "10mm"
	max_ammo = 24

/obj/item/shiptest_ammo_box/magazine/smgm10mm/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[ammo_count() == 1 ? 1 : round(ammo_count(),3)]"

/obj/item/shiptest_ammo_box/magazine/smgm10mm/empty
	start_empty = TRUE

/obj/item/shiptest_ammo_box/magazine/smgm10mm/rubber
	name = "SMG magazine (10mm rubber)"
	desc = "A 24-round magazine for the SkM-44(k). These rubber rounds trade lethality for a heavy impact which can incapacitate targets. Performs even worse against armor."
	ammo_type = /obj/item/shiptest_ammo_casing/c10mm/rubber

/obj/item/shiptest_ammo_box/magazine/m10_cobra
	name = "Cobra magazine (10mm)"
	desc = "A 24-round magazine for Cobra submachine guns. These rounds do moderate damage, but struggle against armor."
	icon_state = "c20r45-24"
	base_icon_state = "c20r45"
	ammo_type = /obj/item/shiptest_ammo_casing/c10mm
	caliber = "10mm"
	max_ammo = 24

/obj/item/shiptest_ammo_box/magazine/m10_cobra/update_icon_state() //This is stupid (whenever ammo is spent, it updates the icon path)
	. = ..()
	icon_state = "c20r45-[round(ammo_count(),2)]"

/obj/item/shiptest_ammo_box/magazine/m10_cobra/empty
	start_empty = TRUE

/obj/item/shiptest_ammo_box/magazine/c44_firestorm_mag
	name = "stick magazine (.44 Solarian)"
	desc = "A 24-round stick magazine for the toploading Firestorm submachine gun. These rounds do moderate damage, and perform adequately against armor."
	icon_state = "firestorm_mag-1"
	base_icon_state = "firestorm_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/a44sol
	caliber = ".44 Solarian"
	max_ammo = 24

/obj/item/shiptest_ammo_box/magazine/c44_firestorm_mag/update_icon_state()
	. = ..()
	icon_state = "firestorm_mag-[!!ammo_count()]"

/obj/item/shiptest_ammo_box/magazine/c44_firestorm_mag/empty
	start_empty = TRUE

/obj/item/shiptest_ammo_box/magazine/c44_firestorm_mag/pan
	name = "pan magazine (.44 Solarian)"
	desc = "A bulky, 40-round pan magazine for the toploading Firestorm submachine gun. The rate of fire may be low, but this much ammo can mow through anything."
	icon_state = "firestorm_pan"
	base_icon_state = "firestorm_pan"
	max_ammo = 40
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/shiptest_ammo_box/magazine/c44_firestorm_mag/pan/update_icon_state() //Causes the mag to NOT inherit the parent's update_icon oooh the misery
	. = ..()
	icon_state = "firestorm_pan"

/obj/item/shiptest_ammo_box/magazine/c44_firestorm_mag/pan/empty
	start_empty = TRUE

/obj/item/shiptest_ammo_box/magazine/m10_cobra
	name = "Cobra magazine (10mm)"
	desc = "A 24-round magazine for the Cobra submachine gun. These rounds do moderate damage, but struggle against armor."
	icon_state = "cobra_mag-24"
	base_icon_state = "cobra_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/c10mm
	caliber = "10mm"
	max_ammo = 24

/obj/item/shiptest_ammo_box/magazine/m10_cobra/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[round(ammo_count(),2)]"

/obj/item/shiptest_ammo_box/magazine/m10_cobra/empty
	start_empty = TRUE

/obj/item/shiptest_ammo_box/magazine/m57_39_sidewinder
	name = "Sidewinder magazine (5.7x39mm)"
	desc = "A 30-round magazine for the Sidewinder personal defense weapon. These rounds do okay damage with average performance against armor."
	icon_state = "sidewinder_mag-1"
	base_icon_state = "sidewinder_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/c57x39mm
	caliber = "5.7x39mm"
	max_ammo = 30
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/shiptest_ammo_box/magazine/m57_39_sidewinder/empty
	start_empty = TRUE

/obj/item/shiptest_ammo_box/magazine/heater
	name = "Heater magazine (5.7mm)"
	desc = "A 30-round magazine designed for the Heater PDW."
	icon_state = "heater_mag-1"
	base_icon_state = "heater_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/c57x39mm
	caliber = "5.7x39mm"
	max_ammo = 30
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/shiptest_ammo_box/magazine/heater/extended
	name = "Heater casket magazine (5.7mm)"
	desc = "A 50-round casket magazine designed for the Heater PDW."
	icon_state = "heater_extended_mag-1"
	base_icon_state = "heater_extended_mag"
	max_ammo = 50

/obj/item/shiptest_ammo_box/magazine/c22lr_pounder_pan
	name = "pan magazine (.22 LR)"
	desc = "A 50-round pan magazine for the Pounder submachine gun."
	icon_state = "firestorm_pan"
	base_icon_state = "firestorm_pan"
	ammo_type = /obj/item/shiptest_ammo_casing/c22lr
	caliber = "22lr"
	max_ammo = 50
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/shiptest_ammo_box/magazine/c22lr_pounder_pan/update_icon_state()
	. = ..()
	icon_state = "firestorm_pan"

/obj/item/shiptest_ammo_box/magazine/nt5_9mm
	name = "NT-5 magazine (9mm)"
	desc = "A 30-round magazine for the NT-5 submachine gun. These rounds do okay damage, but struggle against armor."
	icon_state = "cm5_mag-1"
	base_icon_state = "cm5_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/c9mm
	caliber = "9mm"
	max_ammo = 30
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/shiptest_ammo_box/magazine/nt5_9mm/rubber
	desc = "A 30-round magazine for the NT-5 submachine gun. These rubber rounds trade lethality for a heavy impact which can incapacitate targets. Performs even worse against armor."
	caliber = "9mm rubber"
	ammo_type = /obj/item/shiptest_ammo_casing/c9mm/rubber

/obj/item/shiptest_ammo_box/magazine/nt5_9mm/empty
	start_empty = TRUE
