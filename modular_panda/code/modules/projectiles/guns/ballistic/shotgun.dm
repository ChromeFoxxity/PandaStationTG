//########### SHOTGUNS ###########//

/obj/item/gun/ballistic/shotgun/riot
	name = "woodstock shotgun"
	desc = "A sturdy shotgun with a longer magazine and a fixed tactical stock designed for non-lethal riot control. Often found in the hand of a lavaland hunter. Vaguely reminds you of hunting back in Sol does it not?"
	fire_delay = 6 //We slighly bump this up because thats a good idea
	sawn_desc = "Come with me if you want to live."

/obj/item/gun/ballistic/shotgun/bulldog
	name = "SG-60r \"Bulldog\""
	desc = "A bullpup combat shotgun usually seen with a characteristic drum magazine. Wildly popular among Syndicate strike teams, although it proved less useful against military-grade equipment. Still popular among the die-hard Syndicate factions, especially the Gorlex Marauders. Chambered in 12g."
	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/scarborough_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/scarborough_righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/clothing/back.dmi'
	icon_state = "bulldog"
	inhand_icon_state = "bulldog"

	weapon_weight = WEAPON_MEDIUM
	accepted_magazine_type = /obj/item/ammo_box/magazine/m12g_bulldog
	fire_delay = 0.3 SECONDS
	fire_sound = 'modular_panda/sound/weapons/gun/shotgun/bulldog.ogg'
	empty_alarm = TRUE
	internal_magazine = FALSE
	casing_ejector = TRUE
	tac_reloads = TRUE
	actions_types = list(/datum/action/item_action/toggle_firemode)
	pickup_sound =  'modular_panda/sound/handling/rifle_pickup.ogg'

	load_sound = 'modular_panda/sound/weapons/gun/rifle/ar_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/rifle/ar_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/rifle/ar_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/rifle/ar_unload.ogg'

	rack_sound = 'modular_panda/sound/weapons/gun/rifle/ar_cock.ogg'

	spread = 3
	recoil = 1

/obj/item/gun/ballistic/shotgun/bulldog/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

// Bockadam Burst Bulldog Variant

/obj/item/gun/ballistic/shotgun/bulldog/bockadam
	name = "SG-60db \"Bockadam\""
	desc = "A bullpup combat shotgun from Gorlex Marauder reserves that's been heavily modified, sporting a sawn-down barrel and a two-shot receiver. Reliability has been traded for deadly lethality in tight quarters."

	icon_state = "bockadam"
	inhand_icon_state = "bockadam"

	weapon_weight = WEAPON_MEDIUM
	accepted_magazine_type = /obj/item/ammo_box/magazine/m12g_bulldog
	burst_size = 2
	burst_delay = 0.25 SECONDS
	fire_delay = 0.4 SECONDS
	spread = 5

/obj/item/gun/ballistic/shotgun/bulldog/drum
	accepted_magazine_type = /obj/item/ammo_box/magazine/m12g_bulldog/drum

/obj/item/gun/ballistic/shotgun/gaboon
	name = "CSG-12 \"Gaboon\""
	desc = "A compact pump-action shotgun designed by Scarborough Arms. One of their oldest designs still in circulation due to their appeal among those frequently operating in cramped spaces. Stripped down for maximum portability, the pump-action mechanism renders it wildly overshadowed by the Bulldog, its larger, modern sister. Chambered in 12g."
	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/scarborough_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/scarborough_righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/clothing/back.dmi'
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
