/obj/item/gun/modular
	name = "gun"
	desc = "It's a gun. It's pretty terrible, though."
	icon = 'icons/obj/weapons/guns/ballistic.dmi'
	icon_state = "revolver"
	inhand_icon_state = "gun"
	worn_icon_state = "gun"
	abstract_type = /obj/item/gun/modular
	obj_flags = CONDUCTS_ELECTRICITY
	appearance_flags = TILE_BOUND|PIXEL_SCALE|LONG_GLIDE|KEEP_TOGETHER
	slot_flags = ITEM_SLOT_BELT | ITEM_SLOT_SUITSTORE
	custom_materials = list(/datum/material/iron=SHEET_MATERIAL_AMOUNT)
	w_class = WEIGHT_CLASS_NORMAL
	throwforce = 5
	throw_speed = 3
	throw_range = 5
	force = 5
	item_flags = NEEDS_PERMIT
	attack_verb_continuous = list("strikes", "hits", "bashes")
	attack_verb_simple = list("strike", "hit", "bash")
	action_slots = ALL
	pickup_sound = 'modular_panda/sound/handling/gun_pickup.ogg'
	drop_sound = 'modular_panda/sound/handling/gun_drop.ogg'
	trigger_guard = TRIGGER_GUARD_NORMAL // cruft?

	var/autowiki_hidden = FALSE

	// MUZZLE FLASH //
	var/obj/effect/muzzle_flash/muzzle_flash // effect to use
	light_range = 3
	light_color = COLOR_VERY_SOFT_YELLOW
	light_on = FALSE
	var/muzzleflash_iconstate // icon state to use
	var/flashy = TRUE // If we have a muzzle flash or not

	gun_flags = NONE

	/// Even snowflakier way to modify projectile wounding bonus/potential for projectiles fired from this gun.
	projectile_wound_bonus = 0

	/// The most reasonable way to modify projectile speed values for projectile fired from this gun. Honest.
	/// Lower values are worse, higher values are better.
	projectile_speed_multiplier = 1

	// FIRING //
	fire_sound = 'sound/items/weapons/gun/pistol/shot.ogg'
	vary_fire_sound = TRUE
	fire_sound_volume = 50
	dry_fire_sound = 'sound/items/weapons/gun/general/dry_fire.ogg'
	dry_fire_sound_volume = 30
	/// Whether or not a message is displayed when fired
	var/dry_fire_text = "click"

	// RELOADING //
	var/tactical_reload_delay = 1 SECONDS
	var/blacklisted_magazine_type // types we're not allowed to load

	// WEAPON STATS //
	weapon_weight = WEAPON_LIGHT // weight class of the weapon, for slowdown
	projectile_damage_multiplier = 1 // modifier for projectile damage
	pb_knockback = 0 // knockback to apply on point blank shots

	randomspread = TRUE // do we have random spread. false for shotguns
	spread	= 4 // wielded spread amount

	recoil = 0 // screen shake when fired
	recoil_backtime_multiplier = 2 // multiplier on the time for recoil to return to normal
	recoil_deviation = 22.5 // max variance the recoil direction can have

	min_recoil = 0 // recoil is always at least this
	var/min_recoil_aimed = 0 // do we have a min recoil while aiming

	burst_size = 3 // shots per burst for burst firing
	burst_delay = 0.15 SECONDS // delay between shots in a burst
	fire_delay = 0.2 SECONDS // delay between shots or between bursts
	firing_burst = FALSE // are we currently firing a burst?
	fire_cd = 0 // current firing cooldown, affected by lag

	// OVERLAYS //
	ammo_x_offset = 0 // ammo counter sprite x offset
	ammo_y_offset = 0 // ammo counter sprite y offset

	// SPAWN INFO //
	// for giving mappers control over guns. only affects init
	var/list/default_attachments = list() // attachments to spawn with
	var/spawn_no_ammo = FALSE // should we spawn with no ammo

	// FIRE MODE SELECTION //
	var/default_firemode = FIREMODE_SEMIAUTO // fire mode to spawn with
	var/firemode_index // currently selected fire mode

	var/aiming_time = 12
	var/aiming_time_fire_threshold = 5
	var/aiming_time_increase_user_movement = 3
	var/aiming_time_increase_angle_multiplier = 0.1

	// firemodes we can use. add or subtract to this list as applicable
	// NOTE: if FIREMODE_FULLAUTO is here, we get the autofire component on init. if FIREMODE_AIMED is here we get the beam aim component.
	var/list/gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_BURST, FIREMODE_FULLAUTO, FIREMODE_OTHER, FIREMODE_OTHER_TWO)
	var/list/gun_firenames = list(FIREMODE_SEMIAUTO = "single", FIREMODE_BURST = "burst fire", FIREMODE_FULLAUTO = "full auto", FIREMODE_OTHER = "misc. fire", FIREMODE_OTHER_TWO = "very misc. fire")
	var/fire_select_icon_state_prefix = "" // BASICALLY: the little button you select firing modes from? this is just the prefix of the icon state of that. For example, if we set it as "laser", the fire select will use "laser_single" and so on.
	var/adjust_fire_select_icon_state_on_safety = FALSE // if we should add "safety_" as an icon prefix if the gun is on safety

/obj/item/gun/modular/Initialize(mapload)
	. = ..()
	build_firemodes() // PANDA EDIT ADDITION - FIREMODES

/obj/item/gun/modular/proc/build_firemodes()
	if(FIREMODE_FULLAUTO in gun_firemodes)
		if(!GetComponent(/datum/component/automatic_fire))
			AddComponent(/datum/component/automatic_fire, fire_delay)
		SEND_SIGNAL(src, COMSIG_GUN_DISABLE_AUTOFIRE)

	for(var/datum/action/item_action/toggle_firemode/old_firemode in actions)
		old_firemode.Destroy()

	var/datum/action/item_action/toggle_firemode/our_action
	if(gun_firemodes.len > 1)
		our_action = new(src)

	firemode_index = gun_firemodes.Find(default_firemode)
	if(!firemode_index)
		CRASH("default_firemode isn't in the gun_firemodes list of [src.type]!")

	if(gun_firemodes[firemode_index] == FIREMODE_FULLAUTO)
		SEND_SIGNAL(src, COMSIG_GUN_ENABLE_AUTOFIRE)

	our_action?.build_all_button_icons()

/obj/item/gun/modular/proc/fire_select(mob/living/user)
	firemode_index++
	if(firemode_index > gun_firemodes.len)
		firemode_index = 1

	var/current_firemode = gun_firemodes[firemode_index]
	if(current_firemode == FIREMODE_FULLAUTO)
		SEND_SIGNAL(src, COMSIG_GUN_ENABLE_AUTOFIRE)
	else
		SEND_SIGNAL(src, COMSIG_GUN_DISABLE_AUTOFIRE)

	SEND_SIGNAL(src, COMSIG_UPDATE_AMMO_HUD)
	to_chat(user, span_notice("Switched to [gun_firenames[current_firemode]]."))
	playsound(user, 'modular_panda/sound/weapons/gun/general/selector.ogg', 100, TRUE)
	update_appearance()

	for(var/datum/action/item_action/toggle_firemode/firemode_action in actions)
		firemode_action.build_all_button_icons()

/obj/item/gun/modular/Initialize(mapload)
	. = ..()
	RegisterSignal(src, COMSIG_ITEM_UI_ACTION_CLICK, PROC_REF(on_firemode_action))
	build_firemodes()
	toggle_firemode()

/obj/item/gun/modular/proc/on_firemode_action(datum/source, mob/user, datum/action/action)
	SIGNAL_HANDLER

	if(!istype(action, /datum/action/item_action/toggle_firemode))
		return NONE

	fire_select(user)
	return COMPONENT_ACTION_HANDLED

/// Keep the base gun's firing implementation, but only burst in burst mode.
/obj/item/gun/modular/process_fire(atom/target, mob/living/user, message = TRUE, params = null, zone_override = "", bonus_spread = 0)
	var/current_firemode = gun_firemodes[firemode_index]

	if(current_firemode == FIREMODE_OTHER)
		return process_other(target, user, message, params, zone_override, bonus_spread)
	if(current_firemode == FIREMODE_OTHER_TWO)
		return process_other_two(target, user, message, params, zone_override, bonus_spread)

	if(current_firemode == FIREMODE_BURST)
		return ..()

	// Semiauto, full-auto, and aimed modes fire one shot per process_fire call.
	// Full-auto repetition is handled by the automatic-fire component.
	var/saved_burst_size = burst_size
	burst_size = 1
	. = ..()
	burst_size = saved_burst_size
	return .

/obj/item/gun/modular/proc/process_other(atom/target, mob/living/user, message = TRUE, params = null, zone_override = "", bonus_spread = 0)
	return FALSE

/obj/item/gun/modular/proc/process_other_two(atom/target, mob/living/user, message = TRUE, params = null, zone_override = "", bonus_spread = 0)
	return FALSE

/obj/item/gun/modular/proc/safety_blocks_fire(mob/living/user, atom/target, params)
	return SEND_SIGNAL(src, COMSIG_GUN_TRY_FIRE, user, target, FALSE, params) & COMPONENT_CANCEL_GUN_FIRE

/obj/item/gun/modular/process_fire(atom/target, mob/living/user, message = TRUE, params = null, zone_override = "", bonus_spread = 0)
	if(safety_blocks_fire(user, target, params))
		return FALSE

	var/current_firemode = gun_firemodes[firemode_index]
	if(current_firemode == FIREMODE_OTHER)
		return process_other(target, user, message, params, zone_override, bonus_spread)
	if(current_firemode == FIREMODE_OTHER_TWO)
		return process_other_two(target, user, message, params, zone_override, bonus_spread)

	if(current_firemode == FIREMODE_BURST)
		return ..()

	// Semiauto, full-auto, and aimed modes fire one shot per process_fire call.
	// Full-auto repetition is handled by the automatic-fire component.
	var/saved_burst_size = burst_size
	burst_size = 1
	. = ..()
	burst_size = saved_burst_size
	return .

/obj/item/gun/modular/process_burst(mob/living/user, atom/target, message = TRUE, params = null, zone_override = "", random_spread = 0, burst_spread_mult = 0, iteration = 0)
	if(safety_blocks_fire(user, target, params))
		firing_burst = FALSE
		return FALSE

	return ..()
