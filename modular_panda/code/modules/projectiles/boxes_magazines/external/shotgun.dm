/obj/item/shiptest_ammo_box/magazine/nt15_12g
	name = "NT-15 magazine (12g buckshot)"
	desc = "An almost straight, 8-round magazine designed for the NT-15 shotgun."
	icon_state = "cm15_mag-1"
	base_icon_state = "cm15_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/shotgun/buckshot
	caliber = "12ga"
	max_ammo = 8
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/shiptest_ammo_box/magazine/nt15_12g/empty
	start_empty = TRUE

/obj/item/shiptest_ammo_box/magazine/nt15_12g/incendiary
	name = "NT-15 magazine (12g incendiary)"
	desc = "An almost straight, 8-round magazine designed for the NT-15 shotgun. This one was loaded with incendiary slugs. Be careful!"
	ammo_type = /obj/item/shiptest_ammo_casing/shotgun/incendiary
	caliber = "12ga incendiary"

/obj/item/shiptest_ammo_box/magazine/m12g_bulldog
	name = "shotgun box magazine (12g buckshot)"
	desc = "A single-stack, 8-round box magazine for the Bulldog shotgun and it's derivatives."
	icon_state = "bulldog_mag-1"
	base_icon_state = "bulldog_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/shotgun/buckshot
	caliber = "12ga"
	max_ammo = 8
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/shiptest_ammo_box/magazine/m12g_bulldog/slug
	name = "shotgun box magazine (12g Slugs)"
	ammo_type = /obj/item/shiptest_ammo_casing/shotgun

/obj/item/shiptest_ammo_box/magazine/m12g_bulldog/empty
	start_empty = TRUE

/obj/item/shiptest_ammo_box/magazine/m12g_bulldog/drum
	name = "shotgun drum magazine (12g buckshot)"
	desc = "A bulky 12-round drum designed for the Bulldog shotgun and it's derivatives."
	icon_state = "bulldog_drum-1"
	base_icon_state = "bulldog_drum"
	ammo_type = /obj/item/shiptest_ammo_casing/shotgun/buckshot
	caliber = "12ga"
	max_ammo = 12
	w_class = WEIGHT_CLASS_NORMAL
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/shiptest_ammo_box/magazine/m12g_bulldog/drum/empty
	start_empty = TRUE

/obj/item/shiptest_ammo_box/magazine/m12g_bulldog/drum/stun
	name = "shotgun drum magazine (12g taser slugs)"
	ammo_type = /obj/item/shiptest_ammo_casing/shotgun/stunslug

/obj/item/shiptest_ammo_box/magazine/m12g_bulldog/drum/slug
	name = "shotgun drum magazine (12g slugs)"
	ammo_type = /obj/item/shiptest_ammo_casing/shotgun

/obj/item/shiptest_ammo_box/magazine/m12g_bulldog/drum/dragon
	name = "shotgun drum magazine (12g dragon's breath)"
	ammo_type = /obj/item/shiptest_ammo_casing/shotgun/dragonsbreath

/obj/item/shiptest_ammo_box/magazine/m12g_bulldog/drum/bioterror
	name = "shotgun drum magazine (12g bioterror)"
	ammo_type = /obj/item/shiptest_ammo_casing/shotgun/dart/bioterror

/obj/item/shiptest_ammo_box/magazine/m12g_bulldog/drum/meteor
	name = "shotgun drum magazine (12g meteor slugs)"
	ammo_type = /obj/item/shiptest_ammo_casing/shotgun/meteorslug

/obj/item/shiptest_ammo_box/magazine/m12g_slammer
	name = "slammer box magazine (12g buckshot)"
	desc = "A single-stack, 6-round box magazine for the Slammer shotgun and it's derivatives."
	icon_state = "slammer_mag-1"
	base_icon_state = "slammer_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/shotgun/buckshot
	caliber = "12ga"
	max_ammo = 6
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/shiptest_ammo_box/magazine/m12g_slammer/empty
	start_empty = TRUE
