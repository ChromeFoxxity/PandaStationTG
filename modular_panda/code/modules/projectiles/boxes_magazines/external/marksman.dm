/obj/item/shiptest_ammo_box/magazine/sniper_rounds
	name = "anti-material rifle magazine (.50 BMG)"
	desc = "A large, heavy 6-round box magazine designed for the sniper rifle. These rounds deal absurd damage, able to delimb targets, knock them on their feet, and bypass most protective equipment."
	icon_state = "50bmgsniper_mag-1"
	base_icon_state = "50bmgsniper_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/p50
	max_ammo = 6
	caliber = ".50 BMG"
	w_class = WEIGHT_CLASS_NORMAL
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/shiptest_ammo_box/magazine/sniper_rounds/soporific
	name = "anti-material rifle magazine (.50 BMG soporific)"
	desc = "A large, heavy 3-round box magazine designed for the sniper rifle. These soporific rounds are completely non-lethal, but render targets asleep for a little under a minute."
	ammo_type = /obj/item/shiptest_ammo_casing/p50/soporific
	max_ammo = 3

/obj/item/shiptest_ammo_box/magazine/sniper_rounds/penetrator
	name = "anti-material rifle magazine (.50 BMG penetrator)"
	desc = "A large, heavy 5-round box magazine designed for the sniper rifle. These penetrator rounds deal incredible damage and will penetrate most structures, though they don't knock down or delimb targets."
	ammo_type = /obj/item/shiptest_ammo_casing/p50/penetrator
	max_ammo = 5


/obj/item/shiptest_ammo_box/magazine/boomslang
	name = "\improper Boomslang Magazine (6.5mm)"
	desc = "A large 10-round box magazine for Boomslang sniper rifles. These rounds deal amazing damage and can pierce protective equipment, excluding armored vehicles."
	base_icon_state = "boomslang"
	icon_state = "boomslang-10"
	ammo_type = /obj/item/shiptest_ammo_casing/a65
	caliber = "6.5mm"
	max_ammo = 10
	multiple_sprites = AMMO_BOX_PER_BULLET

/obj/item/shiptest_ammo_box/magazine/boomslang/empty
	start_empty = TRUE

/obj/item/shiptest_ammo_box/magazine/boomslang/short
	name = "\improper Boomslang Magazine (6.5mm)"
	desc = "A 5-round box magazine for Boomslang sniper rifles. These rounds deal amazing damage and can pierce protective equipment, excluding armored vehicles."
	base_icon_state = "boomslang_short"
	icon_state = "boomslang_short-5"
	ammo_type = /obj/item/shiptest_ammo_casing/a65
	caliber = "6.5mm"
	max_ammo = 5
	multiple_sprites = AMMO_BOX_PER_BULLET

/obj/item/shiptest_ammo_box/magazine/boomslang/short/empty
	start_empty = TRUE

/obj/item/shiptest_ammo_box/magazine/m23
	name = "Model 23 magazine (8x50mmR)"
	desc = "A 5-round magazine for the Model 23 \"Woodsman\". These rounds do high damage, with excellent armor penetration."
	icon_state = "woodsman_mag-1"
	base_icon_state = "woodsman_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/a8_50r
	caliber = "8x50mmR"
	max_ammo = 5
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/shiptest_ammo_box/magazine/m23/empty
	start_empty = TRUE

/obj/item/shiptest_ammo_box/magazine/f90
	name = "\improper NT-F90 Magazine (6.5x57mm CLIP)"
	desc = "A large 6-round box magazine for the NT-F90 sniper rifles. These rounds deal amazing damage and bypass half of their protective equipment, though it isn't a high enough caliber to pierce armored vehicles."
	base_icon_state = "f90_mag"
	icon_state = "f90_mag-1"
	ammo_type = /obj/item/shiptest_ammo_casing/a65
	caliber = "6.5mm"
	max_ammo = 6

/obj/item/shiptest_ammo_box/magazine/f90/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[!!ammo_count()]"

/obj/item/shiptest_ammo_box/magazine/f90/empty
	start_empty = TRUE
