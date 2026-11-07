/obj/item/shiptest_gun
	name = "gun"
	desc = "The very platonic ideal of a gun. Doesn't shoot, oddly enough. You get the feeling that you shouldn't be seeing this and should file a bug report."
	icon = 'modular_panda/icons/obj/guns/projectile.dmi'
	icon_state = "flatgun"
	inhand_icon_state = "gun"
	lefthand_file = GUN_LEFTHAND_ICON
	righthand_file = GUN_RIGHTHAND_ICON
	obj_flags = CONDUCTS_ELECTRICITY
	slot_flags = ITEM_SLOT_BELT | ITEM_SLOT_SUITSTORE
	custom_materials = list(/datum/material/iron=2000)
	w_class = WEIGHT_CLASS_NORMAL
	throwforce = 5
	throw_speed = 3
	throw_range = 5
	force = 10

	abstract_type = /obj/item/shiptest_gun

	item_flags = NEEDS_PERMIT
	attack_verb_simple = list("struck", "hit", "bashed")
	pickup_sound = 'sound/items/handling/gun/gun_pick_up.ogg'
	drop_sound = 'sound/items/handling/gun/gun_drop.ogg'
	trigger_guard = TRIGGER_GUARD_NORMAL // cruft?
	light_system = OVERLAY_LIGHT_DIRECTIONAL

	var/autowiki_hidden = FALSE

	// MUZZLE FLASH //
	var/obj/effect/muzzle_flash/muzzle_flash // effect to use
	light_range = 3
	light_color = COLOR_VERY_SOFT_YELLOW
	light_on = FALSE
	var/muzzleflash_iconstate // icon state to use
	var/flashy = TRUE // If we have a muzzle flash or not

	// FIRING //
	var/actually_shoots = TRUE // is this gun real and not a dud
	var/glunked = FALSE //controls whether the gun gets a glunked overlay. separate from actually_shoots.
	var/doafter_self_shoot = TRUE
	var/fire_sound = 'modular_panda/sound/weapons/gun/pistol/shot.ogg'
	var/vary_fire_sound = TRUE
	var/fire_sound_volume = 50
	var/dry_fire_sound = 'modular_panda/sound/weapons/gun/general/dry_fire.ogg'
	var/dry_fire_text = "click"

	// RELOADING //
	var/obj/item/shiptest_ammo_casing/chambered = null // round currently chambered
	var/tac_reloads = TRUE // can we tactical reload this?
	var/tactical_reload_delay = 1 SECONDS
	var/default_ammo_type // magazine to spawn in the gun
	var/allowed_ammo_types // types we're allowed to load
	var/blacklisted_ammo_types // types we're not allowed to load
	var/internal_magazine = FALSE // whether the mag/cell is removable or not

	// RELOADING - SOUNDS //
	var/load_sound = 'modular_panda/sound/weapons/gun/general/magazine_insert_full.ogg'
	var/load_sound_volume = 40
	var/load_sound_vary = TRUE
	var/eject_sound = 'modular_panda/sound/weapons/gun/general/magazine_remove_full.ogg'

	// OPERATION //
	var/suppressed = FALSE // should we not display messages and use different sfx
	var/suppressed_sound = 'modular_panda/sound/weapons/gun/general/heavy_shot_suppressed.ogg'
	var/suppressed_volume = 60

	// OPERATION - ENERGY //
	// this var is used to select the ammo type for energy guns
	// but is here because the e40 also uses it. fix this Later
	var/select = 1 // what index of the ammo_type list are we firing?

	// OPERATION - BEAM AIMING //
	// if we have a beam aiming mode, these are used for it
	var/aiming = FALSE
	var/aiming_time = 12
	var/aiming_time_fire_threshold = 5
	var/aiming_time_left = 12
	var/aiming_time_increase_user_movement = 3
	var/aiming_time_increase_angle_multiplier = 0.1

	// WEAPON STATS //
	var/weapon_weight = WEAPON_LIGHT // used to determine dual-wield eligibility
	var/projectile_damage_multiplier = 1 // modifier for projectile damage
	var/pb_knockback = 0 // knockback to apply on point blank shots

	var/randomspread = TRUE // do we have random spread. false for shotguns
	var/spread = 4
	var/dual_wield_spread = 6 // dual wielding spread amount

	var/recoil = 0 // screen shake when fired
	var/recoil_backtime_multiplier = 2 // multiplier on the time for recoil to return to normal
	var/recoil_deviation = 22.5 // max variance the recoil direction can have

	var/min_recoil = 0 // recoil is always at least this
	var/min_recoil_aimed = 0 // do we have a min recoil while aiming

	var/burst_size = 3 // shots per burst for burst firing
	var/burst_delay = 0.15 SECONDS // delay between shots in a burst
	var/fire_delay = 0.2 SECONDS // delay between shots or between bursts
	var/currently_firing_burst = FALSE // are we currently firing a burst?
	var/current_cooldown = 0 // current firing cooldown, affected by lag

	// OVERLAYS //
	var/ammo_x_offset = 0 // ammo counter sprite x offset
	var/ammo_y_offset = 0 // ammo counter sprite y offset

	// OVERLAYS - ENERGY & POWERED //
	var/automatic_charge_overlays = TRUE // do we handle overlays with base update_appearance()?
	var/shaded_charge = FALSE // do we have multiple "charged" states
	var/charge_sections = 4 // number of charge states
	var/modifystate = FALSE // does the overlay change based on the ammo type?

	// ZOOMING //
	var/zoomable = TRUE // can this gun zoom in?
	var/zoomed = FALSE // are we currently zoomed in?
	var/zoom_amt = 3 // how far forward to zoom
	var/zoom_out_amt = 0 // how far to expand the view when zoomed
	var/datum/action/toggle_scope_zoom/azoom // zoom action button
	var/datum/action/item_action/toggle_firemode/firemode_action // firemode action button

	// SAFETY //
	var/has_safety = FALSE // do we even have a safety
	var/safety = FALSE // is the safety currently on
	var/safety_wording = "safety" // word to use to refer to the safety
	var/safety_multiplier = 1 // misfire chance multiplier. higher = more

	// SPAWN INFO //
	// for giving mappers control over guns. only affects init
	var/spawn_no_ammo = FALSE // should we spawn with no ammo

	// FIRE MODE SELECTION //
	var/default_firemode = FIREMODE_SEMIAUTO // fire mode to spawn with
	var/firemode_index // currently selected fire mode

	// firemodes we can use. add or subtract to this list as applicable
	// NOTE: if FIREMODE_FULLAUTO is here, we get the autofire component on init. if FIREMODE_AIMED is here we get the beam aim component.
	var/list/gun_firemodes = list(FIREMODE_SEMIAUTO)
	// assoc list that gives each fire mode a name to use
	var/list/gun_firenames = list(FIREMODE_SEMIAUTO = "single", FIREMODE_BURST = "burst fire", FIREMODE_FULLAUTO = "full auto", FIREMODE_OTHER = "misc. fire", FIREMODE_OTHER_TWO = "very misc. fire", FIREMODE_AIMED = "charged")
	var/fire_select_icon_state_prefix = "" // BASICALLY: the little button you select firing modes from? this is just the prefix of the icon state of that. For example, if we set it as "laser", the fire select will use "laser_single" and so on.
	var/adjust_fire_select_icon_state_on_safety = FALSE // if we should add "safety_" as an icon prefix if the gun is on safety

/obj/item/shiptest_gun/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_REMOVED)

/obj/item/shiptest_gun/Initialize(mapload, spawn_empty)
	. = ..()
	muzzle_flash = new(src, muzzleflash_iconstate)
	if(zoomable)
		azoom = new(src)
	give_manufacturer_examine()
	build_firemodes()

	if(glunked && !actually_shoots)
		desc += span_warning("\nIt appears to be irreparably broken.")
	else if (glunked && actually_shoots)
		desc += span_warning("\nIt appears to be extremely worn down.")

	if(glunked)
		glunkify()

/obj/item/shiptest_gun/Destroy()
	if(chambered)
		QDEL_NULL(chambered)
	if(azoom)
		QDEL_NULL(azoom)
	if(firemode_action)
		QDEL_NULL(firemode_action)
	if(muzzle_flash)
		QDEL_NULL(muzzle_flash)
	return ..()

/obj/item/shiptest_gun/proc/glunkify()
	var/index = "[REF(initial(icon))]-[initial(icon_state)]"
	var/static/list/scuff_cache = list()
	var/icon/scuff = scuff_cache[index]
	if(!scuff) // we only need to generate each scuff overlay once
		scuff = icon(initial(icon), initial(icon_state))
		var/icon/temp = icon('icons/effects/item_damage.dmi', "itemdamaged")
		temp.Scale(64, 32)
		temp.Shift(EAST, 32) // we put two side by side so it fits on guns
		temp.Blend(icon('icons/effects/item_damage.dmi', "itemdamaged"), ICON_OVERLAY)
		scuff.Blend("#fff", ICON_ADD)
		scuff.Blend(temp, ICON_MULTIPLY)
		scuff_cache[index] = scuff
	var/mutable_appearance/scuff_instance = new(scuff)
	add_overlay(scuff_instance)

/obj/item/shiptest_gun/Exited(atom/movable/gone, direction)
	. = ..()
	if(gone == chambered)
		chambered = null
		update_appearance()

/obj/item/shiptest_gun/examine(mob/user)
	. = ..()
	if(gun_firemodes[firemode_index] == FIREMODE_AIMED)
		. += span_notice("You can cancel a charged shot by pressing the <b>unique action</b> key. By default, this is <b>space</b>.")

/obj/item/shiptest_gun/examine_more(mob/user)
	. = ..()
	if(has_safety)
		. += "The safety is [safety ? span_green("ON") : span_red("OFF")]. Ctrl-Click to toggle the safety."

/obj/item/shiptest_gun/equipped(mob/living/user, slot)
	. = ..()
	if(user.is_holding(src))
		azoom?.Grant(user)
		firemode_action?.Grant(user)
	else
		azoom?.Remove(user)
		firemode_action?.Remove(user)
	if(zoomed && user.get_active_held_item() != src)
		zoom(user, user.dir, FALSE) //we can only stay zoomed in if it's in our hands	//yeah and we only unzoom if we're actually zoomed using the gun!!
	return

//called after the gun has successfully fired its chambered ammo.
/obj/item/shiptest_gun/proc/process_chamber(atom/shooter)
	SEND_SIGNAL(src, COMSIG_GUN_CHAMBER_PROCESSED)
	return FALSE

//check if there's enough ammo/energy/whatever to shoot one time
//i.e if clicking would make it shoot
/obj/item/shiptest_gun/proc/can_shoot()
	if(safety && has_safety)
		return FALSE
	return TRUE

/obj/item/shiptest_gun/emp_act(severity)
	. = ..()
	if(!(. & EMP_PROTECT_CONTENTS))
		for(var/obj/O in contents)
			O.emp_act(severity)

/obj/item/shiptest_gun/proc/recharge_newshot()
	return

/obj/item/shiptest_gun/afterattack(atom/target, mob/living/user, flag, params)
	if(fire_gun(target, user, flag, params))
		return TRUE
	return ..()

/obj/item/shiptest_gun/interact_with_atom(atom/interacting_with, mob/living/user, list/modifiers)
	return try_fire_gun(interacting_with, user, list2params(modifiers))

/obj/item/shiptest_gun/ranged_interact_with_atom(atom/interacting_with, mob/living/user, list/modifiers)
	return try_fire_gun(interacting_with, user, list2params(modifiers))

/obj/item/shiptest_gun/proc/try_fire_gun(atom/target, mob/living/user, params)
	return fire_gun(target, user, user.Adjacent(target), params)

/obj/item/shiptest_gun/proc/fire_gun(atom/target, mob/living/user, flag, params)
	if(!actually_shoots) // you got the dud
		balloon_alert(user, "broken!")
		return
	if(!target) // we have no target
		return
	if(currently_firing_burst) // we're mid burst
		return
	if(SEND_SIGNAL(user, COMSIG_MOB_TRYING_TO_FIRE_GUN, src, target, flag, params) & COMPONENT_CANCEL_GUN_FIRE)
		return
	if(SEND_SIGNAL(src, COMSIG_GUN_TRY_FIRE, user, target, flag, params) & COMPONENT_CANCEL_GUN_FIRE)
		return

	//This var happens when we are either clicking someone next to us or ourselves. Check if we don't want to fire...
	if(flag)
		if(target in user.contents) //can't shoot stuff inside us.
			return
		if(target == user && user.zone_selected != BODY_ZONE_PRECISE_MOUTH) //so we can't shoot ourselves (unless mouth selected)
			return
		if(ismob(target) && target != user)
			if(user.GetComponent(/datum/component/gunpoint))
				to_chat(user, span_warning("You are already holding someone up!"))
				return
			user.AddComponent(/datum/component/gunpoint, target, src)
			return
		if(iscarbon(target))
			var/mob/living/carbon/C = target
			for(var/i in C.all_wounds)
				var/datum/wound/W = i
				if(W.try_treating(src, user))
					return // another coward cured!

	// Good job, but we have exta checks to do...
	return pre_fire(target, user, TRUE, flag, params, null)

/obj/item/shiptest_gun/proc/pre_fire(atom/target, mob/living/user,  message = TRUE, flag, params = null, zone_override = "", bonus_spread = 0, dual_wielded_gun = FALSE)
	add_fingerprint(user)

	// If we have a cooldown, don't do anything, obviously
	if(current_cooldown)
		return

	//We check if the user can even use the gun, if not, we assume the user isn't alive(turrets) so we go ahead.
	if(istype(user))
		var/mob/living/living_user = user
		if(!can_trigger_gun(living_user))
			return

	//If targetting the mouth, we do suicide instead.
	if(flag && doafter_self_shoot && user.zone_selected == BODY_ZONE_PRECISE_MOUTH)
		return handle_suicide(user, target, params)

	//Just because we can pull the trigger doesn't mean it can fire. Mostly for safties.
	if(!can_shoot())
		shoot_with_empty_chamber(user)
		return

	// don't shoot if we're pacifist. however since pacifism is stupid we also check again in process_fire because Lol Lmao
	if(chambered)
		if(HAS_TRAIT(user, TRAIT_PACIFISM)) // If the user has the pacifist trait, then they won't be able to fire [src] if the round chambered inside of [src] is lethal.
			if(chambered.harmful) // Is the bullet chambered harmful?
				to_chat(user, span_warning("[src] is lethally chambered! You don't want to risk harming anyone..."))
				return

	//Dual wielding handling. Not the biggest fan of this, but it's here. Dual berettas not included
	var/loop_counter = 0
	if(ishuman(user) && !dual_wielded_gun)
		var/mob/living/carbon/human/our_cowboy = user
		for(var/obj/item/shiptest_gun/found_gun in our_cowboy.get_held_items())
			if(found_gun == src || found_gun.weapon_weight >= WEAPON_MEDIUM)
				continue
			else if(found_gun.can_trigger_gun(user))
				bonus_spread += dual_wield_spread
				loop_counter++
				addtimer(CALLBACK(found_gun, TYPE_PROC_REF(/obj/item/shiptest_gun, pre_fire), target, user, TRUE, FALSE, params, null, bonus_spread, TRUE), loop_counter)

	//get current firemode
	var/current_firemode = gun_firemodes[firemode_index]
	//FIREMODE_OTHER and its sister directs you to another proc for special handling
	if(current_firemode == FIREMODE_OTHER)
		return process_other(target, user, message, flag, params, zone_override, bonus_spread)
	if(current_firemode == FIREMODE_OTHER_TWO)
		return process_other_two(target, user, message, flag, params, zone_override, bonus_spread)

	//if all of that succeded, we finally get to process firing
	return process_fire(target, user, TRUE, params, null, bonus_spread)

/obj/item/shiptest_gun/proc/process_other(atom/target, mob/living/user, message = TRUE, flag, params = null, zone_override = "", bonus_spread = 0)
	return // used for oddball guns like the e40

/obj/item/shiptest_gun/proc/process_other_two(atom/target, mob/living/user, message = TRUE, flag, params = null, zone_override = "", bonus_spread = 0)
	return // reserved in case another fire mode is needed, if you need special behavior, put it here then call process_fire, or call process_fire and have the special behavior there
	// whatever the fuck that means

/**
 * Handles everything involving firing.
 * * gun.dm is still a fucking mess, and I will document everything next time i get to it... for now this will suffice.
 *
 * Returns TRUE or FALSE depending on if it actually fired a shot.
 * Arguments:
 * * target - The atom we are trying to hit.
 * * user - The living mob firing the gun, if any.
 * * message - Do we show the usual messages? eg. "x fires the y!"
 * * params - Is the params string from byond [/atom/proc/Click] code, see that documentation.
 * * zone_override - The bodypart we attempt to hit, sometimes hits another.
 * * bonus_spread - Adds this value to spread, in this case used by dual wielding.
 * * burst_firing - Not to be confused with currently_firing_burst. This var is TRUE when we are doing a burst except for the first shot in a burst, as to override the spam burst checks.
 * * spread_override - Bullet spread is forcibly set to this. This is because of bursts attempting to share the same burst trajectory.
 * * iteration - Which shot in a burst are we in.
 */

/obj/item/shiptest_gun/proc/process_fire(atom/target, mob/living/user, message = TRUE, params = null, zone_override = "", bonus_spread = 0, burst_firing = FALSE, spread_override = 0, iteration = 0)
	//OKAY, this prevents us from firing until our cooldown is done
	if(!burst_firing) //if we're firing a burst, dont interfere to avoid issues
		if(current_cooldown)
			return FALSE

	//Check one last time for safeties...
	if(!can_shoot())
		shoot_with_empty_chamber(user)
		currently_firing_burst = FALSE
		return FALSE

	//special handling for burst firing
	if(burst_firing)
		if(!user || !currently_firing_burst)
			currently_firing_burst = FALSE
			return FALSE
		if(!issilicon(user))
			//If we aren't holding the gun, what are we doing, stop firing!
			if(iteration > 1 && !(user.is_holding(src)))
				currently_firing_burst = FALSE
				return FALSE

	// do we have a round? if not, stop the whole chain. check for pacifism again because Lol Lmao
	if(chambered)
		if(HAS_TRAIT(user, TRAIT_PACIFISM))
			if(chambered.harmful) // Is the bullet chambered harmful?
				to_chat(user, span_warning("[src] is lethally chambered! You don't want to risk harming anyone..."))
				currently_firing_burst = FALSE //no burst 4 u
				return FALSE
	else
		shoot_with_empty_chamber(user)
		currently_firing_burst = FALSE
		return FALSE

	// we hold the total spread in this var
	var/sprd
	// if we ARE burst firing and don't have "randomspread", we add the burst's penalty on top of it.
	if(burst_firing && !randomspread)
		bonus_spread += burst_size * iteration

	// if we have override (set in bursting) use that, otherwise get a new spread angle
	if(spread_override && !randomspread)
		sprd = spread_override
	else
		sprd = calculate_spread(user, bonus_spread)

	before_firing(target,user)
	//If we cant fire the round, just end the proc here. Otherwise, continue
	if(!chambered.fire_casing(target, user, params, , suppressed, zone_override, sprd, src))
		shoot_with_empty_chamber(user)
		currently_firing_burst = FALSE
		return FALSE
	//Are we PBing someone? If so, set pointblank to TRUE
	shoot_live_shot(user, (get_dist(user, target) <= 1), target, message)

	//process the chamber...
	process_chamber(shooter = user)
	update_appearance()
	//get our current firemode...
	var/current_firemode = gun_firemodes[firemode_index]

	//If we are set to burst fire, then we burst fire!
	if(burst_size > 1 && (current_firemode == FIREMODE_BURST) && !burst_firing)
		currently_firing_burst = TRUE
		for(var/i = 2 to burst_size) //we fire the first burst normally, hence why its 2
			addtimer(CALLBACK(src, PROC_REF(process_fire), target, user, message, params, zone_override, 0, TRUE, sprd, i), burst_delay * (i - 1))

	//if we have a fire delay, set up a cooldown
	if(fire_delay && (!burst_firing && !currently_firing_burst))
		current_cooldown = TRUE
		addtimer(CALLBACK(src, PROC_REF(reset_current_cooldown)), fire_delay)
	if(burst_firing && iteration >= burst_size)
		current_cooldown = TRUE
		addtimer(CALLBACK(src, PROC_REF(reset_current_cooldown)), fire_delay+burst_delay)
		currently_firing_burst = FALSE

	// update our inhands...
	if(user)
		user.update_inhand_icon()

	SSblackbox.record_feedback("tally", "gun_fired", 1, type)
	return TRUE

/obj/item/shiptest_gun/proc/reset_current_cooldown()
	current_cooldown = FALSE

/obj/item/shiptest_gun/proc/shoot_with_empty_chamber(mob/living/user as mob|obj)
	if(!safety && has_safety)
		to_chat(user, span_danger("*[dry_fire_text]*"))
		playsound(src, dry_fire_sound, 30, TRUE)
		return
	to_chat(user, span_danger("Safeties are active on the [src]! Turn them off to fire!"))

/obj/item/shiptest_gun/proc/shoot_live_shot(mob/living/user, pointblank = FALSE, atom/pbtarget = null, message = TRUE)
	var/actual_angle = get_angle(user || get_turf(src), pbtarget)
	var/muzzle_angle = get_angle(get_turf(src), get_turf(pbtarget))

	user?.changeNext_move(clamp(fire_delay, 0, CLICK_CD_RANGE))

	// do muzzle flash
	if(muzzle_flash && !muzzle_flash.applied && flashy)
		handle_muzzle_flash(user, muzzle_angle)

	// do recoil
	simulate_recoil(user, recoil, actual_angle)

	// handle sound and messages
	if(suppressed)
		playsound(user, suppressed_sound, suppressed_volume, vary_fire_sound, ignore_walls = FALSE, extrarange = SILENCED_SOUND_EXTRARANGE, falloff_distance = 0)
	else
		playsound(user, fire_sound, fire_sound_volume, vary_fire_sound)
		if(message)
			if(pointblank)
				user.visible_message(
					span_danger("[user] fires [src] point blank at [pbtarget]!"),
					span_danger("You fire [src] point blank at [pbtarget]!"),
					span_hear("You hear a gunshot!"), COMBAT_MESSAGE_RANGE, pbtarget
				)
				to_chat(pbtarget, span_userdanger("[user] fires [src] point blank at you!"))
			else
				user.visible_message(
					span_danger("[user] fires [src]!"),
					blind_message = span_hear("You hear a gunshot!"),
					vision_distance = COMBAT_MESSAGE_RANGE,
					ignored_mobs = user
				)

	// handle point blank knockback
	if(pointblank && pb_knockback > 0 && ismob(pbtarget) && !QDELETED(pbtarget))
		var/mob/PBT = pbtarget
		var/atom/throw_target = get_edge_target_turf(PBT, user.dir)
		if(!QDELETED(PBT))
			PBT.throw_at(throw_target, pb_knockback, 2)

/obj/item/shiptest_gun/item_ctrl_click(mob/user)
	if(isliving(user) && in_range(src, user) && toggle_safety(user))
		return CLICK_ACTION_SUCCESS
	return ..()

// This is overridden when interacting with attached underbarrel guns.
/obj/item/shiptest_gun/attack_hand_secondary(mob/user, list/modifiers)
	. = ..()
	if(. == SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN)
		return
	if(toggle_safety(user))
		return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN

/obj/item/shiptest_gun/attackby_secondary(obj/item/weapon, mob/user, params)
	. = ..()
	if(. == SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN)
		return
	if(toggle_safety(user))
		return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN

/obj/item/shiptest_gun/attack_self_secondary(mob/user, modifiers)
	. = ..()
	if(. == SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN)
		return
	if(toggle_safety(user))
		return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN

/obj/item/shiptest_gun/proc/toggle_safety(mob/user, silent=FALSE, override_check = FALSE)
	if(!has_safety)
		return FALSE

	// only checks for first level storage e.g pockets, hands, suit storage, belts, nothing in containers
	if(!in_contents_of(user) && !override_check)
		return FALSE

	safety = !safety

	if(!silent)
		playsound(user, 'modular_panda/sound/weapons/gun/general/selector.ogg', 100, TRUE)
		user.visible_message(
			span_notice("[user] turns the [safety_wording] on [src] [safety ? span_green("ON") : span_red("OFF")]."),
			span_notice("You turn the [safety_wording] on [src] [safety ? span_green("ON") : span_red("OFF")]."),
		)
	update_appearance()
	return TRUE

/obj/item/shiptest_gun/attack_hand(mob/user, list/modifiers)
	. = ..()
	update_appearance()

/obj/item/shiptest_gun/pickup(mob/user)
	. = ..()
	update_appearance()

/obj/item/shiptest_gun/dropped(mob/user)
	. = ..()
	update_appearance()
	if(azoom)
		azoom.Remove(user)
	if(firemode_action)
		firemode_action.Remove(user)
	if(zoomed)
		zoom(user, user.dir)

/obj/item/shiptest_gun/throw_impact(atom/hit_atom, datum/thrownthing/throwingdatum)
	. = ..()
	if(prob(GUN_NO_SAFETY_MALFUNCTION_CHANCE_HIGH))
		unsafe_shot(hit_atom)

/obj/item/shiptest_gun/update_overlays()
	. = ..()
	if(ismob(loc) && has_safety)
		var/mutable_appearance/safety_overlay
		safety_overlay = mutable_appearance('modular_panda/icons/obj/guns/safety.dmi')
		if(safety)
			safety_overlay.icon_state = "[safety_wording]-on"
		else
			safety_overlay.icon_state = "[safety_wording]-off"
		. += safety_overlay

/obj/item/shiptest_gun/proc/handle_suicide(mob/living/user, atom/target, params)
	if(!ishuman(user) || !ishuman(target))
		return NONE

	if(current_cooldown)
		return NONE

	var/mob/living/carbon/human/human_user = user
	var/mob/living/carbon/human/human_target = target
	if(human_user == human_target)
		human_target.visible_message(span_warning("[human_user] sticks [src] in [human_user.p_their()] mouth, ready to pull the trigger..."), \
			span_userdanger("You stick [src] in your mouth, ready to pull the trigger..."))
	else
		human_target.visible_message(span_warning("[human_user] points [src] at [human_target]'s head, ready to pull the trigger..."), \
			span_userdanger("[human_user] points [src] at your head, ready to pull the trigger..."))

	current_cooldown = TRUE

	if(!do_after(human_user, 12 SECONDS, human_target) || human_user.zone_selected != BODY_ZONE_PRECISE_MOUTH)
		if(human_user == human_target)
			human_user.visible_message(span_notice("[human_user] decided not to shoot."))
		else if(human_target.Adjacent(human_user))
			human_target.visible_message(span_notice("[human_user] has decided to spare [human_target]"), span_notice("[human_user] has decided to spare your life!"))
		current_cooldown = FALSE
		return ITEM_INTERACT_BLOCKING

	current_cooldown = FALSE

	human_target.visible_message(span_warning("[human_user] pulls the trigger!"), span_userdanger("[(human_user == human_target) ? "You pull" : "[human_user] pulls"] the trigger!"))

	if(!chambered?.BB)
		shoot_with_empty_chamber(human_user)
		return ITEM_INTERACT_BLOCKING

	chambered.BB.damage *= 5
	if(chambered.BB.wound_bonus != CANT_WOUND)
		chambered.BB.wound_bonus += 5

	var/fired = process_fire(human_target, human_user, TRUE, params, BODY_ZONE_HEAD)
	if(!fired && chambered?.BB)
		chambered.BB.damage /= 5
		if(chambered.BB.wound_bonus != CANT_WOUND)
			chambered.BB.wound_bonus -= 5
		return NONE
	return ITEM_INTERACT_SUCCESS

//Happens before the actual projectile creation
/obj/item/shiptest_gun/proc/before_firing(atom/target,mob/user)
	return

/obj/item/shiptest_gun/proc/calculate_recoil(mob/living/user, recoil_amount = 0)
	var/used_min_recoil = min_recoil
	if(user?.client)
		used_min_recoil *= (user.client.prefs.read_preference(/datum/preference/numeric/min_recoil_multiplier) / 100)
	return clamp(recoil_amount, used_min_recoil, INFINITY)

/**
 * Simulates firearm recoil and applies camera feedback when firing.
 *
 * Arguments:
 * * user - The mob firing the gun. Used for recoil calculation and camera shake.
 * * recoil_amount - The base recoil value before modifiers.
 * * firing_angle - The firing direction used to determine camera kick direction.
 */
/obj/item/shiptest_gun/proc/simulate_recoil(mob/living/user, recoil_amount = 0, firing_angle)
	var/total_recoil = calculate_recoil(user, recoil_amount)

	var/actual_angle = firing_angle + rand(-recoil_deviation, recoil_deviation) + 180
	if(actual_angle > 360)
		actual_angle -= 360
	if(total_recoil > 0)
		recoil_camera(user, max(2, round(total_recoil * 0.75)), max(2, round(total_recoil * recoil_backtime_multiplier * 0.75)), total_recoil, actual_angle)

/obj/item/shiptest_gun/proc/calculate_spread(mob/user, bonus_spread)
	var/final_spread = 0
	var/randomized_gun_spread = 0
	var/randomized_bonus_spread = 0

	final_spread += bonus_spread

	randomized_gun_spread = rand(0, spread)

	final_spread += randomized_gun_spread + randomized_bonus_spread

	//Clamp it down to avoid guns with negative spread to have worse recoil...
	final_spread = clamp(final_spread, 0, INFINITY)

	//So spread isn't JUST to the right
	if(prob(50))
		final_spread *= -1

	final_spread = round(final_spread)

	return final_spread

/obj/item/shiptest_gun/proc/handle_muzzle_flash(mob/living/user, firing_angle)
	var/atom/movable/flash_loc = user
	if(!light_on)
		set_light_on(TRUE)
		addtimer(CALLBACK(src, TYPE_PROC_REF(/atom, set_light_on), FALSE), 3)

	//Offset the pixels.
	switch(firing_angle)
		if(0, 360)
			muzzle_flash.pixel_x = 0
			muzzle_flash.pixel_y = 8
			muzzle_flash.layer = initial(muzzle_flash.layer)
		if(1 to 44)
			muzzle_flash.pixel_x = round(4 * ((firing_angle) / 45))
			muzzle_flash.pixel_y = 8
			muzzle_flash.layer = initial(muzzle_flash.layer)
		if(45)
			muzzle_flash.pixel_x = 8
			muzzle_flash.pixel_y = 8
			muzzle_flash.layer = initial(muzzle_flash.layer)
		if(46 to 89)
			muzzle_flash.pixel_x = 8
			muzzle_flash.pixel_y = round(4 * ((90 - firing_angle) / 45))
			muzzle_flash.layer = initial(muzzle_flash.layer)
		if(90)
			muzzle_flash.pixel_x = 8
			muzzle_flash.pixel_y = 0
			muzzle_flash.layer = initial(muzzle_flash.layer)
		if(91 to 134)
			muzzle_flash.pixel_x = 8
			muzzle_flash.pixel_y = round(-3 * ((firing_angle - 90) / 45))
			muzzle_flash.layer = initial(muzzle_flash.layer)
		if(135)
			muzzle_flash.pixel_x = 8
			muzzle_flash.pixel_y = -6
			muzzle_flash.layer = initial(muzzle_flash.layer)
		if(136 to 179)
			muzzle_flash.pixel_x = round(4 * ((180 - firing_angle) / 45))
			muzzle_flash.pixel_y = -6
			muzzle_flash.layer = ABOVE_MOB_LAYER
		if(180)
			muzzle_flash.pixel_x = 0
			muzzle_flash.pixel_y = -6
			muzzle_flash.layer = ABOVE_MOB_LAYER
		if(181 to 224)
			muzzle_flash.pixel_x = round(-6 * ((firing_angle - 180) / 45))
			muzzle_flash.pixel_y = -6
			muzzle_flash.layer = ABOVE_MOB_LAYER
		if(225)
			muzzle_flash.pixel_x = -6
			muzzle_flash.pixel_y = -6
			muzzle_flash.layer = initial(muzzle_flash.layer)
		if(226 to 269)
			muzzle_flash.pixel_x = -6
			muzzle_flash.pixel_y = round(-6 * ((270 - firing_angle) / 45))
			muzzle_flash.layer = initial(muzzle_flash.layer)
		if(270)
			muzzle_flash.pixel_x = -6
			muzzle_flash.pixel_y = 0
			muzzle_flash.layer = initial(muzzle_flash.layer)
		if(271 to 314)
			muzzle_flash.pixel_x = -6
			muzzle_flash.pixel_y = round(8 * ((firing_angle - 270) / 45))
			muzzle_flash.layer = initial(muzzle_flash.layer)
		if(315)
			muzzle_flash.pixel_x = -6
			muzzle_flash.pixel_y = 8
			muzzle_flash.layer = initial(muzzle_flash.layer)
		if(316 to 359)
			muzzle_flash.pixel_x = round(-6 * ((360 - firing_angle) / 45))
			muzzle_flash.pixel_y = 8
			muzzle_flash.layer = initial(muzzle_flash.layer)

	muzzle_flash.transform = null
	muzzle_flash.transform = turn(muzzle_flash.transform, firing_angle)
	flash_loc.vis_contents += muzzle_flash
	muzzle_flash.applied = TRUE

	addtimer(CALLBACK(src, PROC_REF(remove_muzzle_flash), flash_loc, muzzle_flash), 0.2 SECONDS)

/obj/item/shiptest_gun/proc/remove_muzzle_flash(atom/movable/flash_loc, obj/effect/muzzle_flash/muzzle_flash)
	if(!QDELETED(flash_loc))
		flash_loc.vis_contents -= muzzle_flash
	muzzle_flash.applied = FALSE

/obj/item/shiptest_gun/proc/unsafe_shot(target)
	if(chambered)
		chambered.fire_casing(target,null, null, null, suppressed, null, 0, src,TRUE)
		playsound(src, fire_sound, 100, TRUE)

// Zoom is a per-gun action so it is only available while the gun is held.
/datum/action/toggle_scope_zoom
	name = "Aim Down Sights"
	check_flags = AB_CHECK_CONSCIOUS|AB_CHECK_HANDS_BLOCKED|AB_CHECK_IMMOBILE|AB_CHECK_LYING
	button_icon = 'modular_panda/icons/mob/actions/actions_items.dmi'
	button_icon_state = "sniper_zoom"

/datum/action/toggle_scope_zoom/Trigger(mob/clicker, trigger_flags)
	if(!istype(target, /obj/item/shiptest_gun) || !..(clicker, trigger_flags))
		return

	var/obj/item/shiptest_gun/gun = target
	gun.zoom(owner, owner.dir)
	gun.min_recoil = gun.min_recoil_aimed

/datum/action/toggle_scope_zoom/Remove(mob/user)
	if(!istype(target, /obj/item/shiptest_gun))
		return ..()

	var/obj/item/shiptest_gun/gun = target
	gun.zoom(user, user.dir, FALSE)

	..()

/obj/item/shiptest_gun/proc/rotate(atom/thing, old_dir, new_dir)
	SIGNAL_HANDLER

	if(ismob(thing))
		var/mob/lad = thing
		lad.client.view_size.zoomOut(zoom_out_amt, zoom_amt, new_dir)

/obj/item/shiptest_gun/proc/zoom(mob/living/user, direc, forced_zoom)
	if(!user || !user.client)
		return

	if(isnull(forced_zoom))
		zoomed = !zoomed
	else
		zoomed = forced_zoom

	if(zoomed)
		RegisterSignal(user, COMSIG_ATOM_DIR_CHANGE, PROC_REF(rotate))
		ADD_TRAIT(user, TRAIT_AIMING, ref(src))
		user.client.view_size.zoomOut(zoom_out_amt, zoom_amt, direc)
		min_recoil = min_recoil_aimed
	else
		UnregisterSignal(user, COMSIG_ATOM_DIR_CHANGE)
		REMOVE_TRAIT(user, TRAIT_AIMING, ref(src))
		user.client.view_size.zoomIn()
		min_recoil = initial(min_recoil)
	return zoomed

/obj/item/shiptest_gun/proc/build_firemodes()
	if(FIREMODE_AIMED in gun_firemodes)
		if(!GetComponent(/datum/component/aimed_fire))
			AddComponent(/datum/component/aimed_fire, aiming_time, aiming_time_fire_threshold, aiming_time_increase_user_movement, aiming_time_increase_angle_multiplier)
		SEND_SIGNAL(src, COMSIG_GUN_DISABLE_AIMEDFIRE)
	for(var/i=1, i <= gun_firemodes.len+1, i++)
		if(default_firemode == gun_firemodes[i])
			firemode_index = i
			set_autofire_mode(gun_firemodes[i] == FIREMODE_FULLAUTO)
			if(gun_firemodes[i] == FIREMODE_AIMED)
				SEND_SIGNAL(src, COMSIG_GUN_ENABLE_AIMEDFIRE)
			if(gun_firemodes.len > 1 && !firemode_action)
				firemode_action = new(src)
			return

	firemode_index = 1
	CRASH("default_firemode isn't in the gun_firemodes list of [src.type]!! Defaulting to 1!!")

/obj/item/shiptest_gun/ui_action_click(mob/user, actiontype)
	if(istype(actiontype, /datum/action/item_action/toggle_firemode))
		fire_select(user)
	else
		..()

//If a gun does not already have a secondary_action set, and has more than one firemode, the firemode can be toggled with the secondary action: default being shift+space
/obj/item/shiptest_gun/secondary_action(user)
	if(gun_firemodes.len > 1)
		fire_select(user)
	else
		..()

/obj/item/shiptest_gun/proc/fire_select(mob/user)

	//gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_BURST, FIREMODE_FULLAUTO, FIREMODE_OTHER)

	firemode_index++
	if(firemode_index > gun_firemodes.len)
		firemode_index = 1 //reset to the first index if it's over the limit. Byond arrays start at 1 instead of 0, hence why its set to 1.

	var/current_firemode = gun_firemodes[firemode_index]
	set_autofire_mode(current_firemode == FIREMODE_FULLAUTO)

	if(current_firemode == FIREMODE_AIMED)
		SEND_SIGNAL(src, COMSIG_GUN_ENABLE_AIMEDFIRE)
	else
		SEND_SIGNAL(src, COMSIG_GUN_DISABLE_AIMEDFIRE)
//wawa
	to_chat(user, span_notice("Switched to [gun_firenames[current_firemode]]."))
	playsound(user, 'modular_panda/sound/weapons/gun/general/selector.ogg', 100, TRUE)
	update_appearance()
	if(firemode_action)
		firemode_action.build_all_button_icons()

/obj/item/shiptest_gun/proc/set_autofire_mode(enabled)
	var/datum/component/automatic_fire/autofire_component = GetComponent(/datum/component/automatic_fire)
	if(enabled)
		if(!autofire_component)
			AddComponent(/datum/component/automatic_fire, fire_delay)
	else if(autofire_component)
		qdel(autofire_component)

/datum/action/item_action/toggle_firemode/build_button_icon(atom/movable/screen/movable/action_button/button, update_flags = ALL, force = FALSE)
	var/obj/item/shiptest_gun/our_gun = target

	var/current_firemode = our_gun.gun_firemodes[our_gun.firemode_index]
	//tldr; if we have adjust_fire_select_icon_state_on_safety as true, we append "safety_" to the prefix, otherwise nothing.
	var/safety_prefix = "[our_gun.adjust_fire_select_icon_state_on_safety ? "[our_gun.safety ? "safety_" : ""]" : ""]"
	button_icon_state = "[safety_prefix][our_gun.fire_select_icon_state_prefix][current_firemode]"
	return ..(button, update_flags, force)
