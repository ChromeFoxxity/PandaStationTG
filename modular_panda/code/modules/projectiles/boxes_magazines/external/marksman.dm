/obj/item/ammo_box/magazine/boomslang
	name = "\improper Boomslang Magazine (6.5mm)"
	desc = "A large 10-round box magazine for Boomslang sniper rifles. These rounds deal amazing damage and can pierce protective equipment, excluding armored vehicles."
	icon = 'modular_panda/icons/obj/weapons/ammo/magazine.dmi'
	base_icon_state = "boomslang"
	icon_state = "boomslang-10"
	ammo_type = /obj/item/ammo_casing/a65
	caliber = "6.5mm"
	max_ammo = 10
	multiple_sprites = AMMO_BOX_PER_BULLET
	multiple_sprite_use_base = TRUE

/obj/item/ammo_box/magazine/boomslang/empty
	icon_state = "boomslang-0"
	start_empty = TRUE

/obj/item/ammo_box/magazine/boomslang/short
	name = "\improper Boomslang Magazine (6.5mm)"
	desc = "A 5-round box magazine for Boomslang sniper rifles. These rounds deal amazing damage and can pierce protective equipment, excluding armored vehicles."
	base_icon_state = "boomslang_short"
	icon_state = "boomslang_short-5"
	ammo_type = /obj/item/ammo_casing/a65
	caliber = "6.5mm"
	max_ammo = 5
	multiple_sprites = AMMO_BOX_PER_BULLET
	multiple_sprite_use_base = TRUE

/obj/item/ammo_box/magazine/boomslang/short/empty
	icon_state = "boomslang_short-0"
	start_empty = TRUE

/obj/item/ammo_box/magazine/f4_308
	name = "\improper F4 Magazine (.308)"
	desc = "A standard 10-round magazine for F4 platform DMRs. These rounds do good damage with significant armor penetration."
	icon = 'modular_panda/icons/obj/weapons/ammo/magazine.dmi'
	icon_state = "gal_mag-full"
	base_icon_state = "gal_mag"
	ammo_type = /obj/item/ammo_casing/a308
	caliber = ".308"
	max_ammo = 10
	multiple_sprites = AMMO_BOX_FULL_EMPTY
	multiple_sprite_use_base = TRUE

/obj/item/ammo_box/magazine/f4_308/empty
	icon_state = "gal_mag-empty"
	start_empty = TRUE

/obj/item/ammo_box/magazine/f90
	name = "\improper NT-F90 Magazine (6.5x57mm)"
	desc = "A large 6-round box magazine for the NT-F90 sniper rifles. These rounds deal amazing damage and bypass half of their protective equipment, though it isn't a high enough caliber to pierce armored vehicles."
	icon = 'modular_panda/icons/obj/weapons/ammo/magazine.dmi'
	base_icon_state = "f90_mag"
	icon_state = "f90_mag-full"
	ammo_type = /obj/item/ammo_casing/a65
	caliber = "6.5mm"
	max_ammo = 6
	multiple_sprites = AMMO_BOX_FULL_EMPTY
	multiple_sprite_use_base = TRUE

/obj/item/ammo_box/magazine/f90/empty
	icon_state = "f90_mag-empty"
	start_empty = TRUE
