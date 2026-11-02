/obj/item/gun/ballistic/modular/revolver
	abstract_type = /obj/item/gun/ballistic/modular/revolver
	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/back.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_righthand.dmi'
	icon_state = "revolver"
	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/cylinder
	fire_sound = 'modular_panda/sound/weapons/gun/revolver/shot.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/revolver/revolver_prime.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/revolver/load_bullet.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/revolver/empty.ogg'
	vary_fire_sound = FALSE
	fire_sound_volume = 90
	dry_fire_sound = 'modular_panda/sound/weapons/gun/revolver/dry_fire.ogg'
	casing_ejector = FALSE
	internal_magazine = TRUE
	bolt_type = BOLT_TYPE_NO_BOLT
	tac_reloads = FALSE
	recoil = 0.5

/obj/item/gun/ballistic/modular/revolver/process_fire(atom/target, mob/living/user, message, params, zone_override, bonus_spread)
	. = ..()
	if(.)
		last_fire = world.time

/obj/item/gun/ballistic/modular/revolver/chamber_round(spin_cylinder = TRUE, replace_new_round)
	if(!magazine) //if it mag was qdel'd somehow.
		CRASH("revolver tried to chamber a round without a magazine!")
	if(chambered)
		UnregisterSignal(chambered, COMSIG_MOVABLE_MOVED)
	if (spin_cylinder)
		chambered = magazine.get_round()
	else
		chambered = magazine.stored_ammo[1]
		if (ispath(chambered))
			chambered = new chambered(magazine)
			magazine.stored_ammo[1] = chambered
	if(chambered)
		RegisterSignal(chambered, COMSIG_MOVABLE_MOVED, PROC_REF(clear_chambered))

/obj/item/gun/ballistic/modular/revolver/shoot_with_empty_chamber(mob/living/user as mob|obj)
	..()
	chamber_round()

/obj/item/gun/ballistic/modular/revolver/click_alt(mob/user)
	spin_chamber(user)
	return CLICK_ACTION_SUCCESS

/obj/item/gun/ballistic/modular/revolver/fire_sounds()
	var/frequency_to_use = sin((90/magazine?.max_ammo) * get_ammo(TRUE, FALSE)) // fucking REVOLVERS
	var/click_frequency_to_use = 1 - frequency_to_use * 0.75
	var/play_click = sqrt(magazine?.max_ammo) > get_ammo(TRUE, FALSE)
	if(suppressed)
		playsound(src, suppressed_sound, suppressed_volume, vary_fire_sound, ignore_walls = FALSE, extrarange = SILENCED_SOUND_EXTRARANGE, falloff_distance = 0)
		if(play_click)
			playsound(src, 'sound/items/weapons/gun/general/ballistic_click.ogg', suppressed_volume, vary_fire_sound, ignore_walls = FALSE, extrarange = SILENCED_SOUND_EXTRARANGE, falloff_distance = 0, frequency = click_frequency_to_use)
	else
		playsound(src, fire_sound, fire_sound_volume, vary_fire_sound)
		if(play_click)
			playsound(src, 'sound/items/weapons/gun/general/ballistic_click.ogg', fire_sound_volume, vary_fire_sound, frequency = click_frequency_to_use)

GAME_VERB(/obj/item/gun/ballistic/modular/revolver, spin, "Spin Chamber", null)
	spin_chamber(usr)

/obj/item/gun/ballistic/modular/revolver/verb/spin_chamber(mob/living/user)
	if(!istype(user) || IS_UNCONSCIOUS_OR_CRIT(user) || !in_range(user, src))
		return

	if (recent_spin > world.time)
		return

	recent_spin = world.time + spin_delay

	if(do_spin())
		playsound(usr, SFX_REVOLVER_SPIN, 30, FALSE)
		visible_message(span_notice("[user] spins [src]'s chamber."), span_notice("You spin [src]'s chamber."))
		balloon_alert(user, "chamber spun")
	else
		verbs -= /obj/item/gun/ballistic/modular/revolver/verb/spin

/obj/item/gun/ballistic/modular/revolver/proc/do_spin()
	var/obj/item/ammo_box/magazine/internal/cylinder/C = magazine
	. = istype(C)
	if(.)
		C.spin()
		chamber_round(spin_cylinder = FALSE)

/obj/item/gun/ballistic/modular/revolver/get_ammo(countchambered = FALSE, countempties = TRUE)
	var/boolets = 0 //mature var names for mature people
	if (chambered && countchambered)
		boolets++
	if (magazine)
		boolets += magazine.ammo_count(countempties)
	return boolets

/obj/item/gun/ballistic/modular/revolver/examine(mob/user)
	. = ..()
	var/live_ammo = get_ammo(FALSE, FALSE)
	. += "[live_ammo ? live_ammo : "None"] of those are live rounds."
	. += span_notice("It can be spun with [EXAMINE_HINT("alt-click")].")

/obj/item/gun/ballistic/modular/revolver/ignition_effect(atom/A, mob/user)
	if(last_fire && last_fire + 15 SECONDS > world.time)
		return span_rose("[user] touches the end of [src] to \the [A], using the residual heat to ignite it in a puff of smoke. What a badass.")

/obj/item/gun/ballistic/modular/revolver/viper
	name = "R-23 \"Viper\""
	desc = "An imposing revolver used by officers and certain agents of Syndicate member factions, favored by captains and high-ranking officers of the Syndicate. Chambered in .357 Magnum."
	icon_state = "viper"
	inhand_icon_state = "sa_generic"
	fire_sound = 'modular_panda/sound/weapons/gun/revolver/viper.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/revolver/viper_prime.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/revolver/load_bullet.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/revolver/empty.ogg'
	dry_fire_sound = 'modular_panda/sound/weapons/gun/revolver/dry_fire.ogg'
	fire_delay = 0.35 SECONDS
	spread = 3
	recoil = 1

/obj/item/gun/ballistic/modular/revolver/viper/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/gun/ballistic/modular/revolver/viper/indie
	name = "Viper-23"
	desc = "A powerful bull-barrel revolver. Very popular among mercenaries and the occasional well-to-do spacer or pirate for its flashy appearance and powerful cartridge. Chambered in .357 Magnum."
	icon_state = "viper23"
	inhand_icon_state = "viper23"
	spread = 5
	obj_flags = UNIQUE_RENAME

/obj/item/gun/ballistic/modular/revolver/viper/indie/setup_reskins()
	AddComponent(/datum/component/reskinable_item, /datum/atom_skin/viper_revolver)

// Viper special skins
/datum/atom_skin/viper_revolver
	abstract_type = /datum/atom_skin/viper_revolver
	change_base_icon_state = TRUE

/datum/atom_skin/viper_revolver/default
	preview_name = "Default"
	new_icon_state = "viper23"

/datum/atom_skin/viper_revolver/pickle
	preview_name = "Pickle"
	new_icon_state = "viper23_pickle"

/datum/atom_skin/viper_revolver/magnate
	preview_name = "Magnate's Daily"
	new_icon_state = "viper23_classy"

/datum/atom_skin/viper_revolver/intranet
	preview_name = "Intranet Defender"
	new_icon_state = "viper23_rilena"

/datum/atom_skin/viper_revolver/cheap
	preview_name = "Cheap Deal"
	new_icon_state = "viper23_trash"

/datum/atom_skin/viper_revolver/merc
	preview_name = "Merc's Best Friend"
	new_icon_state = "viper23_larp"

/datum/atom_skin/viper_revolver/rancher
	preview_name = "Rancher"
	new_icon_state = "viper23_cowboy"
