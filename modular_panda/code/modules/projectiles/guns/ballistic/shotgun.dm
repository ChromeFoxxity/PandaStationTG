//########### SHOTGUNS ###########//

/obj/item/gun/ballistic/shotgun/bulldog
	name = "SG-60r \"Bulldog\""
	desc = "A bullpup combat shotgun usually seen with a characteristic drum magazine. Wildly popular among Syndicate strike teams, although it proved less useful against military-grade equipment. Still popular among the die-hard Syndicate factions, especially the Gorlex Marauders. Chambered in 12g."
	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_righthand.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/back.dmi'
	icon_state = "bulldog"
	inhand_icon_state = "bulldog"

	weapon_weight = WEAPON_MEDIUM

	accepted_magazine_type = /obj/item/ammo_box/magazine/m12g_bulldog

	fire_sound = 'modular_panda/sound/weapons/gun/shotgun/bulldog.ogg'

	actions_types = list(/datum/action/item_action/toggle_firemode)
	pickup_sound =  'modular_panda/sound/handling/rifle_pickup.ogg'

	load_sound = 'modular_panda/sound/weapons/gun/rifle/ar_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/rifle/ar_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/rifle/ar_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/rifle/ar_unload.ogg'

	rack_sound = 'modular_panda/sound/weapons/gun/rifle/ar_cock.ogg'

	spread = 3
	recoil = 1

	can_suppress = FALSE
	burst_size = 1
	burst_delay = 1
	mag_display = TRUE
	empty_indicator = TRUE
	empty_alarm = TRUE
	special_mags = TRUE
	mag_display_ammo = TRUE
	semi_auto = TRUE
	internal_magazine = FALSE
	tac_reloads = TRUE
	burst_fire_selection = TRUE

/obj/item/gun/ballistic/shotgun/bulldog/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.4 SECONDS)

/obj/item/gun/ballistic/shotgun/bulldog/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

// Bockadam Burst Bulldog Variant

/obj/item/gun/ballistic/shotgun/bulldog/bockadam
	name = "SG-60db \"Bockadam\""
	desc = "A bullpup combat shotgun from Gorlex Marauder reserves that has been heavily modified, sporting a sawn-down barrel and a two-shot receiver. Reliability has been traded for deadly lethality in tight quarters."

	icon_state = "bockadam"
	inhand_icon_state = "bockadam"

	weapon_weight = WEAPON_MEDIUM
	accepted_magazine_type = /obj/item/ammo_box/magazine/m12g_bulldog
	burst_size = 2
	burst_delay = 0.25 SECONDS
	fire_delay = 0.4 SECONDS
	spread = 5

	empty_alarm = FALSE

/obj/item/gun/ballistic/shotgun/bulldog/bockadam/Initialize(mapload)
	. = ..()

/obj/item/gun/ballistic/shotgun/bulldog/drum
	accepted_magazine_type = /obj/item/ammo_box/magazine/m12g_bulldog/drum

/obj/item/gun/ballistic/shotgun/gaboon
	name = "CSG-12 \"Gaboon\""
	desc = "A compact pump-action shotgun designed by Scarborough Arms. One of their oldest designs still in circulation due to their appeal among those frequently operating in cramped spaces. Stripped down for maximum portability, the pump-action mechanism renders it wildly overshadowed by the Bulldog, its larger, modern sister. Chambered in 12g."
	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_righthand.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/back.dmi'
	icon_state = "gaboon"
	inhand_icon_state = "gaboon"

	fire_sound = 'modular_panda/sound/weapons/gun/shotgun/brimstone.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/shotgun/rack.ogg'

	actions_types = list(/datum/action/item_action/toggle_firemode)

	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/shot/gaboon

	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_NORMAL

	fire_delay = 0.1 SECONDS
	spread = 8
	recoil = 3

/obj/item/gun/ballistic/shotgun/gaboon/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/gun/ballistic/shotgun/gaboon/full
	name = "CSG-12-S \"Gaboon\""
	desc = "A compact pump-action shotgun designed by Scarborough Arms. One of their oldest designs still in circulation due to their appeal among those frequently operating in cramped spaces. Stripped down for maximum portability, the pump-action mechanism renders it wildly overshadowed by the Bulldog, its larger, modern sister, this one has a stock added. Chambered in 12g."

	icon_state = "gaboon_stock"

	weapon_weight = WEAPON_HEAVY
	w_class = WEIGHT_CLASS_BULKY

	spread = 6
	recoil = 1

/obj/item/gun/ballistic/shotgun/doublebarrel
	name = "double-barreled shotgun"
	desc = "A classic break action shotgun, hand-made in a Bastion Armaments workshop. Both barrels can be fired in quick succession or even simultaneously. Guns like this have been popular with hunters, sporters, and criminals for millennia. Chambered in 12g."

	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_righthand.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/back.dmi'
	icon_state = "dshotgun"
	inhand_icon_state = "dshotgun"

	rack_sound = 'modular_panda/sound/weapons/gun/shotgun/dbshotgun_break.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/shotgun/dbshotgun_close.ogg'

	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_MEDIUM

	force = 10

	obj_flags = CONDUCTS_ELECTRICITY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE

	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/shot/dual

	sawn_desc = "A break action shotgun cut down to the size of a sidearm. While the recoil is even harsher, it offers a lot of power in a very small package. Chambered in 12g."

	obj_flags = UNIQUE_RENAME
	rack_sound_volume = 0
	semi_auto = TRUE
	bolt_type = BOLT_TYPE_NO_BOLT
	pb_knockback = 3 // it's a super shotgun!
	bolt_wording = "barrel"
	can_be_sawn_off = TRUE

/obj/item/gun/ballistic/shotgun/doublebarrel/do_sawoff()
	. = ..()
	weapon_weight = WEAPON_MEDIUM
	spread = 8
	recoil = 3 //or not

/obj/item/gun/ballistic/shotgun/doublebarrel/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_BASTION)

/obj/item/gun/ballistic/shotgun/doublebarrel/presawn
	WHEN_MAP(icon_state = "dshotgun_sawn")
	spawn_sawn_off = TRUE

/obj/item/gun/ballistic/shotgun/brimstone
	name = "BA Brimstone"
	desc = "A simple and sturdy pump-action shotgun sporting a 5-round capacity, manufactured by Bastion Armaments. Found widely throughout the Spinward Sector in the hands of hunters, pirates, police, and countless others. Chambered in 12g."
	fire_sound = 'modular_panda/sound/weapons/gun/shotgun/brimstone.ogg'
	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_righthand.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/back.dmi'

	icon_state = "brimstone"
	inhand_icon_state = "brimstone"

	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/shot/brimstone

	sawn_desc = "A stockless and shortened pump-action shotgun. The worsened recoil and accuracy make it a poor sidearm anywhere beyond punching distance."

	fire_delay = 0.05 SECONDS //slamfire
	rack_delay = 0.2 SECONDS

	can_be_sawn_off = TRUE

/obj/item/gun/ballistic/shotgun/brimstone/do_sawoff()
	. = ..()
	weapon_weight = WEAPON_MEDIUM
	spread = 18
	recoil = 5 //your punishment for sawing off an short shotgun

/obj/item/gun/ballistic/shotgun/brimstone/presawn
	WHEN_MAP(icon_state = "brimstone_sawn")
	spawn_sawn_off = TRUE

/obj/item/gun/ballistic/shotgun/brimstone/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_BASTION)

// HELLFIRE //

/obj/item/gun/ballistic/shotgun/riot
	name = "BA Hellfire"
	desc = "A hefty pump-action riot shotgun with an eight-round tube, manufactured by Bastion Armaments. Especially popular among the Spinward Sector's police forces. Chambered in 12g."
	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/back.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_righthand.dmi'
	icon_state = "hellfire"
	inhand_icon_state = "hellfire"
	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/shot/riot
	sawn_desc = "Come with me if you want to live."
	can_be_sawn_off = TRUE
	rack_sound = 'modular_panda/sound/weapons/gun/shotgun/rack_alt.ogg'
	fire_delay = 6 //We slighly bump this up because thats a good idea

/obj/item/gun/ballistic/shotgun/riot/do_sawoff()
	. = ..()
	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/shot/riot/sawn
	weapon_weight = WEAPON_MEDIUM
	spread = 8
	recoil = 3 //your punishment for sawing off an short shotgun

/obj/item/gun/ballistic/shotgun/riot/presawn
	WHEN_MAP(icon_state = "hellfire_sawn")
	spawn_sawn_off = TRUE

/obj/item/gun/ballistic/shotgun/riot/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_BASTION)

/obj/item/gun/ballistic/shotgun/nt15
	name = "\improper NT-15"
	desc = "A large automatic shotgun used by Nanotrasen. Generally employed by station security and military units, though nowadays has been seen less commonly due to backlash of lethality. Chambered in 12 gauge."
	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/back.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_righthand.dmi'
	icon_state = "nt15"
	inhand_icon_state = "nt15"
	accepted_magazine_type = /obj/item/ammo_box/magazine/nt15_12g
	weapon_weight = WEAPON_MEDIUM
	semi_auto = TRUE
	internal_magazine = FALSE
	can_suppress = FALSE
	burst_size = 1
	burst_delay = 1
	mag_display = TRUE
	empty_indicator = TRUE
	empty_alarm = TRUE
	special_mags = TRUE
	mag_display_ammo = TRUE
	semi_auto = TRUE
	internal_magazine = FALSE
	tac_reloads = TRUE
	burst_fire_selection = TRUE
	pickup_sound = 'modular_panda/sound/handling/rifle_pickup.ogg'
	fire_sound = 'modular_panda/sound/weapons/gun/shotgun/bulldog.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/rifle/ar_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/rifle/ar_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/rifle/ar_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/rifle/ar_unload.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/rifle/ar_cock.ogg'

	spread = 3
	recoil = 1

/obj/item/gun/ballistic/shotgun/nt15/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.3 SECONDS)

/obj/item/gun/ballistic/shotgun/nt15/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)

