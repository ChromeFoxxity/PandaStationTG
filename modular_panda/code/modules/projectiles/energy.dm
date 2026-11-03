// subtype for all energy guns
/*
/obj/item/gun/modular/energy
	name = "energy gun"
	desc = "A profoundly boring and basic energy-based gun. You get the feeling you shouldn't be seeing this and should file a bug report."
	icon = 'icons/obj/guns/energy.dmi'
	icon_state = "laser"
	inhand_icon_state = "spur"

	abstract_type = /obj/item/gun/modular/energy

	muzzleflash_iconstate = "muzzle_flash_laser"
	light_color = COLOR_SOFT_RED

	has_safety = TRUE
	safety = TRUE
	ammo_x_offset = 2

	gun_firemodes = list(FIREMODE_SEMIAUTO)
	default_firemode = FIREMODE_SEMIAUTO
	tac_reloads = FALSE
	tactical_reload_delay = 1.2 SECONDS
	fire_select_icon_state_prefix = "laser_"

	default_ammo_type = /obj/item/stock_parts/power_store/cell/gun

	// AMMO TYPE SELECTION //
	var/ammotype_index // currently selected ammo type

	// LATCHING //
	var/latch_closed = TRUE
	var/latch_toggle_delay = 0.6 SECONDS
	///latch icon state(for overriding)
	var/latch_icon_state = "latch"
	///do we always show the latch? For snowflaked latches i.e. cybersun weapons
	var/always_show_latch = FALSE
	//file to pull the latch icon from
	var/latch_icon = 'icons/obj/guns/cell_latch.dmi'

	// RELOADING - ENERGY //
	var/obj/item/stock_parts/power_store/cell/gun/cell // type of cell we use
	var/can_charge = TRUE // can we put this in a recharger
	var/selfcharge = FALSE // do we restore power by ourself
	var/charge_timer = 0
	var/charge_delay = 8
	var/use_cyborg_cell = FALSE // can we pull power from a borg cell
	var/list/ammo_type = list(/obj/item/ammo_casing/energy) // what type of energy projectile are we firing?

/obj/item/gun/modular/energy/get_cell()
	return cell

/obj/item/gun/modular/energy/Initialize(mapload, spawn_empty)
	. = ..()
	if(spawn_empty)
		if(internal_magazine)
			spawn_no_ammo = TRUE
		else
			default_ammo_type = FALSE

	if(default_ammo_type)
		cell = new default_ammo_type(src, spawn_no_ammo)
	build_ammotypes()
	update_ammo_types()
	recharge_newshot(TRUE)
	if(selfcharge)
		START_PROCESSING(SSobj, src)
	update_appearance()

/obj/item/gun/modular/energy/ComponentInitialize()
	. = ..()
	AddElement(/datum/element/update_icon_updates_onmob)

/obj/item/gun/modular/energy/proc/update_ammo_types()
	var/obj/item/ammo_casing/energy/shot
	for (var/i = 1, i <= ammo_type.len, i++)
		var/shottype = ammo_type[i]
		shot = new shottype(src)
		ammo_type[i] = shot
	shot = ammo_type[select]
	fire_sound = shot.fire_sound
	fire_delay = shot.delay

/obj/item/gun/modular/energy/Destroy()
	if (cell)
		QDEL_NULL(cell)
	STOP_PROCESSING(SSobj, src)
	. = ..()
	ammo_type.Cut()

/obj/item/gun/modular/energy/handle_atom_del(atom/A)
	if(A == cell)
		cell = null
		update_appearance()
	return ..()

/obj/item/gun/modular/energy/process(seconds_per_tick)
	if(selfcharge && cell && cell.percent() < 100)
		charge_timer += seconds_per_tick
		if(charge_timer < charge_delay)
			return
		charge_timer = 0
		cell.give(1000) //WS Edit - Egun energy cells
		if(!chambered) //if empty chamber we try to charge a new shot
			recharge_newshot(TRUE)
		update_appearance()

//ATTACK HAND IGNORING PARENT RETURN VALUE
/obj/item/gun/modular/energy/attack_hand(mob/user)
	if(!internal_magazine && loc == user && user.is_holding(src) && cell && tac_reloads)
		eject_cell(user)
		return
	return ..()

/obj/item/gun/modular/energy/attackby(obj/item/A, mob/user, params)
	if(..())
		return FALSE

	if (!internal_magazine && (A.type in (allowed_ammo_types - blacklisted_ammo_types)))
		var/obj/item/stock_parts/power_store/cell/gun/C = A
		if (!cell)
			return insert_cell(user, C)
		else
			if (tac_reloads)
				eject_cell(user, C)

/obj/item/gun/modular/energy/proc/insert_cell(mob/user, obj/item/stock_parts/cell/gun/C)
	if(!latch_closed)
		if(user.transferItemToLoc(C, src))
			cell = C
			to_chat(user, span_notice("You load the [C] into \the [src]."))
			playsound(src, load_sound, load_sound_volume, load_sound_vary)
			update_appearance()
			return TRUE
		else
			to_chat(user, span_warning("You cannot seem to get \the [src] out of your hands!"))
			return FALSE
	else
		to_chat(user, span_warning("The [src]'s cell retainment clip is latched!"))
		return FALSE

/obj/item/gun/modular/energy/proc/eject_cell(mob/user, obj/item/stock_parts/cell/gun/tac_load = null)
	playsound(src, load_sound, load_sound_volume, load_sound_vary)
	cell.forceMove(drop_location())
	var/obj/item/stock_parts/power_store/cell/gun/old_cell = cell
	old_cell.update_appearance()
	cell = null
	update_appearance()
	if(user)
		to_chat(user, span_notice("You pull the cell out of \the [src]."))
		if(tac_load && tac_reloads)
			if(do_after(user, tactical_reload_delay, src, hidden = TRUE))
				if(insert_cell(user, tac_load))
					to_chat(user, span_notice("You perform a tactical reload on \the [src]."))
				else
					to_chat(user, span_warning("You dropped the old cell, but the new one doesn't fit. How embarassing."))
			else
				to_chat(user, span_warning("Your reload was interupted!"))
				return

		user.put_in_hands(old_cell)
	update_appearance()

/obj/item/gun/modular/energy/unique_action(mob/living/user)
	if(..())
		return

	if(!internal_magazine && latch_closed)
		to_chat(user, span_notice("You start to unlatch the [src]'s power cell retainment clip..."))
		if(do_after(user, latch_toggle_delay, src, IGNORE_USER_LOC_CHANGE))
			to_chat(user, span_notice("You unlatch the [src]'s power cell retainment clip " + span_red("OPEN") + "."))
			playsound(src, 'sound/items/taperecorder/taperecorder_play.ogg', 50, FALSE)
			tac_reloads = TRUE
			latch_closed = FALSE
			update_appearance()

	else if(!internal_magazine && !latch_closed)
		to_chat(user, span_warning("You start to latch the [src]'s power cell retainment clip..."))

		if (do_after(user, latch_toggle_delay, src, IGNORE_USER_LOC_CHANGE))
			to_chat(user, span_notice("You latch the [src]'s power cell retainment clip " + span_green("CLOSED") + "."))
			playsound(src, 'sound/items/taperecorder/taperecorder_close.ogg', 50, FALSE)
			tac_reloads = FALSE
			latch_closed = TRUE
			update_appearance()
	return

//If an energy gun has both a variable firerate and a variable ammotype, prioritize switching the firerate. Otherwise, swap the ammotype.
/obj/item/gun/modular/energy/secondary_action(user)
	if(gun_firemodes.len > 1)
		fire_select(user)
	else if (ammo_type.len > 1)
		select_fire(user)
	else
		..()

/obj/item/gun/modular/energy/can_shoot(visuals)
	if(safety && !visuals)
		return FALSE
	var/obj/item/ammo_casing/energy/shot = ammo_type[select]
	return !QDELETED(cell) ? (cell.charge >= shot.e_cost) : FALSE

/obj/item/gun/modular/energy/ui_action_click(mob/user, actiontype)
	if (istype(actiontype, /datum/action/item_action/toggle_ammotype))
		select_fire(user)
		update_appearance()
	else
		..()

/datum/action/item_action/toggle_ammotype/UpdateButtonIcon(status_only = FALSE, force = FALSE)
	var/obj/item/gun/modular/energy/our_gun = target
	var/obj/item/ammo_casing/energy/shot = our_gun.ammo_type[our_gun.select]
	var/current_ammotype = shot.select_name

	var/manufacturer_prefix = "fallback"
	if (our_gun.manufacturer == MANUFACTURER_EOEHOMA)
		manufacturer_prefix = "eoehoma"
	else if (our_gun.manufacturer == MANUFACTURER_SHARPLITE_NEW)
		manufacturer_prefix = "sharplite"
	else if (our_gun.manufacturer == MANUFACTURER_PGF)
		manufacturer_prefix = "etherbor"
	else if (our_gun.manufacturer == MANUFACTURER_CYBERSUN)
		manufacturer_prefix = "cybersun"
	else if (our_gun.manufacturer == MANUFACTURER_MINUTEMAN_LASER)
		manufacturer_prefix = "clip"
	else
		current_ammotype = "fallback"

	current_ammotype = lowertext(current_ammotype)

	// A list of all ammotypes that have icons for them
	if (!(current_ammotype in list("kill", "disable", "overcharge", "stun", "ion", "energy", "lethal", "medium", "heavy", "focus", "scatter", "flare", "lorentz", "ionization")))
		current_ammotype = "fallback"

	button_icon_state = "[manufacturer_prefix]["_laser_"][current_ammotype]"

	return ..()

/obj/item/gun/modular/energy/proc/select_fire(mob/living/user)
	select++
	if (select > ammo_type.len)
		select = 1
	var/obj/item/ammo_casing/energy/shot = ammo_type[select]
	fire_sound = shot.fire_sound
	fire_delay = shot.delay
	if (shot.select_name)
		to_chat(user, span_notice("[src] is now set to [shot.select_name]."))
	chambered = null
	playsound(user, 'sound/weapons/gun/general/selector.ogg', 100, TRUE)
	recharge_newshot(TRUE)
	update_appearance()
	return

/obj/item/gun/modular/energy/update_icon_state()
	if(initial(icon_state))
		return ..()
	var/ratio = get_charge_ratio()
	var/new_icon_state = ""
	new_icon_state = initial(icon_state)
	if(modifystate)
		var/obj/item/ammo_casing/energy/shot = ammo_type[select]
		new_icon_state += "[shot.select_name]"
	new_icon_state += "[ratio]"
	icon_state = new_icon_state
	return ..()

/obj/item/gun/modular/energy/update_overlays()
	. = ..()
	if(!automatic_charge_overlays || QDELETED(src))
		return
	// Every time I see code this "flexible", a kitten fucking dies //it got worse //help
	//todo: refactor this a bit to allow showing of charge on a gun's cell
	var/overlay_icon_state = "[icon_state]_charge"
	var/obj/item/ammo_casing/energy/shot = ammo_type[modifystate ? select : 1]
	var/ratio = get_charge_ratio()
	if((ismob(loc) && !internal_magazine) || always_show_latch)
		var/mutable_appearance/latch_overlay
		latch_overlay = mutable_appearance(latch_icon)
		if(latch_closed)
			if(cell)
				latch_overlay.icon_state = "[latch_icon_state]-on-full"
			else
				latch_overlay.icon_state = "[latch_icon_state]-on-empty"
		else
			if(cell)
				latch_overlay.icon_state = "[latch_icon_state]-off-full"
			else
				latch_overlay.icon_state = "[latch_icon_state]-off-empty"
		. += latch_overlay
	if(cell)
		. += "[icon_state]_cell"
		if(ratio == 0)
			. += "[icon_state]_cellempty"
	if(ratio == 0)
		if(modifystate)
			. += "[icon_state]_[shot.select_name]"
		. += "[icon_state]_empty"
	else
		if(!shaded_charge)
			if(modifystate)
				. += "[icon_state]_[shot.select_name]"
				overlay_icon_state += "_[shot.select_name]"
			var/mutable_appearance/charge_overlay = mutable_appearance(icon, overlay_icon_state)
			for(var/i = ratio, i >= 1, i--)
				charge_overlay.pixel_x = ammo_x_offset * (i - 1)
				charge_overlay.pixel_y = ammo_y_offset * (i - 1)
				. += new /mutable_appearance(charge_overlay)
		else
			if(modifystate)
				. += "[icon_state]_charge[ratio]_[shot.select_name]" //:drooling_face:
			else
				. += "[icon_state]_charge[ratio]"

///Used by update_icon_state() and update_overlays()
/obj/item/gun/modular/energy/proc/get_charge_ratio()
	return can_shoot(visuals = TRUE) ? CEILING(clamp(cell.charge / cell.maxcharge, 0, 1) * charge_sections, 1) : 0
	// Sets the ratio to 0 if the gun doesn't have enough charge to fire, or if its power cell is removed.

/obj/item/gun/modular/energy/vv_edit_var(var_name, var_value)
	switch(var_name)
		if(NAMEOF(src, selfcharge))
			if(var_value)
				START_PROCESSING(SSobj, src)
			else
				STOP_PROCESSING(SSobj, src)
	. = ..()

/obj/item/gun/modular/energy/examine(mob/user)
	. = ..()
	if(!internal_magazine)
		. += "The cell retainment latch is [latch_closed ? span_green("CLOSED") : span_red("OPEN")]. Press the Unique Action Key to toggle the latch. By default, this is <b>space</b>."
	var/obj/item/ammo_casing/energy/shot = ammo_type[select]
	if(ammo_type.len > 1)
		. += "You can switch ammo modes by pressing the <b>Ammo Toggle</b> button."
	if(cell)
		. += "\The [name]'s cell has [cell.percent()]% charge remaining."
		. += "\The [name] has [round(cell.charge/shot.e_cost)] shots remaining on <b>[shot.select_name]</b> mode."
	else
		. += span_notice("\The [name] doesn't seem to have a cell!")
*/
