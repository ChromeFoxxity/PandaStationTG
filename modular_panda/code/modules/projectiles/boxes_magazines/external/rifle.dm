/obj/item/ammo_box/magazine/rifle47x33mm
	name = "\improper Solarian LMG magazine (4.73x33mm caseless)"
	desc = "A large, 50-round magazine for the Solar machine gun. These rounds do moderate damage with good armor penetration."
	icon = 'modular_panda/icons/obj/weapons/ammo/magazine.dmi'
	icon_state = "47x33mm-50"
	base_icon_state = "47x33mm"
	ammo_type = /obj/item/ammo_casing/caseless/c47x33mm
	caliber = "4.73x33mm caseless"
	max_ammo = 100 //brrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/ammo_box/magazine/rifle47x33mm/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[round(ammo_count(),5)]"

/obj/item/ammo_box/magazine/skm_46_30
	name = "subcaliber assault rifle magazine (4.6x30mm)"
	desc = "A slightly-curved, 30-round magazine for the SKM-24v. These rounds do okay damage with average performance against armor"
	icon = 'modular_panda/icons/obj/weapons/ammo/magazine.dmi'
	base_icon_state = "skmcarbine_mag"
	icon_state = "skmcarbine_mag-full"
	ammo_type = /obj/item/ammo_casing/c46x30mm
	caliber = "4.6x30mm"
	max_ammo = 30
	multiple_sprites = AMMO_BOX_FULL_EMPTY
	multiple_sprite_use_base = TRUE

/obj/item/ammo_box/magazine/skm_46_30/recycled
	ammo_type = /obj/item/ammo_casing/c46x30mm/recycled

/obj/item/ammo_box/magazine/skm_762_40
	name = "assault rifle magazine (7.62x40mm)"
	desc = "A slightly curved, 20-round magazine for the 7.62x40mm variants of the SKM assault rifle family. These rounds do good damage with good armor penetration."
	icon = 'modular_panda/icons/obj/weapons/ammo/magazine.dmi'
	base_icon_state = "skm_mag"
	icon_state = "skm_mag-full"
	ammo_type = /obj/item/ammo_casing/a762_40
	caliber = "7.62x40mm"
	max_ammo = 20
	multiple_sprites = AMMO_BOX_FULL_EMPTY
	multiple_sprite_use_base = TRUE

/obj/item/ammo_box/magazine/skm_762_40/empty
	icon_state = "skm_mag-empty"
	start_empty = TRUE

/obj/item/ammo_box/magazine/skm_762_40/extended
	name = "extended assault rifle magazine (7.62x40mm)"
	desc = "A very curved, 40-round magazine for the 7.62x40mm variants of the SKM assault rifle family. These rounds do good damage with good armor penetration."
	base_icon_state = "skm_extended_mag"
	icon_state = "skm_extended_mag-full"
	max_ammo = 40

/obj/item/ammo_box/magazine/skm_762_40/extended/empty
	icon_state = "skm_extended_mag-empty"
	start_empty = TRUE

/obj/item/ammo_box/magazine/skm_762_40/drum
	name = "assault rifle drum (7.62x40mm)"
	desc = "A 75-round drum for the 7.62x40mm variants of the SKM assault rifle family. These rounds do good damage with good armor penetration."
	base_icon_state = "skm_drum"
	icon_state = "skm_drum-full"
	max_ammo = 75
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/ammo_box/magazine/p16 //repath to /obj/item/ammo_box/magazine/generic_556 sometime
	name = "NT-82 magazine (5.56x42mm)"
	desc = "A simple, 30-round magazine for 5.56x42mm assault rifles. These rounds do moderate damage with good armor penetration."
	icon = 'modular_panda/icons/obj/weapons/ammo/magazine.dmi'
	icon_state = "p16_mag-full"
	base_icon_state = "p16_mag"
	ammo_type = /obj/item/ammo_casing/a556_42
	caliber = "5.56x42mm"
	max_ammo = 30
	multiple_sprites = AMMO_BOX_FULL_EMPTY
	multiple_sprite_use_base = TRUE

/obj/item/ammo_box/magazine/p16/empty
	icon_state = "p16_mag-empty"
	start_empty = TRUE

/obj/item/ammo_box/magazine/p16/extended
	name = "extended NT-82 magazine (5.56x42mm)"
	desc = "An extended magazine, with 45 rounds for 5.56x42mm assault rifles. These rounds do moderate damage with good armor penetration."
	icon_state = "p16_mag_extended-full"
	base_icon_state = "p16_mag_extended"
	ammo_type = /obj/item/ammo_casing/a556_42
	caliber = "5.56x42mm"
	max_ammo = 45

/obj/item/ammo_box/magazine/p16/extended/empty
	icon_state = "p16_mag_extended-empty"
	start_empty = TRUE

/obj/item/ammo_box/magazine/p16/casket
	name = "casket NT-82 magazine (5.56x42mm)"
	desc = "A casket magazine, with 60 rounds for 5.56x42mm assault rifles. These rounds do moderate damage with good armor penetration."
	icon_state = "p16_mag_casket-full"
	base_icon_state = "p16_mag_casket"
	ammo_type = /obj/item/ammo_casing/a556_42
	caliber = "5.56x42mm"
	max_ammo = 60
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/ammo_box/magazine/p16/casket/empty
	icon_state = "p16_mag_casket-empty"
	start_empty = TRUE

/obj/item/ammo_box/magazine/swiss
	name = "\improper Swiss Cheese Magazine (5.56x42mm)"
	desc = "A deft, 30-round magazine for the Swiss Cheese assault rifle. These rounds do moderate damage with good armor penetration."
	icon = 'modular_panda/icons/obj/weapons/ammo/magazine.dmi'
	icon_state = "swissmag-full"
	base_icon_state = "swissmag"
	ammo_type = /obj/item/ammo_casing/a556_42
	caliber = "5.56x42mm"
	max_ammo = 30
	multiple_sprites = AMMO_BOX_FULL_EMPTY
	multiple_sprite_use_base = TRUE

// 8x50mmR En Bloc Clip (Illestren Hunting Rifle)

/obj/item/ammo_box/magazine/illestren_a850r //this is a magazine codewise do nothing breaks
	name = "en bloc clip (8x50mmR)"
	desc = "A 5-round en bloc clip for the Illestren Hunting Rifle. These rounds do good damage with significant armor penetration."
	icon = 'modular_panda/icons/obj/weapons/ammo/magazine.dmi'
	icon_state = "enbloc_858"
	ammo_type = /obj/item/ammo_casing/a8_50r
	caliber = "8x50mmR"
	max_ammo = 5
	multiple_sprites = AMMO_BOX_PER_BULLET
	multiple_sprite_use_base = TRUE
	w_class = WEIGHT_CLASS_TINY
	custom_materials = list(/datum/material/iron = 500)

/obj/item/ammo_box/magazine/illestren_a850r/empty
	start_empty = TRUE

/obj/item/ammo_box/magazine/python_box
	name = "Python drum magazine (5.56x42mm)"
	desc = "A 90 round drum magazine for SAW-90 Python. These rounds do good damage with good armor penetration."
	icon = 'modular_panda/icons/obj/weapons/ammo/magazine.dmi'
	base_icon_state = "python_mag"
	icon_state = "python_mag-full"
	ammo_type = /obj/item/ammo_casing/a556_42
	caliber = "5.56x42mm"
	max_ammo = 90
	w_class = WEIGHT_CLASS_NORMAL
	multiple_sprites = AMMO_BOX_FULL_EMPTY
	multiple_sprite_use_base = TRUE

/obj/item/ammo_box/magazine/python_box/empty
	icon_state = "python_mag-empty"
	start_empty = TRUE

/obj/item/ammo_box/magazine/m556_42_hydra
	name = "Hydra assault rifle magazine (5.56x42mm)"
	desc = "A simple, 30-round magazine for the Hydra platform of 5.56x42mm assault rifles. These rounds do moderate damage with good armor penetration."
	icon = 'modular_panda/icons/obj/weapons/ammo/magazine.dmi'
	icon_state = "hydra_mag-30"
	base_icon_state = "hydra_mag"
	ammo_type = /obj/item/ammo_casing/a556_42
	caliber = "5.56x42mm"
	max_ammo = 30

/obj/item/ammo_box/magazine/m556_42_hydra/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[round(ammo_count(),5)]"

/obj/item/ammo_box/magazine/m556_42_hydra/empty
	icon_state = "hydra_mag-0"
	start_empty = TRUE

/obj/item/ammo_box/magazine/m556_42_hydra/small
	name = "Short Hydra assault rifle magazine (5.56x42mm)"
	desc = "A short, 20-round magazine for the Hydra platform of 5.56x42mm assault rifles; intended for the DMR variant. These rounds do moderate damage with good armor penetration."
	icon_state = "hydra_small_mag-20"
	base_icon_state = "hydra_small_mag"
	max_ammo = 20

/obj/item/ammo_box/magazine/m556_42_hydra/small/empty
	icon_state = "hydra_small_mag-0"
	start_empty = TRUE

/obj/item/ammo_box/magazine/m556_42_hydra/extended
	name = "extended Hydra assault rifle magazine (5.56x42mm)"
	desc = "A bulkier, 60-round magazine for the Hydra platform of 5.56x42mm assault rifles. These rounds do moderate damage with good armor penetration."
	icon_state = "hydra_extended_mag-full"
	base_icon_state = "hydra_extended_mag"
	max_ammo = 60
	multiple_sprites = AMMO_BOX_FULL_EMPTY
	multiple_sprite_use_base = TRUE

/obj/item/ammo_box/magazine/m556_42_hydra/extended/empty
	icon_state = "hydra_extended_mag-empty"
	start_empty = TRUE

/obj/item/ammo_box/magazine/m556_42_hydra/casket
	name = "casket Hydra assault rifle magazine (5.56x42mm)"
	desc = "A very long and bulky 100-round magazine for the Hydra platform of 5.56x42mm assault rifles. These rounds do moderate damage with good armor penetration."
	icon_state = "hydra_casket_mag-full"
	base_icon_state = "hydra_casket_mag"
	max_ammo = 100
	multiple_sprites = AMMO_BOX_FULL_EMPTY
	multiple_sprite_use_base = TRUE
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/ammo_box/magazine/nt40_762_40_box
	name = "NT-40 box magazine (7.62x40mm)"
	desc = "An 80 round box magazine for NT-40 light machine gun. These rounds do good damage with good armor penetration."
	icon = 'modular_panda/icons/obj/weapons/ammo/magazine.dmi'
	base_icon_state = "cm40_mag"
	icon_state = "cm40_mag-full"
	ammo_type = /obj/item/ammo_casing/a762_40
	caliber = "7.62x40mm"
	max_ammo = 80
	multiple_sprites = AMMO_BOX_FULL_EMPTY
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/ammo_box/magazine/nt40_762_40_box/empty
	icon_state = "cm40_mag-empty"
	start_empty = TRUE
