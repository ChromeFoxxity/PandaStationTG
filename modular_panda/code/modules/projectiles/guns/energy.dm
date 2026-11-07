/obj/item/shiptest_gun/energy
	name = "energy gun"
	desc = "A profoundly boring and basic energy-based gun. You get the feeling you shouldn't be seeing this and should file a bug report."
	icon = 'modular_panda/icons/obj/guns/energy.dmi'
	icon_state = "laser"
	inhand_icon_state = "spur"

	abstract_type = /obj/item/shiptest_gun/energy

	// GENERAL GUN SETTINGS
	muzzleflash_iconstate = "muzzle_flash_laser"
	light_color = COLOR_SOFT_RED

	has_safety = TRUE
	safety = TRUE

	gun_firemodes = list(FIREMODE_SEMIAUTO)
	default_firemode = FIREMODE_SEMIAUTO
	fire_select_icon_state_prefix = "laser_"

	// POWER CELL SETTINGS
	default_ammo_type = /obj/item/stock_parts/power_store/cell/gun
	allowed_ammo_types = list(
		/obj/item/stock_parts/power_store/cell/gun,
		/obj/item/stock_parts/power_store/cell/gun/upgraded,
		/obj/item/stock_parts/power_store/cell/gun/empty,
		/obj/item/stock_parts/power_store/cell/gun/upgraded/empty,
	)

	// CELL LATCH
	var/latch_closed = TRUE
	var/latch_toggle_delay = 0.6 SECONDS
	var/latch_icon_state = "latch"
	var/always_show_latch = FALSE
	var/latch_icon = 'modular_panda/icons/obj/guns/cell_latch.dmi'

	// ENERGY MANAGEMENT
	var/obj/item/stock_parts/power_store/cell/gun/cell
	var/can_charge = TRUE
	var/selfcharge = FALSE
	var/charge_timer = 0
	var/charge_delay = 8
	var/use_cyborg_cell = FALSE
	var/datum/action/item_action/toggle_ammotype/ammo_type_action
	/// Prefix used to select the ammunition-mode action button icon.
	var/action_icon_manufacturer = "fallback"

	// ENERGY AMMUNITION MODES
	var/list/ammo_type = list(
		/obj/item/shiptest_ammo_casing/energy
	)

/obj/item/shiptest_gun/energy/Initialize(mapload, spawn_empty)
	. = ..()

	if(spawn_empty)
		if(internal_magazine)
			spawn_no_ammo = TRUE
		else
			default_ammo_type = FALSE

	if(default_ammo_type)
		cell = new default_ammo_type(src)

		if(spawn_no_ammo)
			cell.charge = 0
			cell.update_appearance()

	update_ammo_types()
	build_ammotypes()
	recharge_newshot(TRUE)

	if(selfcharge)
		START_PROCESSING(SSobj, src)

	update_appearance()
	AddElement(/datum/element/update_icon_updates_onmob)

/obj/item/shiptest_gun/energy/Destroy()
	if(ammo_type_action)
		QDEL_NULL(ammo_type_action)

	if(cell)
		QDEL_NULL(cell)

	STOP_PROCESSING(SSobj, src)

	. = ..()

	for(var/obj/item/shiptest_ammo_casing/energy/shot as anything in ammo_type)
		if(shot && !QDELETED(shot))
			qdel(shot)

	ammo_type.Cut()

/obj/item/shiptest_gun/energy/get_cell()
	return cell

/obj/item/shiptest_gun/energy/Exited(atom/movable/gone, direction)
	. = ..()

	if(gone == cell)
		cell = null
		update_appearance()

/obj/item/shiptest_gun/energy/process(seconds_per_tick)
	if(selfcharge && cell && cell.percent() < 100)
		charge_timer += seconds_per_tick

		if(charge_timer < charge_delay)
			return

		charge_timer = 0
		cell.give(1000)

		if(!chambered)
			recharge_newshot(TRUE)

		update_appearance()

/obj/item/shiptest_gun/energy/equipped(mob/living/user, slot)
	. = ..()

	if(user.is_holding(src))
		ammo_type_action?.Grant(user)
	else
		ammo_type_action?.Remove(user)

/obj/item/shiptest_gun/energy/dropped(mob/user)
	. = ..()
	ammo_type_action?.Remove(user)

/obj/item/shiptest_gun/energy/proc/update_ammo_types()
	var/obj/item/shiptest_ammo_casing/energy/shot

	for(var/i = 1, i <= ammo_type.len, i++)
		var/shottype = ammo_type[i]
		shot = new shottype(src)
		ammo_type[i] = shot

	if(ammo_type.len)
		select = clamp(select, 1, ammo_type.len)
		shot = ammo_type[select]
		fire_sound = shot.fire_sound
		fire_delay = shot.delay

/datum/action/item_action/toggle_ammotype
	name = "Toggle Energy Mode"
	check_flags = AB_CHECK_CONSCIOUS|AB_CHECK_HANDS_BLOCKED|AB_CHECK_IMMOBILE|AB_CHECK_LYING
	button_icon = 'modular_panda/icons/mob/actions/actions_items.dmi'

/datum/action/item_action/toggle_ammotype/build_button_icon(status_only = FALSE, force = FALSE)
	var/obj/item/shiptest_gun/energy/our_gun = target
	if(!istype(our_gun) || !length(our_gun.ammo_type))
		return

	if(our_gun.select < 1 || our_gun.select > our_gun.ammo_type.len)
		return

	var/obj/item/shiptest_ammo_casing/energy/shot = our_gun.ammo_type[our_gun.select]
	if(!shot)
		return

	var/current_ammotype = lowertext(shot.select_name || "fallback")

	var/list/valid_ammotypes = list(
		"kill",
		"disable",
		"overcharge",
		"stun",
		"ion",
		"energy",
		"lethal",
		"medium",
		"heavy",
		"focus",
		"scatter",
		"flare",
		"lorentz",
		"ionization"
	)

	if(!(current_ammotype in valid_ammotypes))
		current_ammotype = "fallback"

	var/manufacturer_prefix = our_gun.action_icon_manufacturer
	if(!manufacturer_prefix)
		manufacturer_prefix = "fallback"

	button_icon_state = "[manufacturer_prefix]_laser_[current_ammotype]"

	return ..()

/obj/item/shiptest_gun/energy/proc/build_ammotypes()
	if(ammo_type_action)
		QDEL_NULL(ammo_type_action)

	if(ammo_type.len > 1)
		ammo_type_action = new(src)
		ammo_type_action.build_button_icon(force = TRUE)

/obj/item/shiptest_gun/energy/ui_action_click(mob/user, actiontype)
	if(istype(actiontype, /datum/action/item_action/toggle_ammotype))
		select_fire(user)
		update_appearance()
	else
		return ..()

/obj/item/shiptest_gun/energy/proc/select_fire(mob/living/user)
	select++

	if(select > ammo_type.len)
		select = 1

	var/obj/item/shiptest_ammo_casing/energy/shot = ammo_type[select]

	fire_sound = shot.fire_sound
	fire_delay = shot.delay

	if(shot.select_name)
		to_chat(user, span_notice("[src] is now set to [shot.select_name]."))

	chambered = null

	playsound(user, 'modular_panda/sound/weapons/gun/general/selector.ogg', 100, TRUE)

	recharge_newshot(TRUE)
	update_appearance()
	ammo_type_action?.build_button_icon(force = TRUE)

/obj/item/shiptest_gun/energy/secondary_action(user)
	if(gun_firemodes.len > 1)
		fire_select(user)
	else if(ammo_type.len > 1)
		select_fire(user)
	else
		return ..()

/obj/item/shiptest_gun/energy/can_shoot(visuals = FALSE)
	if(safety && has_safety && !visuals)
		return FALSE

	if(!cell || QDELETED(cell))
		return FALSE

	if(!ammo_type || select < 1 || select > ammo_type.len)
		return FALSE

	var/obj/item/shiptest_ammo_casing/energy/shot = ammo_type[select]
	if(!shot || QDELETED(shot))
		return FALSE

	return cell.charge >= shot.e_cost

/obj/item/shiptest_gun/energy/recharge_newshot(no_cyborg_drain)
	if(!ammo_type || !cell || QDELETED(cell))
		return

	if(select < 1 || select > ammo_type.len)
		return

	var/obj/item/shiptest_ammo_casing/energy/shot = ammo_type[select]

	if(use_cyborg_cell && !no_cyborg_drain)
		if(!iscyborg(loc))
			return

		var/mob/living/silicon/robot/R = loc

		if(!R.cell)
			return

		if(!R.cell.use(shot.e_cost))
			shoot_with_empty_chamber(R)
			return

		cell.give(shot.e_cost)

	if(!chambered && cell.charge >= shot.e_cost)
		chambered = shot

		if(!chambered.BB)
			chambered.newshot()

/obj/item/shiptest_gun/energy/process_chamber(atom/shooter)
	if(chambered && !chambered.BB)
		var/obj/item/shiptest_ammo_casing/energy/shot = chambered

		if(cell && !QDELETED(cell))
			cell.use(shot.e_cost)

	chambered = null
	recharge_newshot()

	return ..()

/obj/item/shiptest_gun/energy/process_fire(
	atom/target,
	mob/living/user,
	message = TRUE,
	params = null,
	zone_override = "",
	bonus_spread = 0,
	burst_firing = FALSE,
	spread_override = 0,
	iteration = 0
)
	if(!chambered && can_shoot())
		recharge_newshot(TRUE)

	. = ..(target,user,message,params,zone_override,bonus_spread,burst_firing,spread_override,iteration)

	if(. && !latch_closed && cell && prob(65))
		to_chat(user, span_warning("The [src]'s cell falls out!"))
		eject_cell()

/obj/item/shiptest_gun/energy/emp_act(severity)
	. = ..()

	if(!(. & EMP_PROTECT_CONTENTS))
		if(cell && !QDELETED(cell))
			cell.use(round(cell.charge / severity))

		chambered = null
		recharge_newshot()
		update_appearance()

// CELL HANDLING //

/obj/item/shiptest_gun/energy/attack_hand(mob/user, list/modifiers)
	if(!internal_magazine && loc == user && user.is_holding(src) && cell && tac_reloads)
		eject_cell(user)
		return

	return ..()

/obj/item/shiptest_gun/energy/attack_self(mob/user)
	if(!internal_magazine)
		toggle_cell_latch(user)
		return

	return ..()

/obj/item/shiptest_gun/energy/attackby(obj/item/A, mob/user, params)
	if(..())
		return FALSE

	if(internal_magazine || !(A.type in (allowed_ammo_types - blacklisted_ammo_types)))
		return FALSE

	var/obj/item/stock_parts/power_store/cell/gun/C = A

	if(!cell)
		return insert_cell(user, C)

	if(tac_reloads)
		eject_cell(user, C)
		return TRUE

	return FALSE

/obj/item/shiptest_gun/energy/proc/insert_cell(mob/user, obj/item/stock_parts/power_store/cell/gun/C)
	if(!latch_closed)
		if(user.transferItemToLoc(C, src))
			cell = C
			to_chat(user, span_notice("You load the [C] into [src]."))
			playsound(src, load_sound, load_sound_volume, load_sound_vary)

			recharge_newshot(TRUE)
			update_appearance()
			return TRUE

		to_chat(user, span_warning("You cannot seem to get [src] out of your hands!"))
		return FALSE

	to_chat(user, span_warning("The [src]'s cell retainment clip is latched!"))
	return FALSE

/obj/item/shiptest_gun/energy/proc/eject_cell(mob/user, obj/item/stock_parts/power_store/cell/gun/tac_load = null)
	if(latch_closed || !cell || QDELETED(cell))
		return

	playsound(src, eject_sound, load_sound_volume, load_sound_vary)

	var/obj/item/stock_parts/power_store/cell/gun/old_cell = cell
	old_cell.forceMove(drop_location())
	old_cell.update_appearance()

	cell = null
	update_appearance()

	if(user)
		to_chat(user, span_notice("You pull the cell out of [src]."))

		if(tac_load && tac_reloads)
			if(do_after(user, tactical_reload_delay, src))
				if(insert_cell(user, tac_load))
					to_chat(user, span_notice("You perform a tactical reload on [src]."))
				else
					to_chat(user, span_warning("You dropped the old cell, but the new one doesn't fit."))
			else
				to_chat(user, span_warning("Your reload was interrupted!"))
				return

		user.put_in_hands(old_cell)

	update_appearance()

/obj/item/shiptest_gun/energy/proc/toggle_cell_latch(mob/living/user)
	if(internal_magazine)
		return

	if(latch_closed)
		to_chat(user, span_notice("You start to unlatch [src]'s power cell retainment clip..."))

		if(do_after(user, latch_toggle_delay, src, IGNORE_USER_LOC_CHANGE))
			to_chat(user, span_notice("You unlatch [src]'s power cell retainment clip " + span_red("OPEN") + "."))
			playsound(src, 'sound/items/taperecorder/taperecorder_play.ogg', 50, FALSE)
			tac_reloads = TRUE
			latch_closed = FALSE
			update_appearance()

	else
		to_chat(user, span_warning("You start to latch [src]'s power cell retainment clip..."))

		if(do_after(user, latch_toggle_delay, src, IGNORE_USER_LOC_CHANGE))
			to_chat(user, span_notice("You latch [src]'s power cell retainment clip " + span_green("CLOSED") + "."))
			playsound(src, 'sound/items/taperecorder/taperecorder_close.ogg', 50, FALSE)
			tac_reloads = FALSE
			latch_closed = TRUE
			update_appearance()

// APPEARANCE //

/obj/item/shiptest_gun/energy/update_icon_state()
	if(initial(inhand_icon_state))
		return ..()

	var/ratio = get_charge_ratio()
	var/new_inhand_icon_state = initial(icon_state)

	if(modifystate)
		var/obj/item/shiptest_ammo_casing/energy/shot = ammo_type[select]
		new_inhand_icon_state += "[shot.select_name]"

	new_inhand_icon_state += "[ratio]"
	inhand_icon_state = new_inhand_icon_state

	return ..()


/obj/item/shiptest_gun/energy/update_overlays()
	. = ..()

	if(!automatic_charge_overlays || QDELETED(src))
		return

	var/ratio = get_charge_ratio()
	var/obj/item/shiptest_ammo_casing/energy/shot

	if(ammo_type && ammo_type.len)
		shot = ammo_type[modifystate ? select : 1]

	var/overlay_icon_state = "[icon_state]_charge"

	if((ismob(loc) && !internal_magazine) || always_show_latch)
		var/mutable_appearance/latch_overlay = mutable_appearance(latch_icon)

		if(latch_closed)
			latch_overlay.icon_state = "[latch_icon_state]-on-[cell ? "full" : "empty"]"
		else
			latch_overlay.icon_state = "[latch_icon_state]-off-[cell ? "full" : "empty"]"

		. += latch_overlay

	if(cell)
		. += "[icon_state]_cell"

		if(ratio == 0)
			. += "[icon_state]_cellempty"

	if(ratio == 0)
		if(modifystate && shot)
			. += "[icon_state]_[shot.select_name]"

		. += "[icon_state]_empty"

	else if(!shaded_charge)
		if(modifystate && shot)
			. += "[icon_state]_[shot.select_name]"
			overlay_icon_state += "_[shot.select_name]"

		var/mutable_appearance/charge_overlay = mutable_appearance(icon, overlay_icon_state)

		for(var/i = ratio, i >= 1, i--)
			charge_overlay.pixel_x = ammo_x_offset * (i - 1)
			charge_overlay.pixel_y = ammo_y_offset * (i - 1)
			. += new /mutable_appearance(charge_overlay)

	else
		if(modifystate && shot)
			. += "[icon_state]_charge[ratio]_[shot.select_name]"
		else
			. += "[icon_state]_charge[ratio]"


/obj/item/shiptest_gun/energy/proc/get_charge_ratio()
	if(!cell || QDELETED(cell))
		return 0

	return can_shoot(visuals = TRUE) ? CEILING(clamp(cell.charge / cell.maxcharge, 0, 1) * charge_sections, 1) : 0


/obj/item/shiptest_gun/energy/vv_edit_var(var_name, var_value)
	switch(var_name)
		if(NAMEOF(src, selfcharge))
			if(var_value)
				START_PROCESSING(SSobj, src)
			else
				STOP_PROCESSING(SSobj, src)

	. = ..()


// IGNITION //

/obj/item/shiptest_gun/energy/ignition_effect(atom/A, mob/living/user)
	if(!can_shoot() || !ammo_type[select])
		shoot_with_empty_chamber()
		return ""

	var/obj/item/shiptest_ammo_casing/energy/E = ammo_type[select]
	var/obj/shiptest_projectile/energy/BB = E.BB

	if(!BB)
		return ""

	if(!BB.damage || BB.damage_type == STAMINA)
		user.visible_message(span_danger("[user] tries to light [user.p_their()] [A.name] with [src], but it doesn't do anything."))
		playsound(user, E.fire_sound, 50, TRUE)
		playsound(user, BB.hitsound_non_living, 50, TRUE)
		cell.use(E.e_cost)
		return ""

	if(BB.damage_type != BURN)
		user.visible_message(span_danger("[user] tries to light [user.p_their()] [A.name] with [src], but only succeeds in destroying it."))
		playsound(user, E.fire_sound, 50, TRUE)
		playsound(user, BB.hitsound_non_living, 50, TRUE)
		cell.use(E.e_cost)
		qdel(A)
		return ""

	playsound(user, E.fire_sound, 50, TRUE)
	playsound(user, BB.hitsound_non_living, 50, TRUE)
	cell.use(E.e_cost)

	return span_danger("[user] casually lights their [A.name] with [src].")


/obj/item/shiptest_gun/energy/examine(mob/user)
	. = ..()

	if(!internal_magazine)
		. += "The cell retainment latch is [latch_closed ? span_green("CLOSED") : span_red("OPEN")]. Use the gun in-hand to toggle the latch."

	if(ammo_type && ammo_type.len && select >= 1 && select <= ammo_type.len)
		var/obj/item/shiptest_ammo_casing/energy/shot = ammo_type[select]

		if(ammo_type.len > 1)
			. += "You can switch ammo modes by pressing the <b>Energy Mode</b> button."

		if(cell)
			. += "The [src]'s cell has [cell.percent()]% charge remaining."
			. += "The [src] has [round(cell.charge / shot.e_cost)] shots remaining on <b>[shot.select_name]</b> mode."
		else
			. += "The [src] doesn't seem to have a cell!"

/obj/item/shiptest_gun/energy/unsafe_shot(target)
	. = ..()
	process_chamber()

/obj/item/shiptest_gun/energy/eoehoma
	action_icon_manufacturer = "eoehoma"

/obj/item/shiptest_gun/energy/sharplite
	action_icon_manufacturer = "sharplite"

/obj/item/shiptest_gun/energy/etherbor
	action_icon_manufacturer = "etherbor"

/obj/item/shiptest_gun/energy/cybersun
	action_icon_manufacturer = "cybersun"

/obj/item/shiptest_gun/energy/nanotrasen
	action_icon_manufacturer = "nt"
