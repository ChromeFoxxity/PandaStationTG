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

/obj/item/ammo_box/magazine/m57_39_sidewinder
	name = "Sidewinder magazine (5.7x39mm)"
	desc = "A 30-round magazine for the Sidewinder personal defense weapon. These rounds do okay damage with average performance against armor."
	icon = 'modular_panda/icons/obj/weapons/ammo/magazine.dmi'
	icon_state = "sidewinder_mag-full"
	base_icon_state = "sidewinder_mag"
	ammo_type = /obj/item/ammo_casing/c57x39mm
	caliber = "5.7x39mm"
	max_ammo = 30
	multiple_sprites = AMMO_BOX_FULL_EMPTY
	multiple_sprite_use_base = TRUE

/obj/item/ammo_box/magazine/m57_39_sidewinder/empty
	icon_state = "sidewinder_mag-empty"
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

/obj/item/ammo_box/magazine/nt5_9mm
	name = "NT-5 magazine (9mm)"
	desc = "A 30-round magazine for the NT-5 submachine gun. These rounds do okay damage, but struggle against armor."
	icon = 'modular_panda/icons/obj/weapons/ammo/magazine.dmi'
	icon_state = "cm5_mag-1"
	base_icon_state = "cm5_mag"
	ammo_type = /obj/item/ammo_casing/c9mm
	caliber = "9mm"
	max_ammo = 30
	multiple_sprites = AMMO_BOX_FULL_EMPTY
	multiple_sprite_use_base = TRUE

/obj/item/ammo_box/magazine/nt5_9mm/empty
	icon_state = "cm5_mag-0"
	start_empty = TRUE

/obj/item/ammo_box/magazine/nt5_9mm/rubber
	name = "NT-5 magazine (9mm rubber)"
	desc = "A 30-round magazine for the NT-5 submachine gun. These rubber rounds trade lethality for a heavy impact which can incapacitate targets. Performs even worse against armor."
	ammo_type = /obj/item/ammo_casing/c9mm/rubber
