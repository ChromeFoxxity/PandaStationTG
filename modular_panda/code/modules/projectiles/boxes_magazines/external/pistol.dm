/obj/item/ammo_box/magazine/m10mm_ringneck
	name = "Ringneck pistol magazine (10mm)"
	desc = "An 10-round magazine for the Ringneck pistol. These rounds do moderate damage, but struggle against armor."
	icon = 'modular_panda/icons/obj/weapons/ammo/magazine.dmi'
	icon_state = "ringneck_mag-1"
	base_icon_state = "ringneck_mag"
	ammo_type = /obj/item/ammo_casing/c10mm
	caliber = "10mm"
	max_ammo = 10
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/ammo_box/magazine/m10mm_ringneck/empty
	icon_state = "ringneck_mag-0"
	start_empty = TRUE

/obj/item/ammo_box/magazine/m57_39_asp
	name = "Asp magazine (5.7x39mm)"
	desc = "A 12-round, double-stack magazine for the Asp pistol. These rounds do okay damage with average performance against armor."
	icon = 'modular_panda/icons/obj/weapons/ammo/magazine.dmi'
	icon_state = "asp_mag-12"
	base_icon_state = "asp_mag"
	ammo_type = /obj/item/ammo_casing/c57x39mm
	caliber = "5.7x39mm"
	max_ammo = 12

/obj/item/ammo_box/magazine/m57_39_asp/update_icon_state()
	. = ..()
	if(ammo_count() == 12)
		icon_state = "[base_icon_state]-12"
	else if(ammo_count() >= 10)
		icon_state = "[base_icon_state]-10"
	else if(ammo_count() >= 5)
		icon_state = "[base_icon_state]-5"
	else if(ammo_count() >= 1)
		icon_state = "[base_icon_state]-1"
	else
		icon_state = "[base_icon_state]-0"

/obj/item/ammo_box/magazine/m57_39_asp/empty
	icon_state = "asp_mag-0"
	start_empty = TRUE

/obj/item/ammo_box/magazine/m9mm_rattlesnake
	name = "Rattlesnake magazine (9mm)"
	desc = "A long, 18-round double-stack magazine designed for the Rattlesnake machine pistol. These rounds do okay damage, but struggle against armor."
	icon = 'modular_panda/icons/obj/weapons/ammo/magazine.dmi'
	icon_state = "rattlesnake_mag_18"
	base_icon_state = "rattlesnake_mag"
	ammo_type = /obj/item/ammo_casing/c9mm
	caliber = "9mm"
	max_ammo = 18

/obj/item/ammo_box/magazine/m9mm_rattlesnake/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[round(ammo_count(), 3)]"

/obj/item/ammo_box/magazine/m9mm_rattlesnake/empty
	icon_state = "rattlesnake_mag_0"
	start_empty = TRUE

/obj/item/ammo_box/magazine/m10mm_cottonmouth
	name = "Cottonmouth magazine (10mm)"
	desc = "A long, 14-round double-stack magazine designed for the Cottonmouth modified machine pistol. These rounds do moderate damage, but struggle against armor."
	icon = 'modular_panda/icons/obj/weapons/ammo/magazine.dmi'
	icon_state = "rattlesnake_mag_18"
	base_icon_state = "rattlesnake_mag"
	ammo_type = /obj/item/ammo_casing/c10mm
	caliber = "10mm"
	max_ammo = 14

/obj/item/ammo_box/magazine/m9mm_rattlesnake/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[round(ammo_count(), 3)]"

/obj/item/ammo_box/magazine/m10mm_cottonmouth/empty
	icon_state = "rattlesnake_mag_0"
	start_empty = TRUE

/obj/item/ammo_box/magazine/m22lr_himehabu
	name = "pistol magazine (.22 LR)"
	desc = "A single-stack handgun magazine designed to chamber .22 LR. It's rather tiny, all things considered."
	icon = 'modular_panda/icons/obj/weapons/ammo/magazine.dmi'
	icon_state = "himehabu_mag-10"
	base_icon_state = "himehabu_mag"
	ammo_type = /obj/item/ammo_casing/c22lr
	caliber = "22lr"
	max_ammo = 10
	w_class = WEIGHT_CLASS_TINY
	multiple_sprites = AMMO_BOX_PER_BULLET

/obj/item/ammo_box/magazine/m22lr_himehabu/rubber
	name = "pistol magazine (.22 LR Rubber)"
	desc = "A single-stack handgun magazine designed to chamber .22 LR. It's rather tiny, all things considered, this one is supposed to be chambered with rubber bullets."
	ammo_type = /obj/item/ammo_casing/c22lr/rubber

/obj/item/ammo_box/magazine/m22lr_himehabu/empty
	icon_state = "himehabu_mag-0"
	start_empty = TRUE
