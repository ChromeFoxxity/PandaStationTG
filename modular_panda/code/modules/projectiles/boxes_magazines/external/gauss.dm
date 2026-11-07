/obj/item/shiptest_ammo_box/magazine/cs_gauss
	name = "gauss box (2x15mm Tav'Sha)"
	desc = "A stamped 50-round magazine combined with a limited-use cell. \"PLEASE RECYCLE ME :)\" is engraved into the flip-side. 2x15mm Tav'Sha does low damage and relies on volume of fire."
	icon_state = "convergence_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/caseless/gauss/tavsha
	caliber = "no"
	max_ammo = 50
	multiple_sprites = AMMO_BOX_FULL_EMPTY
	sealed = TRUE
	quick_empty = FALSE
	custom_materials = list(/datum/material/iron = 500)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/shiptest_ammo_box/magazine/cs_gauss/pistol
	name = "gauss box (2x15mm Tav'Sha)"
	desc = "A stamped 30-round magazine combined with a limited-use cell. \"PLEASE RECYCLE ME :3\" is engraved into the flip-side. 2x15mm Tav'Sha does low damage and relies on volume of fire."
	icon_state = "rectifier_mag"
	caliber = "loading"
	max_ammo = 30
	multiple_sprites = AMMO_BOX_FULL_EMPTY
	w_class = WEIGHT_CLASS_SMALL

/obj/item/shiptest_ammo_box/magazine/cs_gauss/pistol/empty
	start_empty = TRUE

/obj/item/shiptest_ammo_box/magazine/cs_gauss/rifle
	name = "gauss box (3x20mm Deu'Sha)"
	desc = "A stamped 40-round magazine combined with a limited-use cell. \"PLEASE RECYCLE ME :)\" is engraved into the flip-side. 3x20mm Deu'Sha does low damage and relies on volume of fire."
	icon_state = "vector_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/caseless/gauss/deusha
	caliber = "these"
	max_ammo = 40
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/shiptest_ammo_box/magazine/cs_gauss/rifle/empty
	start_empty = TRUE
