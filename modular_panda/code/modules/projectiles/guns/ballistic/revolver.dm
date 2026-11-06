// contains the basetype for revolvers

#define REVOLVER_ROTATE_LEFT "rotate chamber left"
#define REVOLVER_ROTATE_RIGHT "rotate chamber right"
#define REVOLVER_AUTO_ROTATE_RIGHT_LOADING "auto rotate right when loading ammo"
#define REVOLVER_AUTO_ROTATE_LEFT_LOADING "auto rotate left when loading ammo"
#define REVOLVER_EJECT_CURRENT "eject current bullet"
#define REVOLVER_EJECT_ALL "auto eject all bullets"

/obj/item/shiptest_gun/ballistic/revolver
	name = "I DEMAND!!!"
	desc = "The mere sight of this revolver fills you with the compulsion to file a bug report. Yes, you. After this round. Make one."
	icon_state = "revolver"
	abstract_type = /obj/item/shiptest_gun/ballistic/revolver
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/cylinder
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/cylinder,
	)
	fire_sound = 'modular_panda/sound/weapons/gun/revolver/shot.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/revolver/load_bullet.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/revolver/empty.ogg'
	vary_fire_sound = FALSE
	fire_sound_volume = 90
	dry_fire_sound = 'modular_panda/sound/weapons/gun/revolver/dry_fire.ogg'
	casing_ejector = FALSE
	internal_magazine = TRUE
	bolt_type = BOLT_TYPE_NO_BOLT
	tac_reloads = FALSE

	fire_delay = 0.4 SECONDS
	spread = 4
	recoil = 2
	dry_fire_text = "snap"

	gun_firemodes = list(FIREMODE_SEMIAUTO)
	default_firemode = FIREMODE_SEMIAUTO

	safety_wording = "safety"

	// SPINNING //
	var/spin_delay = 10
	var/recent_spin = 0

	// GATE LOADED //
	var/gate_loaded = FALSE // are we a cowboy gun that unloads one at a time
	var/gate_offset = 5 // index of the accessible round when gate loaded
	var/gate_load_direction = REVOLVER_AUTO_ROTATE_RIGHT_LOADING // which way do we spin when loading?

/obj/item/shiptest_gun/ballistic/revolver/examine(mob/user)
	. = ..()
	. += "<span class='info'>You can use the revolver with your <b>other empty hand</b> to empty the cylinder.</span>"

/obj/item/shiptest_gun/ballistic/revolver/process_chamber(empty_chamber = TRUE, from_firing = TRUE, chamber_next_round = TRUE, atom/shooter)
	SEND_SIGNAL(src, COMSIG_UPDATE_AMMO_HUD)
	return ..()

/obj/item/shiptest_gun/ballistic/revolver/attack_hand(mob/user)
	if(loc == user && user.is_holding(src))
		var/num_unloaded = unload_all_ammo(user)
		if (num_unloaded)
			to_chat(user, "<span class='notice'>You unload [num_unloaded] [cartridge_wording]\s from [src].</span>")
			if(!gate_loaded)
				playsound(user, eject_sound, eject_sound_volume, eject_sound_vary)
			SEND_SIGNAL(src, COMSIG_UPDATE_AMMO_HUD)
			update_appearance()
			return
	else
		return ..()

// code for dumping all the ammo out of the revolver
// either all at once or one at a time depending on if it's gate loaded
/obj/item/shiptest_gun/ballistic/revolver/proc/unload_all_ammo(mob/living/user)
	var/num_unloaded = 0

	if(!gate_loaded) //"normal" revolvers
		for(var/obj/item/shiptest_ammo_casing/casing_to_eject in get_ammo_list(FALSE, TRUE))
			if(!casing_to_eject)
				continue
			eject_casing(user, casing_to_eject)
			num_unloaded++
		chamber_round(FALSE)
		return num_unloaded
	else // gate loaded
		var/num_to_unload = magazine.max_ammo
		if(!get_ammo_list(FALSE))
			return num_unloaded

		for(var/i in 1 to num_to_unload)
			var/doafter_time = 0.4 SECONDS
			if(!do_after(user, doafter_time, user, timed_action_flags = IGNORE_USER_LOC_CHANGE))
				break
			if(!eject_chamber(user))
				doafter_time = 0 SECONDS
			else
				num_unloaded++
			if(!do_after(user, doafter_time, user, timed_action_flags = IGNORE_USER_LOC_CHANGE))
				break
			chamber_round(TRUE, TRUE)

	if (num_unloaded)
		SEND_SIGNAL(src, COMSIG_UPDATE_AMMO_HUD)
		update_appearance()
		return num_unloaded

/obj/item/shiptest_gun/ballistic/revolver/proc/eject_chamber(mob/living/user, obj/item/shiptest_ammo_casing/casing_to_eject, casing_index)
	var/list/rounds = magazine.ammo_list()
	if(!casing_to_eject)
		casing_to_eject = rounds[gate_offset + 1] //byond arrays start at 1, so we add 1 to get the correct index
	if(!casing_to_eject) //if theres STILL nothing, we cancel this
		if(user)
			to_chat(user, "<span class='warning'>There's nothing in the gate to eject from [src]!</span>")
		return FALSE
	playsound(src, eject_sound, eject_sound_volume, eject_sound_vary)
	eject_casing(user, casing_to_eject)
	if(!gate_loaded)
		magazine.stored_ammo[casing_index] = null
		chamber_round(FALSE)
	else
		magazine.stored_ammo[gate_offset + 1] = null
	SEND_SIGNAL(src, COMSIG_UPDATE_AMMO_HUD)
	update_appearance()

	if(user)
		to_chat(user, "<span class='notice'>You eject the [cartridge_wording] from [src].</span>")
	return TRUE

// checks for making sure a round we're trying to insert is okay
/obj/item/shiptest_gun/ballistic/revolver/proc/insert_casing(mob/living/user, obj/item/shiptest_ammo_casing/casing_to_insert, allow_ejection, display_messages)
	if(!casing_to_insert)
		return FALSE

// Check if the bullet's caliber matches the magazine's caliber.If not, send a warning message to the user and return FALSE.
	if(casing_to_insert.caliber != magazine.caliber)
		to_chat(user, "<span class='warning'>\The [casing_to_insert] is not suitable for [src].</span>")
		return FALSE

	var/list/rounds = magazine.ammo_list()
	var/obj/item/shiptest_ammo_casing/slot = rounds[gate_offset + 1] //byond arrays start at 1, so we add 1 to get the correct index
	var/doafter_time = 0.4 SECONDS
	if(!gate_loaded) //"normal" revolvers
		for(var/i in 1 to magazine.stored_ammo.len)
			var/obj/item/shiptest_ammo_casing/casing_to_eject = magazine.stored_ammo[i]
			if(casing_to_eject && !casing_to_eject.BB && allow_ejection)
				eject_chamber(user, casing_to_eject, i)

			casing_to_eject = magazine.stored_ammo[i] //check again
			if(casing_to_eject)
				continue
			else
				magazine.stored_ammo[i] = casing_to_insert
				casing_to_insert.forceMove(magazine)
				chamber_round(FALSE)
				break
	else
		if(slot && !slot.BB && allow_ejection)
			if(!do_after(user, doafter_time, user, timed_action_flags = IGNORE_USER_LOC_CHANGE))
				eject_chamber(user)

		rounds = magazine.ammo_list()
		slot = rounds[gate_offset + 1] //check again
		if(slot)
			if(display_messages)
				to_chat(user, "<span class='warning'>There's already a casing in the gate of [src]!</span>")
			return FALSE

		magazine.stored_ammo[gate_offset + 1] = casing_to_insert
		casing_to_insert.forceMove(magazine)

	playsound(src, load_sound, load_sound_volume, load_sound_vary)
	SEND_SIGNAL(src, COMSIG_UPDATE_AMMO_HUD)
	update_appearance()
	if(user && display_messages)
		to_chat(user, "<span class='notice'>You load the [cartridge_wording] into [src].</span>")
	return TRUE

// attackby - reloading code is here
/obj/item/shiptest_gun/ballistic/revolver/attackby(obj/item/attacking_obj, mob/user, params)
	if(!(istype(attacking_obj, /obj/item/shiptest_ammo_casing) || istype(attacking_obj, /obj/item/shiptest_ammo_box)))
		return ..()

	if(istype(attacking_obj, /obj/item/shiptest_ammo_casing))
		insert_casing(user, attacking_obj, TRUE, TRUE)
		return

	var/obj/item/shiptest_ammo_box/attacking_box = attacking_obj
	var/num_loaded = 0
	var/is_stack = istype(attacking_obj, /obj/item/shiptest_ammo_box/magazine/ammo_stack)
	var/num_to_load = 0

	// for normal revolvers we are replacing spent casings, not just empty slots
	if(is_stack && !gate_loaded)
		num_to_load = magazine.max_ammo - get_ammo(FALSE, FALSE)
	else
		var/list/ammo_list_no_empty = get_ammo_list(FALSE)
		listclearnulls(ammo_list_no_empty)
		num_to_load = magazine.max_ammo - LAZYLEN(ammo_list_no_empty) //get the number of empty bits

	if(!num_to_load)
		to_chat(user, span_warning("There's no empty space in [src]!"))
		return TRUE

	var/tries = 0
	for(var/obj/item/shiptest_ammo_casing/casing_to_insert in attacking_box.stored_ammo)
		if(!casing_to_insert || (magazine.caliber && casing_to_insert.caliber != magazine.caliber) || (!magazine.caliber && casing_to_insert.type != magazine.ammo_type))
			break
		var/doafter_time = gate_loaded ? 0.4 SECONDS : 0.5 SECONDS
		if(!gate_loaded && magazine.instant_load && attacking_box.instant_load)
			doafter_time = 0 SECONDS
		if(!do_after(user, doafter_time, user, timed_action_flags = IGNORE_USER_LOC_CHANGE))
			break
		if(casing_to_insert.loc != attacking_box) // make sure bullet has not left stack
			break
		if(!insert_casing(user, casing_to_insert, !gate_loaded && is_stack, FALSE))
			if(gate_loaded)
				doafter_time = 0 SECONDS
			else
				break
		else
			num_loaded++
			attacking_box.update_ammo_count()
			attacking_box.stored_ammo -= casing_to_insert
		if(gate_loaded)
			if(!do_after(user, doafter_time, user, timed_action_flags = IGNORE_USER_LOC_CHANGE))
				break
			switch(gate_load_direction)
				if(REVOLVER_AUTO_ROTATE_RIGHT_LOADING)
					chamber_round(TRUE)
				if(REVOLVER_AUTO_ROTATE_LEFT_LOADING)
					chamber_round(TRUE, TRUE)
		tries++
		if(tries >= magazine.max_ammo || num_loaded >= num_to_load)
			break
	if(num_loaded)
		to_chat(user, span_notice("You load [num_loaded] [cartridge_wording]\s into [src]."))
		attacking_box.update_ammo_count()
		update_appearance()
		return TRUE

// move a new round into "chambered" for firing
/obj/item/shiptest_gun/ballistic/revolver/chamber_round(spin_cylinder = TRUE, counter_clockwise = FALSE)
	if(spin_cylinder)
		chambered = magazine.get_round(TRUE, counter_clockwise)
		playsound(src, 'modular_panda/sound/weapons/gun/revolver/spin_single.ogg', 100, FALSE)
	else
		chambered = magazine.stored_ammo[1]
	SEND_SIGNAL(src, COMSIG_UPDATE_AMMO_HUD)

// pop up our radial menu when we altclick
/obj/item/shiptest_gun/ballistic/revolver/click_alt(mob/user)
	var/chamber_options = list(
		REVOLVER_ROTATE_LEFT = image(icon = 'modular_panda/icons/hud/radial.dmi', icon_state = "radial_revolver_left"),
		REVOLVER_ROTATE_RIGHT = image(icon = 'modular_panda/icons/hud/radial.dmi', icon_state = "radial_revolver_right"),
		REVOLVER_AUTO_ROTATE_LEFT_LOADING = image(icon = 'modular_panda/icons/hud/radial.dmi', icon_state = "radial_revolver_auto_left"),
		REVOLVER_EJECT_ALL = image(icon = 'modular_panda/icons/hud/radial.dmi', icon_state = "radial_revolver_eject_all"),
		REVOLVER_EJECT_CURRENT = image(icon = 'modular_panda/icons/hud/radial.dmi', icon_state = "radial_revolver_eject_one"),
		REVOLVER_AUTO_ROTATE_RIGHT_LOADING = image(icon = 'modular_panda/icons/hud/radial.dmi', icon_state = "radial_revolver_auto_right"),
		)

	var/image/editing_image = chamber_options[gate_load_direction]
	editing_image.icon_state = "radial_revolver_auto_[gate_load_direction == REVOLVER_AUTO_ROTATE_RIGHT_LOADING ? "right":"left"]_on"

	if(!gate_loaded) //these are completely redundant if you can reload everything with a speedloader
		chamber_options -= REVOLVER_AUTO_ROTATE_LEFT_LOADING
		chamber_options -= REVOLVER_AUTO_ROTATE_RIGHT_LOADING
		chamber_options -= REVOLVER_EJECT_CURRENT


	var/pick = show_radial_menu(user, src, chamber_options, custom_check = CALLBACK(src, PROC_REF(can_use_radial), user), require_near = TRUE)
	if(isnull(pick))
		return CLICK_ACTION_BLOCKING

	switch(pick)
		if(REVOLVER_ROTATE_LEFT)
			chamber_round(TRUE, TRUE)
		if(REVOLVER_ROTATE_RIGHT)
			chamber_round(TRUE)
		if(REVOLVER_AUTO_ROTATE_RIGHT_LOADING)
			gate_load_direction = REVOLVER_AUTO_ROTATE_RIGHT_LOADING
		if(REVOLVER_AUTO_ROTATE_LEFT_LOADING)
			gate_load_direction = REVOLVER_AUTO_ROTATE_LEFT_LOADING
		if(REVOLVER_EJECT_ALL)
			unload_all_ammo(user)
			return CLICK_ACTION_SUCCESS
		if(REVOLVER_EJECT_CURRENT)
			eject_chamber(user)
	update_appearance()
	return CLICK_ACTION_SUCCESS

/obj/item/shiptest_gun/ballistic/revolver/proc/can_use_radial(mob/user)
	if(QDELETED(src) || !istype(user) || IS_UNCONSCIOUS_OR_CRIT(user) || !in_range(user, src))
		return FALSE
	return TRUE

/obj/item/shiptest_gun/ballistic/revolver/verb/spin()
	set name = "Spin Chamber"
	set category = "Object"
	set desc = "Click to spin your revolver's chamber."

	var/mob/M = usr

	if(M.stat || !in_range(M,src))
		return

	if (recent_spin > world.time)
		return
	recent_spin = world.time + spin_delay

	if(do_spin())
		playsound(usr, "revolver_spin", 30, FALSE)
		usr.visible_message("<span class='notice'>[usr] spins [src]'s chamber.</span>", "<span class='notice'>You spin [src]'s chamber.</span>")
	else
		verbs -= /obj/item/shiptest_gun/ballistic/revolver/verb/spin

/obj/item/shiptest_gun/ballistic/revolver/proc/do_spin()
	var/obj/item/shiptest_ammo_box/magazine/internal/cylinder/C = magazine
	. = istype(C)
	if(.)
		C.spin()
		chamber_round(FALSE)

/obj/item/shiptest_gun/ballistic/revolver/get_ammo(countchambered = FALSE, countempties = TRUE)
	var/boolets = 0 //mature var names for mature people
	if (chambered && countchambered)
		boolets++
	if (magazine)
		boolets += magazine.ammo_count(countempties)
	return boolets

/obj/item/shiptest_gun/ballistic/revolver/examine(mob/user)
	. = ..()
	var/live_ammo = get_ammo(FALSE, FALSE)
	. += "[live_ammo ? live_ammo : "None"] of those are live rounds."
	if (current_skin)
		. += "It can be spun with <b>alt+click</b>"

/obj/item/shiptest_gun/ballistic/revolver/shoot_with_empty_chamber(mob/living/user as mob|obj)
	..()
	if(!safety)
		chamber_round()

// golden revolver. it is here. woe
/obj/item/shiptest_gun/ballistic/revolver/golden
	autowiki_hidden = TRUE //not obtainable afaik
	name = "\improper Golden revolver"
	desc = "This ain't no game, ain't never been no show, And I'll gladly gun down the oldest lady you know. Uses .357 ammo."
	icon_state = "goldrevolver"
	fire_sound = 'sound/items/weapons/resonator_blast.ogg'
	recoil = 8

/obj/item/shiptest_gun/ballistic/revolver/golden/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_REMOVED)

/obj/item/shiptest_gun/ballistic/revolver/viper
	name = "R-23 \"Viper\""
	desc = "An imposing revolver used by officers and certain agents of Syndicate member factions, still favored by station directors and high-ranking officers of the Syndicate. Chambered in .357 Magnum."

	icon = 'modular_panda/icons/obj/guns/manufacturer/scarborough/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/scarborough/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/scarborough/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/scarborough/onmob.dmi'

	icon_state = "viper"
	inhand_icon_state = "sa_generic"

	fire_sound = 'modular_panda/sound/weapons/gun/revolver/viper.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/revolver/viper_prime.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/revolver/load_bullet.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/revolver/empty.ogg'

	dry_fire_sound = 'modular_panda/sound/weapons/gun/revolver/dry_fire.ogg'

	fire_delay = 0.35 SECONDS

	spread = 3
	recoil = 2

	semi_auto = TRUE //double action
	safety_wording = "safety"

/obj/item/shiptest_gun/ballistic/revolver/viper/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/shiptest_gun/ballistic/revolver/viper/indie
	name = "Viper-23"
	desc = "A powerful bull-barrel revolver. Very popular among mercenaries and the occasional well-to-do spacer or pirate for its flashy appearance and powerful cartridge. Chambered in .357 Magnum."

	icon_state = "viper23"
	inhand_icon_state = "viper23"
	spread = 10
	obj_flags = UNIQUE_RENAME

/obj/item/shiptest_gun/ballistic/revolver/montagne
	name = "\improper BA Montagne"
	desc = "An ornate break-open revolver issued to high-ranking members of the Terran Colonial Defense Militia. Chambered in .44."
	icon = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/onmob.dmi'

	icon_state = "montagne"
	inhand_icon_state = "hp_generic"
	recoil = 0

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/cylinder/rev44/montagne
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/cylinder/rev44/montagne,
	)

/obj/item/shiptest_gun/ballistic/revolver/montagne/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_BASTION)

/obj/item/shiptest_gun/ballistic/revolver/ashhand
	name = "BA Ashhand"
	desc = "A massive, long-barreled revolver often used by the Terran Colonial Defense Militia as protection against big game. Uses .45-70 ammo."
	icon = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/onmob.dmi'

	icon_state = "ashhand"
	inhand_icon_state = "ashhand"
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/cylinder/rev4570
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/cylinder/rev4570,
	)
	fire_sound = 'modular_panda/sound/weapons/gun/revolver/shot_hunting.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/revolver/viper_prime.ogg'
	fire_delay = 0.6 SECONDS

	zoom_amt = 4 // Built-in zoom lets the revolver serve as a long-range sidearm.

	spread = 1
	recoil = 2

/obj/item/shiptest_gun/ballistic/revolver/ashhand/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_BASTION)

/obj/item/shiptest_gun/ballistic/revolver/firebrand
	name = "\improper BA Firebrand"
	desc = "An archaic precursor to revolver-type firearms, this gun was rendered completely obsolete millennia ago. While fast to fire, it is extremely inaccurate. Uses .357 ammo."
	icon_state = "pepperbox"
	inhand_icon_state = "hp_generic_fresh"
	icon = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/onmob.dmi'

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/cylinder/pepperbox
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/cylinder/pepperbox,
	)
	spread = 20
	fire_delay = 0 SECONDS
	gate_offset = 4
	semi_auto = TRUE
	safety_wording = "safety"

/obj/item/shiptest_gun/ballistic/revolver/firebrand/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_BASTION)

/obj/item/shiptest_gun/ballistic/revolver/shadow
	name = "\improper BA Shadow"
	desc = "A mid-size revolver. Despite the antiquated design, it is cheap, reliable, and stylish, making it a favorite among fast-drawing spacers and the officers of various militaries, as well as small-time police units. Chambered in .44."
	fire_sound = 'modular_panda/sound/weapons/gun/revolver/cattleman.ogg'
	icon = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/onmob.dmi'
	icon_state = "shadow"
	inhand_icon_state = "shadow"

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/cylinder/rev44
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/cylinder/rev44,
	)
	obj_flags = UNIQUE_RENAME
	gate_loaded = TRUE

	unique_reskin = list(\
		"Shadow" = "shadow",
		"Cattleman" = "shadow_cattleman",
		"General" = "shadow_general",
		"Sheriff" = "shadow_sheriff",
		"Cobra" = "shadow_cobra",
		"Hired Gun" = "shadow_hiredgun",
		"Buntline" = "shadow_buntline",
		"Cavalry" = "shadow_cavalry",
		"Lanchester Special" = "shadow_lanchester"
		)
	unique_reskin_changes_inhand = TRUE

	recoil = 0

/obj/item/shiptest_gun/ballistic/revolver/shadow/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_BASTION)

/obj/item/shiptest_gun/ballistic/revolver/flint
	name = "\improper BA Flint"
	desc = "A small revolver. Its low price and weight make it a popular self-defense option among civilians. Uses .38 Special rounds."
	fire_sound = 'modular_panda/sound/weapons/gun/revolver/shot_light.ogg'
	icon_state = "flint"
	inhand_icon_state = "hp_generic"
	icon = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/onmob.dmi'

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/cylinder/rev38
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/cylinder/rev38,
	)
	obj_flags = UNIQUE_RENAME
	semi_auto = TRUE //double action
	safety_wording = "safety"
	unique_reskin = list("Default" = "flint",
		"Stainless Steel" = "flint_stainless",
		"Gold Trim" = "flint_gold",
		"Leopard Spots" = "flint_leopard",
		"The Peacemaker" = "flint_peacemaker",
		"Black Panther" = "flint_panther"
		)
	w_class = WEIGHT_CLASS_SMALL

	recoil = 0
	fire_delay = 0.2 SECONDS
