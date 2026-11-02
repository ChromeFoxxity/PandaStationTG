//########### PISTOLS ###########//
/obj/item/gun/ballistic/modular/automatic/pistol
	abstract_type = /obj/item/gun/ballistic/modular/automatic/pistol
	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/back.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_righthand.dmi'
	bolt_type = BOLT_TYPE_LOCKING
	w_class = WEIGHT_CLASS_NORMAL
	vary_fire_sound = FALSE
	fire_sound_volume = 90
	bolt_wording = "slide"
	burst_size = 1
	fire_delay = 0 SECONDS
	actions_types = list()
	weapon_weight = WEAPON_LIGHT
	pickup_sound =  'modular_panda/sound/items/handling/gun_pickup.ogg'
	recoil_backtime_multiplier = 1
	spread = 5

/obj/item/gun/ballistic/modular/automatic/pistol/candor
	name = "\improper Candor"
	desc = "A classic semi-automatic handgun, widely popular throughout the Spinward Sector. An engraving on the slide marks it as a product of Bastion Armaments. Chambered in .45 ACP."
	icon_state = "candor"
	inhand_icon_state = "sa_generic"
	accepted_magazine_type = /obj/item/ammo_box/magazine/m45
	fire_sound = 'modular_panda/sound/weapons/gun/pistol/candor.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/pistol/candor_cocked.ogg'
	lock_back_sound = 'modular_panda/sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/pistol/candor_cocked.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/pistol/candor_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/pistol/candor_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/pistol/candor_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/pistol/candor_unload.ogg'

/obj/item/gun/ballistic/modular/automatic/pistol/candor/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_BASTION)

/obj/item/gun/ballistic/modular/automatic/pistol/ringneck
	name = "PC-76 \"Ringneck\""
	desc = "A compact handgun used by most Syndicate-affiliated groups. Small enough to conceal in most pockets, making it popular for covert elements and simply as a compact defensive weapon. Chambered in 10mm."
	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/back.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_righthand.dmi'
	icon_state = "ringneck"
	inhand_icon_state = "sa_generic"
	w_class = WEIGHT_CLASS_SMALL
	accepted_magazine_type = /obj/item/ammo_box/magazine/m10mm_ringneck
	fire_sound = 'modular_panda/sound/weapons/gun/pistol/shot.ogg'
	dry_fire_sound = 'modular_panda/sound/weapons/gun/pistol/dry_fire.ogg'
	suppressed_sound = 'modular_panda/sound/weapons/gun/pistol/shot_suppressed.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert_alt.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert_alt.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release_alt.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release_alt.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/pistol/rack_small.ogg'
	lock_back_sound = 'modular_panda/sound/weapons/gun/pistol/lock_small.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/pistol/drop_small.ogg'

	spread = 6 //becuase its compact, spread is slightly worse

/obj/item/gun/ballistic/modular/automatic/pistol/ringneck/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/gun/ballistic/modular/automatic/pistol/ringneck/indie
	name = "Ringneck-76"
	desc = "A service handgun popular among law enforcement, mercenaries, and independent spacers with discerning tastes. Chambered in 10mm."
	icon_state = "ringneck76"
	inhand_icon_state = "sa_indie"
	w_class = WEIGHT_CLASS_NORMAL
	spread = 5 //this one is normal sized, thus in theory its better, in theory at least

/obj/item/gun/ballistic/modular/automatic/pistol/asp
	name = "BC-81 \"Asp\""
	desc = "An armor-piercing combat handgun used by Syndicate strike teams, now primarily used by operatives of the Gorlex Marauders. Chambered in 5.7x39mm."
	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/back.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_righthand.dmi'
	icon_state = "asp"
	inhand_icon_state = "sa_generic"
	accepted_magazine_type = /obj/item/ammo_box/magazine/m57_39_asp
	fire_sound = 'modular_panda/sound/weapons/gun/pistol/asp.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/pistol/rack.ogg'
	lock_back_sound = 'modular_panda/sound/weapons/gun/pistol/lock_small.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/pistol/drop_small.ogg'
	recoil = 0.8
	spread = 6

/obj/item/gun/ballistic/modular/automatic/pistol/asp/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/gun/ballistic/modular/automatic/pistol/rattlesnake
	name = "MP-84 \"Rattlesnake\""
	desc = "A machine pistol, used by Syndicate infiltrators and special forces back then, nowadays it's used as a weapon to be a reliable sidearm for combative personnel. Chambered in 9mm."
	icon_state = "rattlesnake"
	inhand_icon_state = "rattlesnake"
	accepted_magazine_type = /obj/item/ammo_box/magazine/m9mm_rattlesnake
	fire_sound = 'modular_panda/sound/weapons/gun/pistol/rattlesnake.ogg'
	dry_fire_sound = 'modular_panda/sound/weapons/gun/pistol/dry_fire.ogg'
	suppressed_sound = 'modular_panda/sound/weapons/gun/pistol/shot_suppressed.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert_alt.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert_alt.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release_alt.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release_alt.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/pistol/rack_small.ogg'
	lock_back_sound = 'modular_panda/sound/weapons/gun/pistol/lock_small.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/pistol/drop_small.ogg'
	recoil = 0.5
	burst_size = 3
	burst_delay = 2
	fire_delay = 2
	spread = 8
	actions_types = list(/datum/action/item_action/toggle_firemode)
	burst_fire_selection = TRUE

/obj/item/gun/ballistic/modular/automatic/pistol/rattlesnake/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.4 SECONDS)

/obj/item/gun/ballistic/modular/automatic/pistol/rattlesnake/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/gun/ballistic/modular/automatic/pistol/rattlesnake/cottonmouth
	name = "MP-84m Cottonmouth"
	desc = "A machine pistol obtained from Marauder stockpiles and heavily modified to accept a larger calibre, with a few largely-ignored drawbacks of 2-round burst and magazine capacity. Chambered in 10mm."
	icon_state = "cottonmouth"
	inhand_icon_state = "cottonmouth"
	fire_sound = 'modular_panda/sound/weapons/gun/pistol/asp.ogg'
	accepted_magazine_type = /obj/item/ammo_box/magazine/m10mm_cottonmouth
	recoil = 1
	burst_size = 2
	burst_delay = 3
	fire_delay = 3
	spread = 10

/obj/item/gun/ballistic/modular/automatic/pistol/rattlesnake/cottonmouth/Initialize(mapload)
	. = ..()

/obj/item/gun/ballistic/modular/automatic/pistol/himehabu
	name = "PC-81 \"Himehabu\""
	desc = "An astonishingly compact machine pistol firing ultra-light projectiles, designed to be as small and concealable as possible while remaining a credible threat at very close range. Armor penetration is practically non-existent. Chambered in .22."
	icon_state = "himehabu"
	inhand_icon_state = "sa_generic"
	w_class = WEIGHT_CLASS_TINY
	accepted_magazine_type = /obj/item/ammo_box/magazine/m22lr_himehabu
	fire_sound = 'modular_panda/sound/weapons/gun/pistol/himehabu.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert_alt.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert_alt.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release_alt.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release_alt.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/pistol/rack_small.ogg'
	lock_back_sound = 'modular_panda/sound/weapons/gun/pistol/lock_small.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/pistol/drop_small.ogg'
	spread = 3
	recoil = 0.5

/obj/item/gun/ballistic/modular/automatic/pistol/himehabu/rubber
	spawn_magazine_type = /obj/item/ammo_box/magazine/m22lr_himehabu/rubber

/obj/item/gun/ballistic/modular/automatic/pistol/himehabu/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/gun/ballistic/modular/automatic/pistol/derringer
	name = "BA Spark"
	desc = "An easily concealable derringer. Its simple design and modest demand make the Spark a common project for trainee Bastion Armaments gunsmiths. Chambered in .38."
	icon_state = "derringer"
	inhand_icon_state = "hp_generic"
	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/derr38
	fire_sound = 'modular_panda/sound/weapons/gun/revolver/shot.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/revolver/load_bullet.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/revolver/empty.ogg'
	fire_sound_volume = 60
	dry_fire_sound = 'modular_panda/sound/weapons/gun/revolver/dry_fire.ogg'
	casing_ejector = FALSE
	internal_magazine = TRUE
	bolt_type = BOLT_TYPE_NO_BOLT
	tac_reloads = FALSE
	w_class = WEIGHT_CLASS_TINY

/obj/item/gun/ballistic/modular/automatic/pistol/derringer/get_ammo(countchambered = FALSE, countempties = TRUE)
	var/boolets = 0 //legacy var name maturity
	if (chambered && countchambered)
		boolets++
	if (magazine)
		boolets += magazine.ammo_count(countempties)
	return boolets

/obj/item/gun/ballistic/modular/automatic/pistol/derringer/examine(mob/user)
	. = ..()
	var/live_ammo = get_ammo(FALSE, FALSE)
	. += "[live_ammo ? live_ammo : "None"] of those are live rounds."

/obj/item/gun/ballistic/modular/automatic/pistol/derringer/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_BASTION)

/obj/item/gun/ballistic/modular/automatic/pistol/derringer/gold
	name = "golden derringer"
	desc = "The golden sheen is somewhat counter-intuitive on a holdout weapon, but it looks cool. Uses .357 ammo."
	icon_state = "derringer_gold"
	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/derr357

/obj/item/gun/ballistic/modular/automatic/pistol/derringer/temblor
	name = "D-9 \"Temblor\""
	desc = "An easily concealable derriger. It was rarely used as an alternative to the PC-81 \"Himehabu\" during covert operations, but nowadays is just issued to civilian-station heads of staff for self-defense. Chambered in .357."
	icon_state = "derringer_syndie"
	inhand_icon_state = "sa_generic"
	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/derr357
	fire_sound_volume = 50 //Tactical stealth firing

/obj/item/gun/ballistic/modular/automatic/pistol/derringer/temblor/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/gun/ballistic/modular/automatic/pistol/nt23
	name = "\improper NT-23"
	desc = "Nanotrasen's standard service pistol. 10 rounds of 10mm ammunition make the NT-23 deadlier than many other service pistols, but its weight and bulk have made it unpopular as a sidearm. It has largely been phased out outside of security officers on Nanotrasen civilian-class stations in the Spinward Sector. Chambered in 10mm."
	icon_state = "nt23"
	inhand_icon_state = "nt_generic"
	w_class = WEIGHT_CLASS_NORMAL
	accepted_magazine_type = /obj/item/ammo_box/magazine/nt23
	fire_sound = 'modular_panda/sound/weapons/gun/pistol/cm23.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/pistol/candor_cocked.ogg'
	lock_back_sound = 'modular_panda/sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/pistol/slide_drop.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/pistol/candor_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/pistol/candor_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/pistol/candor_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/pistol/candor_unload.ogg'

/obj/item/gun/ballistic/modular/automatic/pistol/nt23/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)

/obj/item/gun/ballistic/modular/automatic/pistol/nt70
	name = "NT-70 machine pistol"
	desc = "A compact machine pistol designed to rapidly fire 9mm ammo. Popular with officers and certain specialized units, the NT-70 is incredibly dangerous at close range. Chambered in 9mm."
	icon_state = "nt70"
	inhand_icon_state = "nt_generic"
	accepted_magazine_type = /obj/item/ammo_box/magazine/m9mm_nt70
	burst_size = 1
	fire_delay = 1
	recoil = 0.8
	spread = 8
	fire_sound = 'modular_panda/sound/weapons/gun/pistol/cm70.ogg'
	actions_types = list(/datum/action/item_action/toggle_firemode)

/obj/item/gun/ballistic/modular/automatic/pistol/nt70/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.3 SECONDS)

/obj/item/gun/ballistic/modular/automatic/pistol/nt70/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)

/obj/item/gun/ballistic/modular/automatic/pistol/nt357
	name = "\improper NT-357"
	desc = "A powerful semi-automatic handgun designed for Nanotrasen's security for megafauna removal, as standard handguns had proven ineffective as backup weapons. The heft and power of the weapon have made it a status symbol among the few Nanotrasen officers able to requisition one. Chambered in .357."
	icon_state = "nt357"
	inhand_icon_state = "nt_generic"
	w_class = WEIGHT_CLASS_NORMAL
	accepted_magazine_type = /obj/item/ammo_box/magazine/nt357
	fire_sound = 'modular_panda/sound/weapons/gun/pistol/deagle.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/pistol/candor_cocked.ogg'
	lock_back_sound = 'modular_panda/sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/pistol/slide_drop.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/pistol/candor_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/pistol/candor_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/pistol/candor_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/pistol/candor_unload.ogg'
	recoil = 0.5

/obj/item/gun/ballistic/modular/automatic/pistol/nt357/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)
