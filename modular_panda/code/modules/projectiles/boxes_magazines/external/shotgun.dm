/obj/item/ammo_box/magazine/m12g_bulldog
	name = "shotgun box magazine (12g buckshot)"
	desc = "A single-stack, 8-round box magazine for the Bulldog shotgun and it's derivatives."
	icon = 'modular_panda/icons/obj/weapons/ammo/magazine.dmi'
	icon_state = "bulldog_mag-1"
	base_icon_state = "bulldog_mag"
	ammo_type = /obj/item/ammo_casing/shotgun/buckshot
	caliber = "12ga"
	max_ammo = 8
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/ammo_box/magazine/m12g_bulldog/slug
	name = "shotgun box magazine (12g Slugs)"
	ammo_type = /obj/item/ammo_casing/shotgun

/obj/item/ammo_box/magazine/m12g_bulldog/empty
	icon_state = "bulldog_mag-0"
	start_empty = TRUE

/obj/item/ammo_box/magazine/m12g_bulldog/drum
	name = "shotgun drum magazine (12g buckshot)"
	desc = "A bulky 12-round drum designed for the Bulldog shotgun and it's derivatives."
	icon_state = "bulldog_drum-1"
	base_icon_state = "bulldog_drum"
	ammo_type = /obj/item/ammo_casing/shotgun/buckshot
	caliber = "12ga"
	max_ammo = 12
	w_class = WEIGHT_CLASS_NORMAL
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/ammo_box/magazine/m12g_bulldog/drum/empty
	icon_state = "bulldog_drum-0"
	start_empty = TRUE

/obj/item/ammo_box/magazine/m12g_bulldog/drum/stun
	name = "shotgun drum magazine (12g taser slugs)"
	ammo_type = /obj/item/ammo_casing/shotgun/stunslug

/obj/item/ammo_box/magazine/m12g_bulldog/drum/slug
	name = "shotgun drum magazine (12g slugs)"
	ammo_type = /obj/item/ammo_casing/shotgun

/obj/item/ammo_box/magazine/m12g_bulldog/drum/dragon
	name = "shotgun drum magazine (12g dragon's breath)"
	ammo_type = /obj/item/ammo_casing/shotgun/dragonsbreath

/obj/item/ammo_box/magazine/m12g_bulldog/drum/meteor
	name = "shotgun drum magazine (12g meteor slugs)"
	ammo_type = /obj/item/ammo_casing/shotgun/meteorslug
