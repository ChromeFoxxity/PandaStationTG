/obj/item/shiptest_gun/ballistic/automatic/smg
	abstract_type = /obj/item/shiptest_gun/ballistic/automatic/smg
	show_magazine_on_sprite = TRUE

	burst_size = 2
	actions_types = list()
	fire_delay = 0.1 SECONDS

	spread = 6
	recoil_backtime_multiplier = 8
	recoil = 1
	zoom_amt = SMG_ZOOM
	w_class = WEIGHT_CLASS_BULKY

	light_range = 1

	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_SEMIAUTO


	load_sound = 'modular_panda/sound/weapons/gun/smg/smg_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/smg/smg_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/smg/smg_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/smg/smg_unload.ogg'
	suppressed_sound = 'modular_panda/sound/weapons/gun/pistol/shot_suppressed.ogg'

	wear_minor_threshold = 240
	wear_major_threshold = 720
	wear_maximum = 1200


/obj/item/shiptest_gun/ballistic/automatic/smg/skm_carbine
	name = "\improper SKM-24v"
	desc = "The SKM-24v was a carbine modification of the SKM-24 during the Frontiersmen War. This, however, is just a shoddy imitation of that carbine, effectively an SKM-24 with a sawed down barrel and a folding wire stock. Chambered in 4.6x30mm."

	icon_state = "skm_carbine"
	inhand_icon_state = "skm_carbine"
	icon = 'modular_panda/icons/obj/guns/manufacturer/hermits/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/hermits/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/hermits/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/hermits/onmob.dmi'
	fire_sound = 'modular_panda/sound/weapons/gun/rifle/skm_smg.ogg'

	rack_sound = 'modular_panda/sound/weapons/gun/rifle/skm_cocked.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/rifle/skm_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/rifle/skm_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/rifle/skm_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/rifle/skm_unload.ogg'

	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_NORMAL
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/skm_46_30
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/skm_46_30,
	)

	recoil = 1
	spread = 6

	wear_rate = 1.6

/obj/item/shiptest_gun/ballistic/automatic/smg/skm_carbine/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_REMOVED)

/obj/item/shiptest_gun/ballistic/automatic/smg/cobra
	name = "C-20r \"Cobra\""
	desc = "A bullpup submachine gun with an integrated suppressor, was heavily used by Syndicate strike teams. Still sees widespread use by operatives of the Gorlex Marauders. Chambered in 10mm."
	icon = 'modular_panda/icons/obj/guns/manufacturer/scarborough/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/scarborough/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/scarborough/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/scarborough/onmob.dmi'
	icon_state = "cobra"
	inhand_icon_state = "cobra"

	spread = 3

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m10_cobra
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m10_cobra,
	)

	suppressed_sound = 'modular_panda/sound/weapons/gun/smg/shot_suppressed.ogg'

	load_sound = 'modular_panda/sound/weapons/gun/smg/cm5_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/smg/cm5_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/smg/cm5_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/smg/cm5_unload.ogg'

	show_magazine_on_sprite = TRUE
	show_magazine_on_sprite_ammo = TRUE
	show_ammo_capacity_on_magazine_sprite = TRUE

/obj/item/shiptest_gun/ballistic/automatic/smg/cobra/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/shiptest_gun/ballistic/automatic/smg/cobra/indie
	name = "Cobra-20"
	desc = "An older model of submachine gun manufactured by Scarborough Arms and marketed to mercenaries, law enforcement, independent militia, and underfunded Gorlex Operatives. Chambered in 10mm."
	icon_state = "cobra20"
	inhand_icon_state = "cobra20"

	burst_size = 4
	burst_delay = 0.8
	fire_delay = 3
	spread = 2

	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_BURST)
	gun_firenames = list(FIREMODE_SEMIAUTO = "single", FIREMODE_BURST = "burst")

/obj/item/shiptest_gun/ballistic/automatic/smg/sidewinder
	name = "CDW-81 \"Sidewinder\""
	desc = "An armor-piercing, compact personal defense weapon, introduced as an improvement over the C-20r when fighting armored personnel. Issued only in small numbers, and used today by specialists of Syndicate factions. Chambered in 5.7mm."
	icon = 'modular_panda/icons/obj/guns/manufacturer/scarborough/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/scarborough/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/scarborough/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/scarborough/onmob.dmi'
	icon_state = "sidewinder"
	inhand_icon_state = "sidewinder"

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m57_39_sidewinder
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m57_39_sidewinder,
	)

	fire_sound = 'modular_panda/sound/weapons/gun/smg/sidewinder.ogg'

	load_sound = 'modular_panda/sound/weapons/gun/smg/sidewinder_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/smg/sidewinder_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/smg/sidewinder_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/smg/sidewinder_unload.ogg'

	rack_sound = 'modular_panda/sound/weapons/gun/smg/sidewinder_cocked.ogg'

	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_NORMAL

	show_magazine_on_sprite = TRUE
	show_magazine_on_sprite_ammo = TRUE
	show_ammo_capacity_on_magazine_sprite = TRUE

	spread = 7

/obj/item/shiptest_gun/ballistic/automatic/smg/sidewinder/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/shiptest_gun/ballistic/automatic/smg/firestorm
	name = "BA Firestorm"
	desc = "An unconventional submachinegun, rarely issued to Terran Colonial Defense Militia mercenary hunters for outstanding situations where normal hunting weapons fall short. Chambered in .44 Solarian."
	icon = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/onmob.dmi'

	icon_state = "firestorm"
	inhand_icon_state = "firestorm"
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/c44_firestorm_mag
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/c44_firestorm_mag,
	)
	unique_mag_sprites_for_variants = TRUE
	burst_size = 1
	actions_types = list()
	fire_delay = 0.22 SECONDS
	bolt_type = BOLT_TYPE_OPEN
	rack_sound = 'modular_panda/sound/weapons/gun/smg/uzi_cocked.ogg'
	fire_sound = 'modular_panda/sound/weapons/gun/smg/firestorm.ogg'
	wear_rate = 0.4 //HP weapons are more resistant to wear

/obj/item/shiptest_gun/ballistic/automatic/smg/firestorm/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_BASTION)

/obj/item/shiptest_gun/ballistic/automatic/smg/firestorm/pan
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/c44_firestorm_mag/pan

/obj/item/shiptest_gun/ballistic/automatic/smg/heater
	name = "\improper Heater"
	desc = "A popular Personal Defense Weapon originating from the industrial colonies of the Frontier. Essentially a more expensive, compact Spitter with a closed bolt design. It is notably more accurate while suffering from increased recoil due to its lack of stock. "
	icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/onmob.dmi'
	icon_state = "heater"
	inhand_icon_state = "heater"
	w_class = WEIGHT_CLASS_NORMAL
	spread = 4
	fire_delay = 0.12 SECONDS
	recoil = 2.5
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE | ITEM_SLOT_BELT
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/heater
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/heater,
	)
	wear_rate = 1.25
	fire_sound = 'modular_panda/sound/weapons/gun/rifle/skm_smg.ogg'

	load_sound = 'modular_panda/sound/weapons/gun/smg/cm5_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/smg/cm5_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/smg/cm5_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/smg/cm5_unload.ogg'

	unique_mag_sprites_for_variants = TRUE

/obj/item/shiptest_gun/ballistic/automatic/smg/heater/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_FRONTIER)

/obj/item/shiptest_gun/ballistic/automatic/smg/pounder
	name = "Pounder"
	desc = "An unusual submachine gun of Frontiersman make. A miniscule cartridge lacking both stopping power and armor penetration is compensated for with best-in-class ammunition capacity and cycle rate. Chambered in .22 LR."
	icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/onmob.dmi'
	w_class = WEIGHT_CLASS_BULKY //this gun is visually larger, so I believe this is good

	icon_state = "pounder"
	inhand_icon_state = "pounder"
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/c22lr_pounder_pan
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/c22lr_pounder_pan,
	)
	burst_size = 1.5
	fire_delay = 0.04 SECONDS
	spread = 25

	fire_sound = 'modular_panda/sound/weapons/gun/smg/pounder.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/smg/pounder_cocked.ogg'
	rack_sound_vary = FALSE

	load_sound_vary = FALSE
	eject_sound_vary = FALSE
	load_sound = 'modular_panda/sound/weapons/gun/smg/pounder_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/smg/pounder_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/smg/pounder_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/smg/pounder_unload.ogg'

	wear_rate = 1

	gun_firemodes = list(FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_FULLAUTO

	safety_multiplier = 2

/obj/item/shiptest_gun/ballistic/automatic/smg/pounder/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_FRONTIER)

/obj/item/shiptest_gun/ballistic/automatic/smg/nt5
	name = "\improper NT-5"
	desc = "Nanotrasen's standard-issue submachine gun. Well-liked for its accuracy, stability, and ease of use compared to other submachineguns. Chambered in 9mm."
	icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/onmob.dmi'

	icon_state = "cm5"
	inhand_icon_state = "cm5"

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/nt5_9mm
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/nt5_9mm,
	)
	bolt_type = BOLT_TYPE_CLIP
	weapon_weight = WEAPON_LIGHT
	fire_sound = 'modular_panda/sound/weapons/gun/smg/cm5.ogg'
	fire_delay = 0.09 SECONDS // despite being 1 fire delay previously, it fucking rounds up to 1.5. This makes it ACTUALLY ONE
	spread = 4

	fire_select_icon_state_prefix = "clip_"
	adjust_fire_select_icon_state_on_safety = TRUE

/obj/item/shiptest_gun/ballistic/automatic/smg/nt5/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)

/obj/item/shiptest_gun/ballistic/automatic/smg/nt5/rubber
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/nt5_9mm/rubber

/obj/item/shiptest_gun/ballistic/automatic/smg/nt5/compact
	name = "\improper NT-5c"
	desc = "A modification of the NT-5 featuring a dramatically shortened barrel and removed stock. Designed for Nanotrasen's covert enforcement agents to maximize portability without sacrificing firepower, though accuracy at range is abysmal at best. Chambered in 9mm."
	icon_state = "cm5c"
	inhand_icon_state = "cm5c"

	w_class = WEIGHT_CLASS_NORMAL

	fire_delay = 0.1 SECONDS

	spread = 10
	recoil = 1.8

	var/obj/item/storage/briefcase/current_case

/obj/item/shiptest_gun/ballistic/automatic/smg/nt5/compact/attackby(obj/item/attacking_item, mob/user, params)
	. = ..()
	if(current_case)
		return
	if(!istype(attacking_item, /obj/item/storage/briefcase))
		return
	if(attacking_item.contents.len != 0)
		return
	to_chat(user, span_notice("...? You rig [src] to fire from within [attacking_item]."))
	current_case = attacking_item
	attacking_item.forceMove(src)
	icon = attacking_item.icon
	base_icon_state = attacking_item.icon_state
	inhand_icon_state = attacking_item.inhand_icon_state
	name = attacking_item.name
	lefthand_file = attacking_item.lefthand_file
	righthand_file = attacking_item.righthand_file
	pickup_sound = attacking_item.pickup_sound
	drop_sound = attacking_item.drop_sound
	w_class = WEIGHT_CLASS_BULKY

//how are you even supposed to hold it like this...?
	spread += 10

	cut_overlays()
	update_appearance()

/obj/item/shiptest_gun/ballistic/automatic/smg/nt5/compact/click_alt(mob/user)
	if(!current_case)
		return ..()
	user.put_in_hands(current_case)
	icon = src::icon
	base_icon_state = src::icon_state
	inhand_icon_state = src::inhand_icon_state
	name = src::name
	lefthand_file = src::lefthand_file
	righthand_file = src::righthand_file
	pickup_sound = src::pickup_sound
	drop_sound = src::drop_sound
	w_class = WEIGHT_CLASS_NORMAL

	spread = src::spread
	to_chat(user, span_notice("You remove the [current_case] from [src]"))
	current_case = null

	cut_overlays()
	update_appearance()
