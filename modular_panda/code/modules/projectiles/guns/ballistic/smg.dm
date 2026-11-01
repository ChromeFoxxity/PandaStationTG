//########### SMGS ###########//

/obj/item/gun/ballistic/automatic/c20r
	name = "C-20r \"Cobra\""
	desc = "A bullpup submachine gun with an integrated suppressor, heavily used by Syndicate strike teams. Still sees widespread use by the operatives of the Gorlex Marauders. Chambered in 10mm."
	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/back.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_righthand.dmi'
	icon_state = "cobra"
	inhand_icon_state = "cobra"
	burst_delay = 2
	burst_size = 3
	pin = /obj/item/firing_pin
	mag_display = TRUE
	mag_display_ammo = TRUE
	empty_indicator = TRUE
	selector_switch_icon = TRUE
	fire_delay = 0.1 SECONDS
	w_class = WEIGHT_CLASS_BULKY
	spread = 3
	accepted_magazine_type = /obj/item/ammo_box/magazine/m10_cobra
	fire_sound = 'modular_panda/sound/weapons/gun/smg/cobra.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/smg/cm5_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/smg/cm5_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/smg/cm5_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/smg/cm5_unload.ogg'
	suppressed_sound = 'modular_panda/sound/weapons/gun/pistol/shot_suppressed.ogg'

/obj/item/gun/ballistic/automatic/c20r/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/gun/ballistic/automatic/c20r/indie
	name = "Cobra-20"
	desc = "An older model of submachine gun manufactured by Scarborough Arms and marketed to mercenaries, law enforcement, and independent militia, usually though it's just for budget cut Syndicate teams. Chambered in 10mm."
	icon_state = "cobra20"
	inhand_icon_state = "cobra20"
	burst_size = 4
	burst_delay = 0.8
	fire_delay = 3
	spread = 2
	empty_alarm = FALSE
	actions_types = list(/datum/action/item_action/toggle_firemode)

/obj/item/gun/ballistic/automatic/sidewinder
	name = "CDW-81 \"Sidewinder\""
	desc = "An armor-piercing, compact personal defense weapon, introduced as an improvement over the C-20r when fighting armored personnel. Issued only in small numbers, and used today by specialists of Syndicate factions. Chambered in 5.7x39mm."
	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/back.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_righthand.dmi'
	icon_state = "sidewinder"
	inhand_icon_state = "sidewinder"
	accepted_magazine_type = /obj/item/ammo_box/magazine/m57_39_sidewinder
	fire_sound = 'modular_panda/sound/weapons/gun/smg/sidewinder.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/smg/sidewinder_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/smg/sidewinder_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/smg/sidewinder_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/smg/sidewinder_unload.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/smg/sidewinder_cocked.ogg'
	suppressed_sound = 'modular_panda/sound/weapons/gun/pistol/shot_suppressed.ogg'
	w_class = WEIGHT_CLASS_NORMAL
	burst_size = 2
	fire_delay = 0.1 SECONDS
	spread = 7
	recoil = 0
	actions_types = list()
	mag_display = TRUE
	bolt_type = BOLT_TYPE_LOCKING
	show_bolt_icon = FALSE
	empty_indicator = TRUE

/obj/item/gun/ballistic/automatic/sidewinder/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/gun/ballistic/automatic/nt5
	name = "\improper NT-5"
	desc = "Nanotrasen's standard-issue submachine gun. Well-liked for its accuracy, stability, and ease of use compared to other submachineguns. Chambered in 9mm."
	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/back.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_righthand.dmi'
	icon_state = "nt5"
	inhand_icon_state = "nt5"
	accepted_magazine_type = /obj/item/ammo_box/magazine/nt5_9mm
	bolt_type = BOLT_TYPE_LOCKING
	weapon_weight = WEAPON_LIGHT
	fire_sound = 'modular_panda/sound/weapons/gun/smg/cm5.ogg'
	spread = 4

/obj/item/gun/ballistic/automatic/nt5/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.1 SECONDS)

/obj/item/gun/ballistic/automatic/nt5/rubber
	accepted_magazine_type = /obj/item/ammo_box/magazine/nt5_9mm/rubber

/obj/item/gun/ballistic/automatic/nt5/compact
	name = "\improper NT-5c"
	desc = "A modification of the NT-5 featuring a dramatically shortened barrel and removed stock. Designed for Nanotrasen's covert enforcement agents to maximize portability without sacrificing firepower, though accuracy at range is abysmal at best. Chambered in 9mm."
	icon_state = "nt5c"
	inhand_icon_state = "nt5c"

	w_class = WEIGHT_CLASS_NORMAL

	spread = 10
	recoil = 1
