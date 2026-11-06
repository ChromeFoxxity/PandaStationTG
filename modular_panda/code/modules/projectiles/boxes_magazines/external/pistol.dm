/obj/item/shiptest_ammo_box/magazine/m44
	name = "pistol magazine (.44)"
	desc = "A 10-round single-stack magazine for the Candor pistol. These rounds do moderate damage, but struggle against armor."
	icon_state = "candor_mag-8"
	base_icon_state = "candor_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/a44sol
	caliber = ".44 Solarian"
	max_ammo = 10

/obj/item/shiptest_ammo_box/magazine/m44/empty
	start_empty = TRUE


/obj/item/shiptest_ammo_box/magazine/m44/hp
	name = "pistol magazine (.44 HP)"
	desc= "A 10-round single-stack magazine for the Candor pistol. These hollow point rounds do incredible damage against soft targets, but are nearly ineffective against armored ones."
	ammo_type = /obj/item/shiptest_ammo_casing/a44sol/hp

/obj/item/shiptest_ammo_box/magazine/m44/rubber
	name = "pistol magazine (.44 rubber)"
	desc = "A 10-round single-stack magazine for the Candor pistol. These rubber rounds trade lethality for a heavy impact which can incapacitate targets. Performs even worse against armor."
	ammo_type = /obj/item/shiptest_ammo_casing/a44sol/rubber

/obj/item/shiptest_ammo_box/magazine/m44/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[min(ammo_count(), 8)]"

/obj/item/shiptest_ammo_box/magazine/pistol556mm
	name = "Pistole C magazine (5.56mm HITP caseless)"
	desc = "A 12-round, double-stack magazine for the Pistole C pistol. These rounds do okay damage with average performance against armor."
	icon_state = "pistolec_mag-12" //ok i did it
	base_icon_state = "pistolec_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/caseless/c556mm
	caliber = "5.56mm caseless"
	max_ammo = 12

/obj/item/shiptest_ammo_box/magazine/pistol556mm/update_icon_state()
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

/obj/item/shiptest_ammo_box/magazine/pistol556mm/empty
	start_empty = TRUE

/obj/item/shiptest_ammo_box/magazine/disposable
	name = "part of a disposable gun"
	desc = "Somehow, you ripped out part of the gun, rendering it unusable. Good job!"
	icon_state = "himehabu_mag-10"
	base_icon_state = "himehabu_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/c22lr
	caliber = ".22lr"
	max_ammo = 10
	w_class = WEIGHT_CLASS_TINY

/obj/item/shiptest_ammo_box/magazine/zip_ammo_9mm
	name = "budget pistol magazine (9mm)"
	desc = "A cheaply-made, 8-round surplus magazine that fits standard-issue 9mm pistols. These rounds do okay damage, but struggle against armor."
	icon_state = "zip_mag-1"
	base_icon_state = "zip_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/c9mm/surplus
	caliber = "9mm"
	max_ammo = 8
	custom_materials = list(/datum/material/iron = 20000)

/obj/item/shiptest_ammo_box/magazine/zip_ammo_9mm/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[min(ammo_count(), 1)]"

/obj/item/shiptest_ammo_box/magazine/co9mm
	name = "challenger pistol magazine (9mm)"
	desc = "A 12-round double-stack magazine for challenger pistols. This is also compatable with the Champion machine pistol. These rounds do okay damage, but struggle against armor."
	icon_state = "commander_mag-12"
	base_icon_state = "commander_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/c9mm
	caliber = "9mm"
	max_ammo = 12
	multiple_sprites = AMMO_BOX_PER_BULLET

/obj/item/shiptest_ammo_box/magazine/co9mm/hp
	name = "pistol magazine (9mm HP)"
	desc= "A 12-round double-stack magazine for standard-issue 9mm pistols. These hollow point rounds do significant damage against soft targets, but are nearly ineffective against armored ones."
	ammo_type = /obj/item/shiptest_ammo_casing/c9mm/hp

/obj/item/shiptest_ammo_box/magazine/co9mm/ap
	name = "pistol magazine (9mm AP)"
	desc= "A 12-round double-stack magazine for standard-issue 9mm pistols. These armor-piercing rounds are okay at piercing protective equipment, but lose some stopping power."
	ammo_type = /obj/item/shiptest_ammo_casing/c9mm/ap

/obj/item/shiptest_ammo_box/magazine/co9mm/rubber
	name = "pistol magazine (9mm rubber)"
	desc = "A 12-round double-stack magazine for standard-issue 9mm pistols. These rubber rounds trade lethality for a heavy impact which can incapacitate targets. Performs even worse against armor."
	ammo_type = /obj/item/shiptest_ammo_casing/c9mm/rubber

/obj/item/shiptest_ammo_box/magazine/co9mm/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[ammo_count() == 1 ? 1 : round(ammo_count(),2)]"

/obj/item/shiptest_ammo_box/magazine/co9mm/empty
	start_empty = TRUE

/obj/item/shiptest_ammo_box/magazine/m10mm_ringneck
	name = "Ringneck pistol magazine (10mm)"
	desc = "An 10-round magazine for the Ringneck pistol. These rounds do moderate damage, but struggle against armor."
	icon_state = "ringneck_mag-1"
	base_icon_state = "ringneck_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/c10mm
	caliber = "10mm"
	max_ammo = 10
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/shiptest_ammo_box/magazine/m10mm_ringneck/empty
	start_empty = TRUE

/obj/item/shiptest_ammo_box/magazine/m57_39_asp
	name = "Asp magazine (5.7x39mm)"
	desc = "A 12-round, double-stack magazine for the Asp pistol. These rounds do okay damage with average performance against armor."
	icon_state = "asp_mag-12"
	base_icon_state = "asp_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/c57x39mm
	caliber = "5.7x39mm"
	max_ammo = 12

/obj/item/shiptest_ammo_box/magazine/m57_39_asp/update_icon_state()
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

/obj/item/shiptest_ammo_box/magazine/m57_39_asp/empty
	start_empty = TRUE

/obj/item/shiptest_ammo_box/magazine/m9mm_rattlesnake
	name = "Rattlesnake magazine (9mm)"
	desc = "A long, 18-round double-stack magazine designed for the Rattlesnake machine pistol. These rounds do okay damage, but struggle against armor."
	icon_state = "rattlesnake_mag_18"
	base_icon_state = "rattlesnake_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/c9mm
	caliber = "9mm"
	max_ammo = 18
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/shiptest_ammo_box/magazine/m9mm_rattlesnake/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]_[ammo_count() == 1 ? 1 : round(ammo_count(),3)]"

/obj/item/shiptest_ammo_box/magazine/m9mm_rattlesnake/empty
	start_empty = TRUE

/obj/item/shiptest_ammo_box/magazine/m10mm_cottonmouth
	name = "Cottonmouth magazine (10mm)"
	desc = "A long, 14-round double-stack magazine designed for the Cottonmouth modified machine pistol. These rounds do moderate damage, but struggle against armor."
	icon_state = "rattlesnake_mag_18"
	base_icon_state = "rattlesnake_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/c10mm
	caliber = "10mm"
	max_ammo = 14
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/shiptest_ammo_box/magazine/m10mm_cottonmouth/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]_[ammo_count() == 1 ? 1 : round(ammo_count(),3)]"

/obj/item/shiptest_ammo_box/magazine/m10mm_cottonmouth/empty
	start_empty = TRUE

/obj/item/shiptest_ammo_box/magazine/m22lr_himehabu
	name = "pistol magazine (.22 LR)"
	desc = "A single-stack handgun magazine designed to chamber .22 LR. It's rather tiny, all things considered."
	icon_state = "himehabu_mag-10"
	base_icon_state = "himehabu_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/c22lr
	caliber = "22lr"
	max_ammo = 10
	w_class = WEIGHT_CLASS_TINY
	multiple_sprites = AMMO_BOX_PER_BULLET

/obj/item/shiptest_ammo_box/magazine/m22lr_himehabu/empty
	start_empty = TRUE

/obj/item/shiptest_ammo_box/magazine/m17
	name = "Model 17 magazine (.22lr)"
	desc = "A 10-round magazine for the Model 17 \"Micro Target\". These rounds do okay damage with awful performance against armor."
	icon_state = "m17_mag-1"
	base_icon_state = "m17_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/c22lr
	caliber = "22lr"
	max_ammo = 10
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/shiptest_ammo_box/magazine/m17/empty
	start_empty = TRUE

/obj/item/shiptest_ammo_box/magazine/m20_auto_elite
	name = "Model 20 magazine (.44 Solarian)"
	desc = "A nine-round magazine designed for the Model 20 pistol. These rounds do good damage, and fare better against armor."
	icon_state = "cm23_mag-1"
	base_icon_state = "cm23_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/a44sol
	caliber = ".44 Solarian"
	max_ammo = 9
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/shiptest_ammo_box/magazine/m20_auto_elite/empty
	start_empty = TRUE

/obj/item/shiptest_ammo_box/magazine/m9mm_mauler
	name = "mauler pistol magazine (9mm)"
	desc = "A 10-round magazine designed for the Mauler pistol."
	icon_state = "mauler_mag-1"
	base_icon_state = "mauler_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/c9mm
	caliber = "9mm"
	max_ammo = 10

/obj/item/shiptest_ammo_box/magazine/m9mm_mauler/extended
	name = "mauler machine pistol extended magazine (9mm)"
	desc = "A 18-round magazine designed for the Mauler machine pistol."
	icon_state = "mauler_extended_mag-1"
	base_icon_state = "mauler_extended_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/c9mm
	caliber = "9mm"
	max_ammo = 18

/obj/item/shiptest_ammo_box/magazine/m9mm_mauler/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[!!ammo_count()]"

/obj/item/shiptest_ammo_box/magazine/spitter_9mm
	name = "spitter pistol magazine (9mm)"
	desc = "A thin 30-round magazine for the Spitter submachine gun."
	icon_state = "spitter_mag-1"
	base_icon_state = "spitter_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/c9mm
	caliber = "9mm"
	max_ammo = 30

/obj/item/shiptest_ammo_box/magazine/spitter_9mm/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[!!ammo_count()]"

/obj/item/shiptest_ammo_box/magazine/m10mm_nt23
	name = "NT-23 pistol magazine (10mm)"
	desc = "An 10-round magazine magazine designed for the NT-23 pistol. These rounds do moderate damage, but struggle against armor."
	icon_state = "cm23_mag-1"
	base_icon_state = "cm23_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/c10mm
	caliber = "10mm"
	max_ammo = 10

/obj/item/shiptest_ammo_box/magazine/m10mm_nt23/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[!!ammo_count()]"

/obj/item/shiptest_ammo_box/magazine/m10mm_nt23/empty
	start_empty = TRUE

/obj/item/shiptest_ammo_box/magazine/m9mm_nt70
	name = "NT-70 machine pistol magazine (9mm)"
	desc = "A 18-round magazine designed for the NT-70 machine pistol. These rounds do okay damage, but struggle against armor."
	icon_state = "cm70_mag_18"
	base_icon_state = "cm70_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/c9mm
	caliber = "9mm"
	max_ammo = 18

/obj/item/shiptest_ammo_box/magazine/m9mm_nt70/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]_[ammo_count() == 1 ? 1 : round(ammo_count(),3)]"

/obj/item/shiptest_ammo_box/magazine/m9mm_nt70/empty
	start_empty = TRUE

/obj/item/shiptest_ammo_box/magazine/nt357
	name = "NT-357 pistol magazine (.357)"
	desc = "A 7-round magazine designed for the NT-357 pistol. These rounds do good damage, but struggle against armor."
	icon_state = "cm23_mag-1"
	base_icon_state = "cm23_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/a357
	caliber = ".357"
	max_ammo = 7
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/shiptest_ammo_box/magazine/nt357/empty
	start_empty = TRUE
