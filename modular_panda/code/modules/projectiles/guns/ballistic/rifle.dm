/obj/item/shiptest_gun/ballistic/rifle
	name = "Bolt Rifle"
	desc = "Some kind of bolt-action rifle. You get the feeling you shouldn't have this."
	icon = 'modular_panda/icons/obj/guns/48x32guns.dmi'
	worn_icon = 'icons/mob/clothing/back.dmi'
	icon_state = "hunting"
	inhand_icon_state = "hunting"
	abstract_type = /obj/item/shiptest_gun/ballistic/rifle
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/boltaction
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/boltaction,
	)
	bolt_wording = "bolt"
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE
	bolt_type = BOLT_TYPE_STANDARD
	semi_auto = FALSE
	internal_magazine = TRUE
	fire_sound = 'modular_panda/sound/weapons/gun/rifle/mosin.ogg'
	fire_sound_volume = 90
	vary_fire_sound = FALSE
	rack_sound = 'modular_panda/sound/weapons/gun/rifle/bolt_out.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/rifle/bolt_in.ogg'
	tac_reloads = FALSE
	weapon_weight = WEAPON_MEDIUM
	pickup_sound = 'modular_panda/sound/handling/rifle_pickup.ogg'

	gun_firemodes = list(FIREMODE_SEMIAUTO)
	default_firemode = FIREMODE_SEMIAUTO

	zoom_amt = RIFLE_ZOOM

	spread = 8
	recoil = 4

/obj/item/shiptest_gun/ballistic/rifle/update_overlays()
	. = ..()
	. += "[icon_state]_bolt[bolt_locked ? "_locked" : ""]"

/obj/item/shiptest_gun/ballistic/rifle/rack(mob/living/user)
	if (bolt_locked == FALSE)
		to_chat(user, span_notice("You open the bolt of \the [src]."))
		playsound(src, rack_sound, rack_sound_volume, rack_sound_vary)
		process_chamber(FALSE, FALSE, FALSE, shooter = user)
		bolt_locked = TRUE
		update_appearance()
		if (magazine && !magazine?.ammo_count() && empty_autoeject && !internal_magazine)
			eject_magazine(display_message = FALSE)
			update_appearance()
		return
	drop_bolt(user)

/obj/item/shiptest_gun/ballistic/rifle/eject_magazine(mob/user, display_message = TRUE, obj/item/ammo_box/magazine/tac_load = null)
	if (!bolt_locked && empty_autoeject)
		to_chat(user, span_notice("The bolt is closed!"))
		return
	return ..()

/obj/item/shiptest_gun/ballistic/rifle/can_shoot()
	if (bolt_locked)
		return FALSE
	return ..()

/obj/item/shiptest_gun/ballistic/rifle/attackby(obj/item/A, mob/user, params)
	if (!bolt_locked)
		if(SEND_SIGNAL(src, COMSIG_ATOM_ATTACKBY, A, user, params) & COMPONENT_NO_AFTERATTACK)
			return TRUE
		to_chat(user, span_notice("The bolt is closed!"))
		return
	return ..()

/obj/item/shiptest_gun/ballistic/rifle/examine(mob/user)
	. = ..()
	. += "The bolt is [bolt_locked ? "open" : "closed"]."

/obj/item/shiptest_gun/ballistic/rifle/polymer
	name = "polymer survivor rifle"
	desc = "A bolt-action rifle made of scrap, desperation, and luck. It's a wonder this thing even functions. Chambered in 7.62x40mm."
	icon_state = "methrifle"
	inhand_icon_state = "methrifle"
	icon = 'modular_panda/icons/obj/guns/manufacturer/hermits/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/hermits/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/hermits/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/hermits/onmob.dmi'
	has_safety = FALSE
	safety = FALSE
	safety_multiplier = 2
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_BULKY
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/boltaction/polymer
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/boltaction/polymer,
	)
	can_be_sawn_off = FALSE
	manufacturer = MANUFACTURER_NONE
	spread = 5 // it's made of pipes...
	wear_rate = 2
	recoil = 1

// unique wear mechanic where we fail to rack the bolt
/obj/item/shiptest_gun/ballistic/rifle/polymer/rack(mob/living/user)
	var/jam_prob = 0
	if (gun_wear > wear_major_threshold)
		jam_prob = 40
	else if(gun_wear > wear_minor_threshold)
		jam_prob = 25
	if(prob(jam_prob))
		balloon_alert(user, "stuck!")
		playsound(src, 'modular_panda/sound/weapons/gun/general/dry_fire.ogg', 50, TRUE, -15)
		return
	return ..()

EMPTY_GUN_HELPER(rifle/polymer)
