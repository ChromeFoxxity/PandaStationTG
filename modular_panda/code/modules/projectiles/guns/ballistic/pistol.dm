//########### PISTOLS ###########//

/obj/item/gun/ballistic/automatic/pistol/m1911
	icon = 'modular_panda/icons/obj/weapons/guns/guns.dmi'
	inhand_icon_state = "colt"
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_righthand.dmi'

/obj/item/gun/ballistic/automatic/pistol/ringneck
	name = "PC-76 \"Ringneck\""
	desc = "A compact handgun used by most Syndicate-affiliated groups. Small enough to conceal in most pockets, making it popular for covert elements and simply as a compact defensive weapon. Chambered in 10mm."

	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	worn_icon = 'modular_panda/icons/obj/clothing/back.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/scarborough_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/scarborough_righthand.dmi'
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

/obj/item/gun/ballistic/automatic/pistol/ringneck/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/gun/ballistic/automatic/pistol/ringneck/indie
	name = "Ringneck-76"
	desc = "A service handgun popular among law enforcement, mercenaries, and independent spacers with discerning tastes. Chambered in 10mm."

	icon_state = "ringneck76"
	inhand_icon_state = "sa_indie"

	w_class = WEIGHT_CLASS_NORMAL

	spread = 5 //this one is normal sized, thus in theory its better, in theory at least

/obj/item/gun/ballistic/automatic/pistol/asp
	name = "BC-81 \"Asp\""
	desc = "An armor-piercing combat handgun used by Syndicate strike teams, now primarily used by operatives of the Gorlex Marauders. Chambered in 5.7x39mm."

	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	worn_icon = 'modular_panda/icons/obj/clothing/back.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/scarborough_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/scarborough_righthand.dmi'
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

/obj/item/gun/ballistic/automatic/pistol/asp/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/gun/ballistic/revolver/viper
	name = "R-23 \"Viper\""
	desc = "An imposing revolver used by officers and certain agents of Syndicate member factions, favored by captains and high-ranking officers of the Syndicate. Chambered in .357 Magnum."

	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	worn_icon = 'modular_panda/icons/obj/clothing/back.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/scarborough_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/scarborough_righthand.dmi'
	icon_state = "viper"
	inhand_icon_state = "sa_generic"

	fire_sound = 'modular_panda/sound/weapons/gun/revolver/viper.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/revolver/viper_prime.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/revolver/load_bullet.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/revolver/empty.ogg'

	dry_fire_sound = 'modular_panda/sound/weapons/gun/revolver/dry_fire.ogg'

	fire_delay = 0.35 SECONDS

	spread = 3
	recoil = 1

/obj/item/gun/ballistic/revolver/viper/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/gun/ballistic/revolver/viper/indie
	name = "Viper-23"
	desc = "A powerful bull-barrel revolver. Very popular among mercenaries and the occasional well-to-do spacer or pirate for its flashy appearance and powerful cartridge. Chambered in .357 Magnum."

	icon_state = "viper23"
	inhand_icon_state = "viper23"

	spread = 5

	obj_flags = UNIQUE_RENAME

// Viper special skins
/datum/atom_skin/viper_revolver
	abstract_type = /datum/atom_skin/viper_revolver
	change_base_icon_state = TRUE

/datum/atom_skin/viper_revolver/default
	preview_name = "Default"
	new_icon_state = "viper23"

/datum/atom_skin/viper_revolver/pickle
	preview_name = "Pickle"
	new_icon_state = "viper23_pickle"

/datum/atom_skin/viper_revolver/magnate
	preview_name = "Magnate's Daily"
	new_icon_state = "viper23_classy"

/datum/atom_skin/viper_revolver/intranet
	preview_name = "Intranet Defender"
	new_icon_state = "viper23_rilena"

/datum/atom_skin/viper_revolver/cheap
	preview_name = "Cheap Deal"
	new_icon_state = "viper23_trash"

/datum/atom_skin/viper_revolver/merc
	preview_name = "Merc's Best Friend"
	new_icon_state = "viper23_larp"

/datum/atom_skin/viper_revolver/rancher
	preview_name = "Rancher"
	new_icon_state = "viper23_cowboy"

/obj/item/gun/ballistic/revolver/viper/indie/setup_reskins()
	AddComponent(/datum/component/reskinable_item, /datum/atom_skin/viper_revolver)

/obj/item/gun/ballistic/automatic/pistol/rattlesnake
	name = "MP-84 \"Rattlesnake\""
	desc = "A machine pistol, used by Syndicate infiltrators and special forces back then, nowadays it's used as a weapon to be a reliable sidearm for combative personnel. Chambered in 9mm."

	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	worn_icon = 'modular_panda/icons/obj/clothing/back.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/scarborough_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/scarborough_righthand.dmi'
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

	burst_size = 3
	burst_delay = 0.1 SECONDS
	fire_delay = 0.07 SECONDS
	actions_types = list(/datum/action/item_action/toggle_firemode)

/obj/item/gun/ballistic/automatic/pistol/rattlesnake/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/gun/ballistic/automatic/pistol/rattlesnake/cottonmouth
	name = "MP-84m Cottonmouth"
	desc = "A machine pistol obtained from Marauder stockpiles and heavily modified to accept a larger calibre, with a few largely-ignored drawbacks of 2-round burst and magazine capacity. Chambered in 10mm."

	icon_state = "cottonmouth"
	inhand_icon_state = "cottonmouth"

	fire_sound = 'modular_panda/sound/weapons/gun/pistol/asp.ogg'

	accepted_magazine_type = /obj/item/ammo_box/magazine/m10mm_cottonmouth

	recoil = 0.5
	burst_size = 2
	burst_delay = 0.07 SECONDS
	fire_delay = 0.1 SECONDS
	actions_types = list(/datum/action/item_action/toggle_firemode)

/obj/item/gun/ballistic/automatic/pistol/himehabu
	name = "PC-81 \"Himehabu\""
	desc = "An astonishingly compact machine pistol firing ultra-light projectiles, designed to be as small and concealable as possible while remaining a credible threat at very close range. Armor penetration is practically non-existent. Chambered in .22."

	icon_state = "himehabu"
	inhand_icon_state = "sa_generic"

	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	worn_icon = 'modular_panda/icons/obj/clothing/back.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/scarborough_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/scarborough_righthand.dmi'


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

	spread = -2
	recoil = -2

/obj/item/gun/ballistic/automatic/pistol/himehabu/rubber
	spawn_magazine_type = /obj/item/ammo_box/magazine/m22lr_himehabu/rubber

/obj/item/gun/ballistic/automatic/pistol/himehabu/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/gun/ballistic/automatic/pistol/derringer
	name = "HP Spark"
	desc = "An easily concealable derringer. Its simple design and modest demand make the Spark a common project for trainee HP gunsmiths. Chambered in .38."
	icon_state = "derringer"
	inhand_icon_state = "hp_generic"

	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/scarborough_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/scarborough_righthand.dmi'

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

/obj/item/gun/ballistic/automatic/pistol/derringer/get_ammo(countchambered = FALSE, countempties = TRUE)
	var/boolets = 0 //legacy var name maturity
	if (chambered && countchambered)
		boolets++
	if (magazine)
		boolets += magazine.ammo_count(countempties)
	return boolets

/obj/item/gun/ballistic/automatic/pistol/derringer/examine(mob/user)
	. = ..()
	var/live_ammo = get_ammo(FALSE, FALSE)
	. += "[live_ammo ? live_ammo : "None"] of those are live rounds."

/obj/item/gun/ballistic/automatic/pistol/derringer/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)

/obj/item/gun/ballistic/automatic/pistol/derringer/temblor
	name = "D-9 \"Temblor\""
	desc = "An easily concealable derriger. It was rarely used as an alternative to the PC-81 \"Himehabu\" during covert operations. Chambered in .357."

	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/scarborough_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/scarborough_righthand.dmi'

	icon_state = "derringer_syndie"
	inhand_icon_state = "sa_generic"

	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/derr357

	fire_sound_volume = 50 //Tactical stealth firing

/obj/item/gun/ballistic/automatic/pistol/derringer/temblor/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)
