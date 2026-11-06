/obj/item/shiptest_gun/ballistic/shotgun
	name = "shotgun"
	desc = "You feel as if you should make a 'adminhelp' if you see one of these, along with a 'github' report. You don't really understand what this means though."
	inhand_icon_state = "shotgun"
	abstract_type = /obj/item/shiptest_gun/ballistic/shotgun
	fire_sound = 'modular_panda/sound/weapons/gun/shotgun/shot.ogg'
	vary_fire_sound = FALSE
	fire_sound_volume = 90
	rack_sound = 'modular_panda/sound/weapons/gun/shotgun/rack.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/shotgun/insert_shell.ogg'
	w_class = WEIGHT_CLASS_BULKY
	force = 10
	obj_flags = CONDUCTS_ELECTRICITY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/shot
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/shot,
	)
	semi_auto = FALSE
	internal_magazine = TRUE
	casing_ejector = FALSE
	bolt_wording = "pump"
	cartridge_wording = "shell"
	tac_reloads = FALSE
	pickup_sound = 'modular_panda/sound/handling/shotgun_pickup.ogg'
	fire_delay = 0.7 SECONDS
	pb_knockback = 2

	gun_firemodes = list(FIREMODE_SEMIAUTO)
	default_firemode = FIREMODE_SEMIAUTO
	fire_select_icon_state_prefix = "sg_"
	adjust_fire_select_icon_state_on_safety = TRUE

	zoom_amt = SHOTGUN_ZOOM

	spread = 3
	recoil = 1

	min_recoil = 0.1
	wear_rate = 0

	//in an ideal world this would be a component but I don't wanna untangle all the sleeps doors pull
	///can this shotgun breach doors
	var/door_breaching_weapon = TRUE

/obj/item/shiptest_gun/ballistic/shotgun/afterattack(atom/target, mob/living/user, flag, params)
	if(door_breaching_weapon && flag && istype(target, /obj/machinery/door/airlock))
		var/obj/machinery/door/airlock/breaching = target
		if(chambered && chambered.BB && !is_type_in_list(chambered, list(/obj/item/shiptest_ammo_casing/shotgun/blank, /obj/item/shiptest_ammo_casing/shotgun/beanbag, /obj/item/shiptest_ammo_casing/shotgun/rubbershot)))
			user.visible_message(
				span_warning("[user] put the barrel of [src] to [breaching]'s electronics!"),
				span_warning("You put the barrel of [src] to [breaching]'s electronics, preparing to shred them!"),
				span_warning("Metal brushes against metal")
			)
			if(do_after(user, 5 SECONDS, breaching))
				if(process_fire(breaching, user, FALSE))
					switch(breaching.security_level)
						if(0)
							EMPTY_BLOCK_GUARD
						if (1) // thin metal plate. blast through it and create debris
							var/obj/item/debris = new /obj/item/stack/ore/iron
							debris.safe_throw_at(user, 2, 5, null, 1)
							breaching.security_level = 0
						if(2 to 6) //two shots to break
							var/obj/item/debris = new /obj/item/stack/ore/iron
							debris.safe_throw_at(user, 2, 5, null, 1)
							breaching.security_level -= 3
							breaching.security_level = max(breaching.security_level, 0)
							return TRUE
					if(!breaching.open())
						breaching.update_appearance()
					//im not rewriting the behavior to do exactly what this does with a different name
					breaching.obj_flags |= EMAGGED
					breaching.has_environment_lights = FALSE
					breaching.locked = TRUE
					breaching.loseMainPower()
					breaching.loseBackupPower()
					breaching.update_appearance()
					return TRUE
			return TRUE
	. = ..()

/obj/item/shiptest_gun/ballistic/shotgun/blow_up(mob/user)
	if(chambered && chambered.BB)
		process_fire(user, user, FALSE)
		return TRUE
	for(var/obj/item/shiptest_ammo_casing/ammo in magazine?.stored_ammo)
		if(ammo.BB)
			process_chamber(FALSE, FALSE)
			process_fire(user, user, FALSE)
			return TRUE
	return FALSE

// Automatic Shotguns//
/obj/item/shiptest_gun/ballistic/shotgun/automatic
	abstract_type = /obj/item/shiptest_gun/ballistic/shotgun/automatic
	spread = 3
	recoil = 1
	semi_auto = TRUE

	wear_rate = 1
	wear_minor_threshold = 60
	wear_major_threshold = 180
	wear_maximum = 300

// IMPROVISED SHOTGUN //

/obj/item/shiptest_gun/ballistic/shotgun/doublebarrel/improvised
	name = "improvised shotgun"
	desc = "A length of pipe and miscellaneous bits of scrap fashioned into a rudimentary single-shot shotgun, when you gotta work with what you have."
	icon = 'modular_panda/icons/obj/guns/manufacturer/hermits/48x32.dmi'
	lefthand_file = 'icons/mob/inhands/weapons/64x_guns_left.dmi'
	righthand_file = 'icons/mob/inhands/weapons/64x_guns_right.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/hermits/onmob.dmi'
	inhand_x_dimension = 64
	inhand_y_dimension = 64
	base_icon_state = "ishotgun"
	icon_state = "ishotgun"
	inhand_icon_state = "ishotgun"
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE
	force = 10
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/shot/improvised
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/shot/improvised,
	)
	sawn_desc = "I'm just here for the gasoline."
	unique_reskin = null

	gun_firemodes = list(FIREMODE_SEMIAUTO)
	default_firemode = FIREMODE_SEMIAUTO

/obj/item/shiptest_gun/ballistic/shotgun/doublebarrel/improvised/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_PIRATE)

/obj/item/shiptest_gun/ballistic/shotgun/doublebarrel/improvised/update_icon_state()
	. = ..()
	if(current_skin)
		icon_state = "[unique_reskin[current_skin]][sawn_off ? "_sawn" : ""][bolt_locked ? "_open" : ""]"
	else
		icon_state = "[base_icon_state || initial(icon_state)][sawn_off ? "_sawn" : ""][bolt_locked ? "_open" : ""]"

/obj/item/shiptest_gun/ballistic/shotgun/doublebarrel/improvised/sawoff(forced = FALSE)
	. = ..()
	if(.)
		weapon_weight = WEAPON_MEDIUM
		w_class = WEIGHT_CLASS_SMALL
		slot_flags = ITEM_SLOT_BELT | ITEM_SLOT_SUITSTORE

		lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/hermits/lefthand.dmi'
		righthand_file = 'modular_panda/icons/obj/guns/manufacturer/hermits/righthand.dmi'
		inhand_x_dimension = 32
		inhand_y_dimension = 32

		spread = 8
		recoil = 3
		icon_state = "ishotgun_sawn"
		inhand_icon_state = "ishotgun_sawn"

/obj/item/shiptest_gun/ballistic/shotgun/doublebarrel/improvised/sawn
	icon = 'modular_panda/icons/obj/guns/manufacturer/hermits/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/hermits/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/hermits/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/hermits/onmob.dmi'
	inhand_x_dimension = 32
	inhand_y_dimension = 32
	icon_state = "ishotgun_sawn"
	inhand_icon_state = "ishotgun_sawn"
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_SMALL
	slot_flags = ITEM_SLOT_BELT | ITEM_SLOT_SUITSTORE
	sawn_off = TRUE

	spread = 8
	recoil = 3 //or not

//god fucking bless brazil
/obj/item/shiptest_gun/ballistic/shotgun/doublebarrel/brazil
	name = "six-barreled \"TRABUCO\" shotgun"
	desc = "Dear fucking god, what the fuck even is this!? The recoil caused by the sheer act of firing this thing would probably kill you, if the gun itself doesn't explode in your face first! Theres a green flag with a blue circle and a yellow diamond around it. Some text in the circle says: \"ORDEM E PROGRESSO.\""
	base_icon_state = "shotgun_brazil"
	icon_state = "shotgun_brazil"
	icon = 'modular_panda/icons/obj/guns/48x32guns.dmi'
	lefthand_file = 'icons/mob/inhands/weapons/64x_guns_left.dmi'
	righthand_file = 'icons/mob/inhands/weapons/64x_guns_right.dmi'
	inhand_x_dimension = 64
	inhand_y_dimension = 64
	inhand_icon_state = "shotgun_qb"
	w_class = WEIGHT_CLASS_BULKY
	force = 15 //blunt edge and really heavy
	attack_verb_simple = list("bludgeoned", "smashed")
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/shot/sex
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/shot/sex,
	)
	burst_size = 6
	burst_delay = 0.04 SECONDS //?? very weird number
	pb_knockback = 12
	unique_reskin = null
	recoil = 10
	weapon_weight = WEAPON_LIGHT
	fire_sound = 'modular_panda/sound/weapons/gun/shotgun/quadfire.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/shotgun/quadrack.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/shotgun/quadinsert.ogg'
	fire_sound_volume = 50
	rack_sound_volume = 50
	can_be_sawn_off = FALSE
	autowiki_hidden = TRUE //meme weapons
	gun_firemodes = list(FIREMODE_BURST)
	default_firemode = FIREMODE_BURST

/obj/item/shiptest_gun/ballistic/shotgun/doublebarrel/brazil/process_fire(atom/target, mob/living/user, message = TRUE, params = null, zone_override = "", bonus_spread = 0)
	if(prob(0 + (magazine.ammo_count() * 10)))
		if(prob(10))
			to_chat(user, "<span class='userdanger'>Something isn't right. \the [src] doesn't fire for a brief moment. Then, the following words come to mind: \
			Ó Pátria amada, \n\
			Idolatrada, \n\
			Salve! Salve!</span>")

			message_admins("A [src] misfired and exploded at [ADMIN_VERBOSEJMP(src)], which was fired by [user].") //logging
			log_admin("A [src] misfired and exploded at [ADMIN_VERBOSEJMP(src)], which was fired by [user].")
			user.take_bodypart_damage(0,50)
			explosion(src, 0, 2, 4, 6, TRUE, TRUE)
	..()

/obj/item/shiptest_gun/ballistic/shotgun/doublebarrel/brazil/death
	name = "Force of Nature"
	desc = "So you have chosen death."
	base_icon_state = "shotgun_e"
	icon_state = "shotgun_e"
	burst_size = 100
	fire_delay = 0.01 SECONDS
	pb_knockback = 40
	recoil = 200
	recoil_backtime_multiplier = 1
	fire_sound_volume = 100
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/shot/hundred
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/shot/hundred,
	)

/obj/item/shiptest_gun/ballistic/shotgun/automatic/bulldog
	name = "SG-60r \"Bulldog\""
	desc = "A bullpup combat shotgun usually seen with a characteristic drum magazine. Wildly popular among Syndicate strike teams, although it proved less useful against military-grade equipment. Still popular among Gorlex Operatives. Chambered in 12g."
	icon = 'modular_panda/icons/obj/guns/manufacturer/scarborough/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/scarborough/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/scarborough/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/scarborough/onmob.dmi'
	icon_state = "bulldog"
	inhand_icon_state = "bulldog"

	weapon_weight = WEAPON_MEDIUM
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m12g_bulldog
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m12g_bulldog,
	)
	fire_delay = 0.3 SECONDS
	fire_sound = 'modular_panda/sound/weapons/gun/shotgun/bulldog.ogg'
	show_magazine_on_sprite = TRUE
//	empty_indicator = TRUE
	empty_alarm = TRUE
	unique_mag_sprites_for_variants = TRUE
	show_ammo_capacity_on_magazine_sprite = TRUE
	internal_magazine = FALSE
	casing_ejector = TRUE
	tac_reloads = TRUE
	pickup_sound = 'modular_panda/sound/handling/rifle_pickup.ogg'

	load_sound = 'modular_panda/sound/weapons/gun/rifle/ar_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/rifle/ar_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/rifle/ar_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/rifle/ar_unload.ogg'

	rack_sound = 'modular_panda/sound/weapons/gun/rifle/ar_cock.ogg'

	spread = 3
	recoil = 1

/obj/item/shiptest_gun/ballistic/shotgun/automatic/bulldog/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/shiptest_gun/ballistic/shotgun/automatic/bulldog/drum
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m12g_bulldog/drum

/obj/item/shiptest_gun/ballistic/shotgun/automatic/bulldog/bockadam
	name = "SG-60db \"Bockadam\""
	desc = "A bullpup combat shotgun from Gorlex Marauder reserves that has been heavily modified by an independent technician, sporting a sawn-down barrel and a two-shot receiver. Reliability has been traded for deadly lethality in tight quarters."

	icon_state = "bockadam"
	inhand_icon_state = "bockadam"

	weapon_weight = WEAPON_MEDIUM
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m12g_bulldog
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m12g_bulldog,
	)
	show_magazine_on_sprite = TRUE
	burst_size = 2
	burst_delay = 0.25 SECONDS
	fire_delay = 0.4 SECONDS
	wear_rate = 1.2
	spread = 5
	gun_firemodes = list(FIREMODE_BURST)
	default_firemode = FIREMODE_BURST

/obj/item/shiptest_gun/ballistic/shotgun/automatic/bulldog/bockadam/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_REMOVED)

/obj/item/shiptest_gun/ballistic/shotgun/gaboon
	name = "CSG-12 \"Gaboon\""
	desc = "A compact pump-action shotgun designed by Scarborough Arms. One of their oldest designs still in circulation due to their appeal among those frequently operating in cramped spaces. Stripped down for maximum portability, the pump-action mechanism renders it wildly overshadowed by the Bulldog, its larger, modern sister. Chambered in 12g."
	icon = 'modular_panda/icons/obj/guns/manufacturer/scarborough/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/scarborough/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/scarborough/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/scarborough/onmob.dmi'
	icon_state = "gaboon"
	inhand_icon_state = "gaboon"

	fire_sound = 'modular_panda/sound/weapons/gun/shotgun/brimstone.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/shotgun/rack.ogg'

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/shot/gaboon
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/shot/gaboon,
	)

	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_NORMAL

	fire_delay = 0.1 SECONDS

	spread = 8

	recoil = 3

/obj/item/shiptest_gun/ballistic/shotgun/gaboon/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/shiptest_gun/ballistic/shotgun/automatic/m11
	name = "Model 11 \"Buckmaster\""
	desc = "A semi-automatic hunting shotgun produced by Hinterland Sporting Arms. Much lighter and handier than military combat shotguns, it offers the same fire rate and magazine capacity, making it an excellent choice for hunting birds and large game or for security forces looking to upgrade from pump action guns. Chambered in 12g."

	icon = 'modular_panda/icons/obj/guns/manufacturer/hinterland_sporting/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/hinterland_sporting/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/hinterland_sporting/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/hinterland_sporting/onmob.dmi'
	icon_state = "buckmaster"
	inhand_icon_state = "buckmaster"

	fire_delay = 0.3 SECONDS
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/shot/buckmaster
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/shot/buckmaster,
	)
	w_class = WEIGHT_CLASS_BULKY

	bolt_type = BOLT_TYPE_LOCKING

	fire_sound = 'modular_panda/sound/weapons/gun/shotgun/bulldog.ogg'

	spread = 3
	recoil = 1

	casing_ejector = TRUE

/obj/item/shiptest_gun/ballistic/shotgun/automatic/m11/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_HINTERLAND)

/obj/item/shiptest_gun/ballistic/shotgun/doublebarrel
	name = "double-barreled shotgun"
	desc = "A classic break action shotgun, hand-made in a Bastion Armaments workshop. Both barrels can be fired in quick succession or even simultaneously. Guns like this have been popular with hunters, sporters, and criminals for millennia. Chambered in 12g."
	sawn_desc = "A break action shotgun cut down to the size of a sidearm. While the recoil is even harsher, it offers a lot of power in a very small package. Chambered in 12g."

	icon = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/onmob.dmi'

	base_icon_state = "dshotgun"

	icon_state = "dshotgun"
	inhand_icon_state = "dshotgun"

	rack_sound = 'modular_panda/sound/weapons/gun/shotgun/dbshotgun_break.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/shotgun/dbshotgun_close.ogg'

	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_MEDIUM
	force = 10
	obj_flags = CONDUCTS_ELECTRICITY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/shot/dual
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/shot/dual,
	)

	obj_flags = UNIQUE_RENAME
	semi_auto = TRUE
	can_be_sawn_off = TRUE
	bolt_type = BOLT_TYPE_NO_BOLT
	pb_knockback = 3 // it's a super shotgun!
	bolt_wording = "barrel"

	burst_delay = 0.05 SECONDS
	burst_size = 2
	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_BURST)
	default_firemode = FIREMODE_SEMIAUTO

/obj/item/shiptest_gun/ballistic/shotgun/doublebarrel/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_BASTION)

/obj/item/shiptest_gun/ballistic/shotgun/doublebarrel/unique_action(mob/living/user)
	if (bolt_locked == FALSE)
		to_chat(user, span_notice("You snap open the [bolt_wording] of \the [src]."))
		playsound(src, rack_sound, rack_sound_volume, rack_sound_vary)
		chambered = null
		var/num_unloaded = 0
		for(var/obj/item/shiptest_ammo_casing/casing_bullet in get_ammo_list(FALSE, TRUE))
			eject_casing(user, casing_bullet)
			num_unloaded++
		if (num_unloaded)
			playsound(user, eject_sound, eject_sound_volume, eject_sound_vary)
			update_appearance()
		bolt_locked = TRUE
		update_appearance()
		return
	drop_bolt(user)

/obj/item/shiptest_gun/ballistic/shotgun/doublebarrel/drop_bolt(mob/user = null)
	playsound(src, bolt_drop_sound, bolt_drop_sound_volume, FALSE)
	if (user)
		to_chat(user, span_notice("You snap the [bolt_wording] of \the [src] closed."))
	chamber_round()
	bolt_locked = FALSE
	update_appearance()

/obj/item/shiptest_gun/ballistic/shotgun/doublebarrel/can_shoot()
	if (bolt_locked)
		return FALSE
	return ..()

/obj/item/shiptest_gun/ballistic/shotgun/doublebarrel/attackby(obj/item/A, mob/user, params)
	if (!bolt_locked)
		if(SEND_SIGNAL(src, COMSIG_ATOM_ATTACKBY, A, user, params) & COMPONENT_NO_AFTERATTACK)
			return TRUE
		to_chat(user, span_notice("The [bolt_wording] is shut closed!"))
		return
	return ..()

/obj/item/shiptest_gun/ballistic/shotgun/doublebarrel/update_icon_state()
	. = ..()
	if(current_skin)
		icon_state = "[unique_reskin[current_skin]][sawn_off ? "_sawn" : ""][bolt_locked ? "_open" : ""]"
	else
		icon_state = "[base_icon_state || initial(icon_state)][sawn_off ? "_sawn" : ""][bolt_locked ? "_open" : ""]"


/obj/item/shiptest_gun/ballistic/shotgun/doublebarrel/click_alt(mob/user)
	. = ..()
	if(!unique_reskin || current_skin || !Adjacent(user, src) || user.incapacitated || bolt_locked)
		return
	var/list/reskin_options = list()
	for(var/skin_name in unique_reskin)
		reskin_options[skin_name] = image(icon = icon, icon_state = unique_reskin[skin_name])
	var/selected_skin = show_radial_menu(user, src, reskin_options, require_near = TRUE)
	if(!isnull(selected_skin))
		current_skin = selected_skin
		update_appearance()

/obj/item/shiptest_gun/ballistic/shotgun/doublebarrel/sawoff(forced = FALSE)
	. = ..()
	if(.)
		weapon_weight = WEAPON_MEDIUM
		w_class = WEIGHT_CLASS_SMALL
		slot_flags = ITEM_SLOT_BELT | ITEM_SLOT_SUITSTORE

		spread = 8
		recoil = 3
		icon_state = "ishotgun_sawn"
		inhand_icon_state = "ishotgun_sawn"

/obj/item/shiptest_gun/ballistic/shotgun/doublebarrel/sawn
	//init gives it the sawn_off name
	name = "double-barreled shotgun"
	desc = "A break action shotgun cut down to the size of a sidearm. While the recoil is even harsher, it offers a lot of power in a very small package. Chambered in 12g."
	sawn_off = TRUE
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_NORMAL
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE

	spread = 8
	recoil = 3
	icon_state = "ishotgun_sawn"
	inhand_icon_state = "dshotgun_sawn"

/obj/item/shiptest_gun/ballistic/shotgun/doublebarrel/solarian
	name = "BA antique double-barreled shotgun"
	desc = "A special-edition shotgun hand-made by Bastion Armaments with a high-quality walnut stock inlaid with brass scrollwork. Shotguns like this are very rare outside of the Terran Colonial Defense Militia's ranks. Otherwise functionally identical to a common double-barreled shotgun. Chambered in 12g."
	sawn_desc = "A special-edition Bastion Armaments shotgun, cut down to the size of a sidearm by some barbarian. The brass inlay on the stock and engravings on the barrel have been obliterated in the process, destroying any value beyond its use as a crude sidearm."
	base_icon_state = "dshotgun_srm"
	icon_state = "dshotgun_srm"
	inhand_icon_state = "dshotgun_srm"
	unique_reskin = null

/obj/item/shiptest_gun/ballistic/shotgun/doublebarrel/solarian/sawoff(forced = FALSE)
	. = ..()
	if(.)
		inhand_icon_state = "dshotgun_srm_sawn"

/obj/item/shiptest_gun/ballistic/shotgun/brimstone
	name = "BA Brimstone"
	desc = "A simple and sturdy pump-action shotgun sporting a 5-round capacity, manufactured by Bastion Armaments. Found widely throughout the Spinward Sector in the hands of hunters, pirates, police, and countless others. Chambered in 12g."
	sawn_desc = "A stockless and shortened pump-action shotgun. The worsened recoil and accuracy make it a poor sidearm anywhere beyond punching distance."
	fire_sound = 'modular_panda/sound/weapons/gun/shotgun/brimstone.ogg'
	icon = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/onmob.dmi'

	icon_state = "brimstone"
	inhand_icon_state = "brimstone"

	gun_firemodes = list(FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_FULLAUTO

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/shot/brimstone
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/shot/brimstone,
	)
	fire_delay = 0.05 SECONDS //slamfire
	rack_delay = 0.2 SECONDS

	can_be_sawn_off = TRUE

/obj/item/shiptest_gun/ballistic/shotgun/brimstone/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_BASTION)

/obj/item/shiptest_gun/ballistic/shotgun/brimstone/sawoff(forced = FALSE)
	. = ..()
	if(.)
		weapon_weight = WEAPON_MEDIUM

		spread = 18
		recoil = 5
		inhand_icon_state = "illestren_factory_sawn" // i couldnt care about making another sprite, looks close enough

/obj/item/shiptest_gun/ballistic/shotgun/hellfire
	name = "BA Hellfire"
	desc = "A hefty pump-action riot shotgun with an eight-round tube, manufactured by Bastion Armaments. Especially popular among the Spinward Sector's police forces. Chambered in 12g."
	icon = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/onmob.dmi'
	icon_state = "hellfire"
	inhand_icon_state = "hellfire"

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/shot/riot
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/shot/riot,
	)
	sawn_desc = "Come with me if you want to live."
	can_be_sawn_off = TRUE
	rack_sound = 'modular_panda/sound/weapons/gun/shotgun/rack_alt.ogg'
	fire_delay = 0.1 SECONDS

/obj/item/shiptest_gun/ballistic/shotgun/hellfire/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_BASTION)

/obj/item/shiptest_gun/ballistic/shotgun/hellfire/sawoff(forced = FALSE)
	. = ..()
	if(.)
		var/obj/item/shiptest_ammo_box/magazine/internal/tube = magazine
		tube.max_ammo = 5 //this makes it so much worse

		weapon_weight = WEAPON_MEDIUM

		spread = 8
		recoil = 3
		inhand_icon_state = "dshotgun_sawn" // ditto

/obj/item/shiptest_gun/ballistic/shotgun/flamingarrow/conflagration
	name = "BA Conflagration"
	desc = "A lightweight lever-action shotgun with a 5 round ammunition capacity. The lever action allows it to be cycled quickly and acurrately. In theory, you could ever operate it one-handed. Chambered in 12g."
	sawn_desc = "A lever action shotgun that's been sawed down for portability. The recoil makes it mostly useless outside of point-blank range, but it hits hard for its size and, more importantly, can be flipped around stylishly."
	base_icon_state = "conflagration"
	icon_state = "conflagration"
	inhand_icon_state = "conflagration"
	fire_sound = 'modular_panda/sound/weapons/gun/shotgun/shot.ogg'
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/shot/winchester/conflagration
	recoil = 4
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/shot/winchester/conflagration,
	)
	door_breaching_weapon = TRUE

/obj/item/shiptest_gun/ballistic/shotgun/flamingarrow/conflagration/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_BASTION)

/obj/item/shiptest_gun/ballistic/shotgun/flamingarrow/conflagration/sawoff(forced = FALSE)
	. = ..()
	if(.)
		var/obj/item/shiptest_ammo_box/magazine/internal/tube = magazine
		tube.max_ammo = 5

		icon_state = "beacon_factory_sawn"
		inhand_icon_state = "beacon_factory_sawn"
		weapon_weight = WEAPON_MEDIUM

		spread = 8
		recoil = 2

/obj/item/shiptest_gun/ballistic/shotgun/flamingarrow/conflagration/sawn
	desc = "A lever action shotgun that's been sawed down for portability. The recoil makes it mostly useless outside of point-blank range, but it hits hard for its size and, more importantly, can be flipped around stylishly."
	icon_state = "beacon_factory_sawn"
	inhand_icon_state = "beacon_factory_sawn"
	sawn_off = TRUE
	weapon_weight = WEAPON_MEDIUM

	spread = 8
	recoil = 2

/obj/item/shiptest_gun/ballistic/shotgun/automatic/slammer
	name = "\improper Slammer"
	desc = "An unusual, dated riot shotgun originating from New Aberdeen. Often in the hands of pirates and eccentric indies, this weapon is mag-fed and pump-action."

	icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/onmob.dmi'

	fire_sound = 'modular_panda/sound/weapons/gun/shotgun/brimstone.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/rifle/ar_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/rifle/ar_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/rifle/ar_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/rifle/ar_unload.ogg'

	icon_state = "slammer"
	inhand_icon_state = "slammer"

	gun_firemodes = list(FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_FULLAUTO

	semi_auto = FALSE
	tac_reloads = TRUE
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_BULKY
	show_magazine_on_sprite = TRUE
	internal_magazine = FALSE
	casing_ejector = TRUE

	fire_delay = 0.1 SECONDS
	rack_delay = 0.1 SECONDS

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m12g_slammer
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m12g_slammer,
	)

	spread = 3
	recoil = 2

/obj/item/shiptest_gun/ballistic/shotgun/automatic/slammer/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_FRONTIER)

/obj/item/shiptest_gun/ballistic/shotgun/automatic/nt15
	name = "\improper NT-15"
	desc = "A large automatic shotgun used by Nanotrasen. Generally employed by security officers and emergency response teams, though lately it has been used more frequently by Nanotrasen strike teams. Chambered in 12 gauge."
	icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/onmob.dmi'

	icon_state = "cm15"
	inhand_icon_state = "cm15"

	fire_delay = 0.3 SECONDS
	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_FULLAUTO)
	gun_firenames = list(FIREMODE_SEMIAUTO = "single", FIREMODE_FULLAUTO = "auto")
	weapon_weight = WEAPON_MEDIUM
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/nt15_12g
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/nt15_12g,
	)

	empty_indicator = FALSE
	unique_mag_sprites_for_variants = FALSE

	show_magazine_on_sprite = TRUE
	semi_auto = TRUE
	internal_magazine = FALSE
	casing_ejector = TRUE
	tac_reloads = TRUE

	pickup_sound = 'modular_panda/sound/handling/rifle_pickup.ogg'
	fire_sound = 'modular_panda/sound/weapons/gun/shotgun/bulldog.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/rifle/ar_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/rifle/ar_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/rifle/ar_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/rifle/ar_unload.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/rifle/ar_cock.ogg'

	fire_select_icon_state_prefix = "clip_"
	adjust_fire_select_icon_state_on_safety = TRUE

	spread = 3
	recoil = 1

/obj/item/shiptest_gun/ballistic/shotgun/automatic/nt15/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)

/obj/item/shiptest_gun/ballistic/shotgun/automatic/nt15/incendiary
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/nt15_12g/incendiary
