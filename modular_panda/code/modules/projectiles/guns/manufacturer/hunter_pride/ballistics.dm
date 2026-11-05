///Hunters Pride Weapons

///Revolvers

/obj/item/shiptest_gun/ballistic/revolver/montagne
	name = "\improper HP Montagne"
	desc = "An ornate break-open revolver issued to high-ranking members of the Saint-Roumain Militia. Chambered in .44."
	icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/onmob.dmi'

	icon_state = "montagne"
	inhand_icon_state = "hp_generic"
	manufacturer = MANUFACTURER_HUNTERSPRIDE
	recoil = 0

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/cylinder/rev44/montagne
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/cylinder/rev44/montagne,
	)

/obj/item/shiptest_gun/ballistic/revolver/montagne/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/ammo_hud/revolver)

EMPTY_GUN_HELPER(revolver/montagne)

/obj/item/shiptest_gun/ballistic/revolver/ashhand
	name = "HP Ashhand"
	desc = "A massive, long-barreled revolver often used by the Saint-Roumain Militia as protection against big game. Can only be reloaded one cartridge at a time due to its reinforced frame. Uses .45-70 ammo."
	icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/onmob.dmi'

	icon_state = "ashhand"
	inhand_icon_state = "ashhand"
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/cylinder/rev4570
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/cylinder/rev4570,
	)
	fire_sound = 'modular_panda/sound/weapons/gun/revolver/shot_hunting.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/revolver/viper_prime.ogg'
	manufacturer = MANUFACTURER_HUNTERSPRIDE
	gate_loaded = TRUE
	fire_delay = 0.6 SECONDS

	zoom_amt = 4 // Built-in zoom lets the revolver serve as a long-range sidearm.

	spread = 1
	recoil = 4

/obj/item/shiptest_gun/ballistic/revolver/ashhand/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/ammo_hud/revolver)

/obj/item/shiptest_gun/ballistic/revolver/firebrand
	name = "\improper HP Firebrand"
	desc = "An archaic precursor to revolver-type firearms, this gun was rendered completely obsolete millennia ago. While fast to fire, it is extremely inaccurate. Uses .357 ammo."
	icon_state = "pepperbox"
	inhand_icon_state = "hp_generic_fresh"
	icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/onmob.dmi'

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/cylinder/pepperbox
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/cylinder/pepperbox,
	)
	spread = 20
	manufacturer = MANUFACTURER_HUNTERSPRIDE
	spread = 50
	fire_delay = 0 SECONDS
	gate_offset = 4
	semi_auto = TRUE
	safety_wording = "safety"

EMPTY_GUN_HELPER(revolver/firebrand)

/obj/item/shiptest_gun/ballistic/revolver/shadow
	name = "\improper HP Shadow"
	desc = "A mid-size revolver. Despite the antiquated design, it is cheap, reliable, and stylish, making it a favorite among fast-drawing spacers and the officers of various militaries, as well as small-time police units. Chambered in .44."
	fire_sound = 'modular_panda/sound/weapons/gun/revolver/cattleman.ogg'
	icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/onmob.dmi'
	icon_state = "shadow"
	inhand_icon_state = "shadow"

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/cylinder/rev44
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/cylinder/rev44,
	)
	manufacturer = MANUFACTURER_HUNTERSPRIDE
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

/obj/item/shiptest_gun/ballistic/revolver/shadow/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/ammo_hud/revolver)

EMPTY_GUN_HELPER(revolver/shadow)

/obj/item/shiptest_gun/ballistic/revolver/flint
	name = "\improper HP Flint"
	desc = "A small revolver. Its low price and weight make it a popular self-defense option among civilians. Uses .38 Special rounds."
	fire_sound = 'modular_panda/sound/weapons/gun/revolver/shot_light.ogg'
	icon_state = "flint"
	inhand_icon_state = "hp_generic"
	icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/onmob.dmi'

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
	manufacturer = MANUFACTURER_HUNTERSPRIDE

	recoil = 0
	fire_delay = 0.2 SECONDS

EMPTY_GUN_HELPER(revolver/flint)

/obj/item/shiptest_gun/ballistic/revolver/flint/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/ammo_hud/revolver) //note that the hud at the moment only supports 6 round revolvers, 7 or 5 isn't supported rn

///pistols

/obj/item/shiptest_gun/ballistic/automatic/pistol/candor
	name = "\improper Candor"
	desc = "A classic semi-automatic handgun, widely popular throughout the Frontier. An engraving on the slide marks it as a product of Hunter's Pride. Chambered in .44 Roumain."
	icon_state = "candor"
	inhand_icon_state = "hp_generic"
	icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/onmob.dmi'

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m44
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m44,
	)
	fire_sound = 'modular_panda/sound/weapons/gun/pistol/candor.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/pistol/candor_cocked.ogg'
	lock_back_sound = 'modular_panda/sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/pistol/candor_cocked.ogg'
	manufacturer = MANUFACTURER_HUNTERSPRIDE
	load_sound = 'modular_panda/sound/weapons/gun/pistol/candor_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/pistol/candor_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/pistol/candor_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/pistol/candor_unload.ogg'
	show_magazine_on_sprite = TRUE
	wear_rate = 0.66 //HP weapons are more resistant to wear




NO_MAG_GUN_HELPER(automatic/pistol/candor)

/obj/item/shiptest_gun/ballistic/automatic/pistol/candor/factory //also give this to the srm, their candors should probably look factory fresh from how well taken care of they are
	desc = "A classic semi-automatic handgun, widely popular throughout the Frontier. An engraving on the slide marks it as a product of 'Hunter's Pride Arms and Ammunition'. This example has been kept in especially good shape, and may as well be fresh out of the workshop. Chambered in .44."
	inhand_icon_state = "hp_generic_fresh"
	wear_rate = 0.6 //factory guns are now OBJECTIVELY better. if they happen to be candors.

NO_MAG_GUN_HELPER(automatic/pistol/candor/factory)

/obj/item/shiptest_gun/ballistic/automatic/pistol/candor/factory/update_overlays()
	. = ..()
	. += "[initial(icon_state)]_factory"

/obj/item/shiptest_gun/ballistic/automatic/pistol/candor/phenex
	name = "\improper HP Phenex"
	desc = "A uniquely modified version of the Candor, famously created by Hunter's Pride. Named after the daemonic Phoenix of legend that the Ashen Huntsman had once slain, this hell-kissed weapon is more visually intimidating than its original counterpart, but mechanically acts the same. Chambered in .44."
	icon_state = "phenex"
	inhand_icon_state = "hp_phenex"
	autowiki_hidden = TRUE

/// SMG ///

/obj/item/shiptest_gun/ballistic/automatic/smg/firestorm //weapon designed by Apogee-dev
	name = "HP Firestorm"
	desc = "An unconventional submachinegun, rarely issued to Saint-Roumain Militia mercenary hunters for outstanding situations where normal hunting weapons fall short. Chambered in .44 Roumain."
	icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/onmob.dmi'

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


	manufacturer = MANUFACTURER_HUNTERSPRIDE



/obj/item/shiptest_gun/ballistic/automatic/smg/firestorm/pan //spawns with pan magazine, can take sticks instead of just drums, not sure where this would be used, maybe erts?
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/c44_firestorm_mag/pan


NO_MAG_GUN_HELPER(automatic/smg/firestorm)

///Shotguns

/////////////////////////////
// DOUBLE BARRELED SHOTGUN //
/////////////////////////////

/obj/item/shiptest_gun/ballistic/shotgun/doublebarrel
	name = "double-barreled shotgun"
	desc = "A classic break action shotgun, hand-made in a Hunter's Pride workshop. Both barrels can be fired in quick succession or even simultaneously. Guns like this have been popular with hunters, sporters, and criminals for millennia. Chambered in 12g."
	sawn_desc = "A break action shotgun cut down to the size of a sidearm. While the recoil is even harsher, it offers a lot of power in a very small package. Chambered in 12g."

	icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/onmob.dmi'

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
	manufacturer = MANUFACTURER_HUNTERSPRIDE
	bolt_wording = "barrel"

	burst_delay = 0.05 SECONDS
	burst_size = 2
	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_BURST)
	default_firemode = FIREMODE_SEMIAUTO



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

		spread = 15
		recoil = 5
		inhand_icon_state = "dshotgun_sawn"

EMPTY_GUN_HELPER(shotgun/doublebarrel)

// sawn off beforehand
/obj/item/shiptest_gun/ballistic/shotgun/doublebarrel/presawn
	//init gives it the sawn_off name
	name = "double-barreled shotgun"
	desc = "A break action shotgun cut down to the size of a sidearm. While the recoil is even harsher, it offers a lot of power in a very small package. Chambered in 12g."
	sawn_off = TRUE
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_NORMAL
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE


	spread = 15
	recoil = 5
	inhand_icon_state = "dshotgun_sawn"
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/shot/dual/lethal
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/shot/dual/lethal,
	)

EMPTY_GUN_HELPER(shotgun/doublebarrel/presawn)

/obj/item/shiptest_gun/ballistic/shotgun/doublebarrel/roumain
	name = "HP antique double-barreled shotgun"
	desc = "A special-edition shotgun hand-made by Hunter's Pride with a high-quality walnut stock inlaid with brass scrollwork. Shotguns like this are very rare outside of the Saint-Roumain Militia's ranks. Otherwise functionally identical to a common double-barreled shotgun. Chambered in 12g."
	sawn_desc = "A special-edition Hunter's Pride shotgun, cut down to the size of a sidearm by some barbarian. The brass inlay on the stock and engravings on the barrel have been obliterated in the process, destroying any value beyond its use as a crude sidearm."
	base_icon_state = "dshotgun_srm"
	icon_state = "dshotgun_srm"
	inhand_icon_state = "dshotgun_srm"
	unique_reskin = null

EMPTY_GUN_HELPER(shotgun/doublebarrel/roumain)

/obj/item/shiptest_gun/ballistic/shotgun/doublebarrel/roumain/sawoff(forced = FALSE)
	. = ..()
	if(.)
		inhand_icon_state = "dshotgun_srm_sawn"

// BRIMSTONE //

/obj/item/shiptest_gun/ballistic/shotgun/brimstone
	name = "HP Brimstone"
	desc = "A simple and sturdy pump-action shotgun sporting a 5-round capacity, manufactured by Hunter's Pride. Found widely throughout the Frontier in the hands of hunters, pirates, police, and countless others. Chambered in 12g."
	sawn_desc = "A stockless and shortened pump-action shotgun. The worsened recoil and accuracy make it a poor sidearm anywhere beyond punching distance."
	fire_sound = 'modular_panda/sound/weapons/gun/shotgun/brimstone.ogg'
	icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/onmob.dmi'

	icon_state = "brimstone"
	inhand_icon_state = "brimstone"

	gun_firemodes = list(FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_FULLAUTO

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/shot/brimstone
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/shot/brimstone,
	)
	manufacturer = MANUFACTURER_HUNTERSPRIDE
	fire_delay = 0.05 SECONDS //slamfire
	rack_delay = 0.2 SECONDS

	can_be_sawn_off = TRUE


/obj/item/shiptest_gun/ballistic/shotgun/brimstone/sawoff(forced = FALSE)
	. = ..()
	if(.)
		weapon_weight = WEAPON_MEDIUM

		spread = 25
		recoil = 8
		inhand_icon_state = "illestren_factory_sawn" // i couldnt care about making another sprite, looks close enough

EMPTY_GUN_HELPER(shotgun/brimstone)

// HELLFIRE //

/obj/item/shiptest_gun/ballistic/shotgun/hellfire
	name = "HP Hellfire"
	desc = "A hefty pump-action riot shotgun with an eight-round tube, manufactured by Hunter's Pride. Especially popular among the Frontier's police forces. Chambered in 12g."
	icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/onmob.dmi'
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

/obj/item/shiptest_gun/ballistic/shotgun/hellfire/sawoff(forced = FALSE)
	. = ..()
	if(.)
		var/obj/item/shiptest_ammo_box/magazine/internal/tube = magazine
		tube.max_ammo = 5 //this makes it so much worse

		weapon_weight = WEAPON_MEDIUM

		spread = 15
		recoil = 5
		inhand_icon_state = "dshotgun_sawn" // ditto

EMPTY_GUN_HELPER(shotgun/hellfire)

/obj/item/shiptest_gun/ballistic/shotgun/flamingarrow/conflagration
	name = "HP Conflagration"
	base_icon_state = "conflagration"
	icon_state = "conflagration"
	inhand_icon_state = "conflagration"
	fire_sound = 'modular_panda/sound/weapons/gun/shotgun/shot.ogg'
	desc = "A lightweight lever-action shotgun with a 5 round ammunition capacity. The lever action allows it to be cycled quickly and acurrately. In theory, you could ever operate it one-handed. Chambered in 12g."
	sawn_desc = "A lever action shotgun that's been sawed down for portability. The recoil makes it mostly useless outside of point-blank range, but it hits hard for its size and, more importantly, can be flipped around stylishly."
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/shot/winchester/conflagration
	recoil = 4
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/shot/winchester/conflagration,
	)
	door_breaching_weapon = TRUE

/obj/item/shiptest_gun/ballistic/shotgun/flamingarrow/conflagration/sawoff(forced = FALSE)
	. = ..()
	if(.)
		var/obj/item/shiptest_ammo_box/magazine/internal/tube = magazine
		tube.max_ammo = 5

		inhand_icon_state = "beacon_factory_sawn"
		weapon_weight = WEAPON_MEDIUM


		spread = 12

		recoil = 5

EMPTY_GUN_HELPER(shotgun/flamingarrow/conflagration)


//Elephant Gun
/obj/item/shiptest_gun/ballistic/shotgun/doublebarrel/twobore
	autowiki_hidden = TRUE //admin only?
	name = "HP Huntsman"
	desc = "A comically huge double-barreled rifle replete with brass inlays depicting flames and naturalistic scenes, clearly meant for the nastiest monsters the Frontier has to offer. If you want an intact trophy, don't aim for the head. Chambered in two-bore."
	icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/onmob.dmi'
	inhand_x_dimension = 32
	inhand_y_dimension = 32
	base_icon_state = "huntsman"
	icon_state = "huntsman"
	inhand_icon_state = "huntsman"
	unique_reskin = null
	attack_verb_simple = list("bludgeoned", "smashed")
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/shot/twobore
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/shot/twobore,
	)
	w_class = WEIGHT_CLASS_BULKY
	force = 20 //heavy ass elephant gun, why wouldnt it be
	recoil = 4
	pb_knockback = 12
	fire_sound = 'modular_panda/sound/weapons/gun/shotgun/quadfire.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/shotgun/quadrack.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/shotgun/quadinsert.ogg'

	can_be_sawn_off = FALSE
	fire_sound_volume = 80
	rack_sound_volume = 50
	manufacturer = MANUFACTURER_HUNTERSPRIDE

	gun_firemodes = list(FIREMODE_SEMIAUTO) //no dual burst for you
	default_firemode = FIREMODE_SEMIAUTO

/obj/item/shiptest_gun/ballistic/rifle/cinder/factory//it uses bolt action mechanics, but for all intents and purposes, is a SHOTGUN! It's just that the pump is probably heavy enough to warrant turning it into a bolt action mechanically
	autowiki_hidden = TRUE //
	name = "HP Cinder"
	desc = "A large, and bulky pump-action shotgun holding four rounds. Manufactured by Hunter's Pride, and used on hunts within the Saint Roumain Militia where normal shot will not easily take down their quarry."
	icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/onmob.dmi'
	icon_state = "cinder_factory"
	inhand_icon_state = "cinder_factory"
	attack_verb_simple = list("bludgeoned", "smashed")
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/boltaction/fourbore/cinder
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/boltaction/fourbore/cinder,
	)



	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE
	force = 15
	recoil = 3
	pb_knockback = 10
	fire_sound = 'modular_panda/sound/weapons/gun/shotgun/quadfire.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/shotgun/quadrack.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/shotgun/quadinsert.ogg'

	can_be_sawn_off = FALSE
	fire_sound_volume = 50
	rack_sound_volume = 30
	manufacturer = MANUFACTURER_HUNTERSPRIDE

	gun_firemodes = list(FIREMODE_SEMIAUTO)
	default_firemode = FIREMODE_SEMIAUTO

/obj/item/shiptest_gun/ballistic/rifle/cinder
	autowiki_hidden = TRUE //
	name = "HP Cinder"
	desc = "A large, and bulky pump-action shotgun holding four rounds. Manufactured by Hunter's Pride, and used on hunts within the Saint Roumain Militia where normal shot will not easily take down their quarry. This one is noticably missing its stock, and your arms figuratively warn you of using this shotgun."
	icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/onmob.dmi'
	icon_state = "cinder"
	inhand_icon_state = "cinder"
	attack_verb_simple = list("bludgeoned", "smashed")
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/boltaction/fourbore/cinder
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/boltaction/fourbore/cinder,
	)



	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE | ITEM_SLOT_BELT
	spread = 6
	force = 15
	recoil = 4
	pb_knockback = 10
	fire_sound = 'modular_panda/sound/weapons/gun/shotgun/quadfire.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/shotgun/quadrack.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/shotgun/quadinsert.ogg'

	can_be_sawn_off = FALSE
	fire_sound_volume = 50
	rack_sound_volume = 30
	manufacturer = MANUFACTURER_HUNTERSPRIDE

	gun_firemodes = list(FIREMODE_SEMIAUTO)
	default_firemode = FIREMODE_SEMIAUTO

/// Rifles

/obj/item/shiptest_gun/ballistic/rifle/illestren
	name = "\improper HP Illestren"
	desc = "A sturdy and conventional bolt-action rifle. One of Hunter's Pride's most successful firearms, the Illestren is popular among colonists, pirates, snipers, and countless others. Chambered in 8x50mmR."
	icon_state = "illestren"
	inhand_icon_state = "illestren"
	icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/onmob.dmi'

	sawn_desc = "An Illestren rifle sawn down to a ridiculously small size. There was probably a reason it wasn't made this short to begin with, but it still packs a punch."
	eject_sound = 'modular_panda/sound/weapons/gun/rifle/vickland_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/rifle/vickland_unload.ogg'

	internal_magazine = FALSE
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/illestren_a850r
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/illestren_a850r,
	)



	empty_autoeject = TRUE
	eject_sound_vary = FALSE
	can_be_sawn_off = TRUE
	manufacturer = MANUFACTURER_HUNTERSPRIDE

/obj/item/shiptest_gun/ballistic/rifle/illestren/empty //i had to name it empty instead of no_mag because else it wouldnt work with guncases. sorry!
	default_ammo_type = FALSE

/obj/item/shiptest_gun/ballistic/rifle/illestren/sawoff(forced = FALSE)
	. = ..()
	if(.)
		spread = 30
		inhand_icon_state = "illestren_sawn"
		weapon_weight = WEAPON_MEDIUM //you can fire it onehanded, makes it worse than worse than useless onehanded, but you can

/obj/item/shiptest_gun/ballistic/rifle/illestren/blow_up(mob/user)
	. = FALSE
	if(chambered && chambered.BB)
		process_fire(user, user, FALSE)
		. = TRUE

/obj/item/shiptest_gun/ballistic/rifle/illestren/factory
	desc = "A sturdy and conventional bolt-action rifle. One of Hunter's Pride's most successful firearms, this example has been kept in excellent shape and may as well be fresh out of the workshop. Chambered in 8x50mmR."
	icon_state = "illestren_factory"
	inhand_icon_state = "illestren_factory"

EMPTY_GUN_HELPER(rifle/illestren/factory)

/obj/item/shiptest_gun/ballistic/rifle/illestren/sawoff(forced = FALSE)
	. = ..()
	if(.)
		inhand_icon_state = "illestren_factory_sawn"

/obj/item/shiptest_gun/ballistic/rifle/illestren/sawn
	desc = "An Illestren rifle sawn down to a ridiculously small size. There was probably a reason it wasn't made this short to begin with, but it still packs a punch."
	sawn_off = TRUE

//Lever-Action Rifles

/obj/item/shiptest_gun/ballistic/shotgun/flamingarrow
	name = "HP Flaming Arrow"
	desc = "A sturdy and lightweight lever-action rifle with hand-stamped Hunter's Pride marks on the receiver. A popular choice among Frontier homesteaders for hunting small game and rudimentary self-defense. Chambered in .38."
	sawn_desc = "A lever-action rifle that has been sawed down and modified for extra portability. While surprisingly effective as a sidearm, the more important benefit is how much cooler it looks."
	base_icon_state = "flamingarrow"
	icon_state = "flamingarrow"
	inhand_icon_state = "flamingarrow"
	icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/onmob.dmi'
	inhand_x_dimension = 32
	inhand_y_dimension = 32
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/shot/winchester
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/shot/winchester,
	)
	fire_sound = 'modular_panda/sound/weapons/gun/rifle/flamingarrow.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/rifle/skm_cocked.ogg'
	bolt_wording = "lever"
	cartridge_wording = "bullet"
	can_be_sawn_off = TRUE


	spread = 7

	recoil = 2

	door_breaching_weapon = FALSE

/obj/item/shiptest_gun/ballistic/shotgun/flamingarrow/rack(mob/user = null)
	. = ..()
	if(!user?.is_holding(src))
		SpinAnimation(7,1)

/obj/item/shiptest_gun/ballistic/shotgun/flamingarrow/process_fire(atom/target, mob/living/user, message = TRUE, params = null, zone_override = "", bonus_spread = 0)
	var/fan = FALSE
	. = ..()
	fire_delay = src::fire_delay
	if(fan)
		rack()
		to_chat(user, span_notice("You quickly rack the [bolt_wording] of \the [src]!"))
		balloon_alert_to_viewers("quickly racks!")
		fire_delay = 0 SECONDS


/obj/item/shiptest_gun/ballistic/shotgun/flamingarrow/factory
	desc = "A sturdy and lightweight lever-action rifle with hand-stamped Hunter's Pride marks on the receiver. This example has been kept in excellent shape and may as well be fresh out of the workshop. Chambered in .38."
	icon_state = "flamingarrow_factory"
	base_icon_state = "flamingarrow_factory"
	inhand_icon_state = "flamingarrow_factory"


/obj/item/shiptest_gun/ballistic/shotgun/flamingarrow/bolt
	name = "HP Flaming Bolt"
	desc = "A sturdy, excellently-made lever-action rifle. This one appears to be a genuine antique, kept in incredibly good condition despite its advanced age. Chambered in .38."
	base_icon_state = "flamingbolt"
	icon_state = "flamingbolt"
	inhand_icon_state = "flamingbolt"


/obj/item/shiptest_gun/ballistic/shotgun/flamingarrow/absolution
	name = "HP Absolution"
	base_icon_state = "absolution"
	icon_state = "absolution"
	inhand_icon_state = "absolution"
	fire_sound = 'modular_panda/sound/weapons/gun/revolver/shot.ogg'
	desc = "A large lever-action rifle with hand-stamped Hunter's Pride marks on the receiver and an 8 round ammunition capacity. More powerful than the Flaming Arrow, the Absolution is a popular pick for hunting larger fauna like bears and goliaths, especially when a bolt action's slower rate of fire would be a liability. Chambered in .357."
	sawn_desc = "A large lever-action rifle, sawn down for portability. It looks much cooler, but you should probably be using a revolver..."
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/shot/winchester/absolution
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/shot/winchester/absolution,
	)
	//had to add this because the absolution went off the flaming arrowbasetype and I don't intend to buff the abs

/obj/item/shiptest_gun/ballistic/shotgun/flamingarrow/absolution/factory
	desc = "A large lever-action rifle with hand-stamped Hunter's Pride marks on the receiver and an 8 round ammunition capacity. More powerful than the Flaming Arrow, the Absolution is a popular pick for hunting larger fauna like bears and goliaths, especially when a bolt action's slower rate of fire would be a liability. This example has been kept in excellent shape and may as well be fresh out of the workshop. Chambered in .357."
	icon_state = "absolution_factory"
	base_icon_state = "absolution_factory"
	inhand_icon_state = "absolution_factory"


/obj/item/shiptest_gun/ballistic/shotgun/flamingarrow/pyre
	name = "HP Pyre"
	base_icon_state = "pyre"
	icon_state = "pyre"
	inhand_icon_state = "pyre"
	fire_sound = 'modular_panda/sound/weapons/gun/revolver/shot_hunting.ogg'
	desc = "A powerful lever-action rifle with hand-stamped Hunter's Pride marks on the receiver and an 5 round ammunition capacity. Bulky and unwieldy but devastatingly powerful. Chambered in .45-70."
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/shot/winchester/pyre
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/shot/winchester/pyre,
	)
	fire_delay = 0.8 SECONDS
	spread = 0
	recoil = 4
	gunslinger_recoil_bonus = 0

	can_be_sawn_off = FALSE

/obj/item/shiptest_gun/ballistic/shotgun/flamingarrow/pyre/factory
	base_icon_state = "pyre_factory"
	icon_state = "pyre_factory"
	inhand_icon_state = "pyre_factory"
	desc = "A powerful lever-action rifle with hand-stamped Hunter's Pride marks on the receiver and an 5 round ammunition capacity, in pristine wood furniture lined with brass. Bulky and unwieldy but devastatingly powerful. Chambered in .45-70."

//Break-Action Rifle
/obj/item/shiptest_gun/ballistic/shotgun/doublebarrel/beacon
	name = "HP Beacon"
	desc = "A break-action rifle made by Hunter's Pride and sold to civilian hunters. Boasts excellent accuracy and stopping power. Uses .45-70 ammo."
	sawn_desc= "A break-action pistol chambered in .45-70. A bit difficult to aim."
	base_icon_state = "beacon"
	icon_state = "beacon"
	inhand_icon_state = "beacon"
	inhand_x_dimension = 32
	inhand_y_dimension = 32
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/shot/beacon
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/shot/beacon,
	)
	fire_sound = 'modular_panda/sound/weapons/gun/revolver/shot_hunting.ogg'
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_MEDIUM
	force = 10
	obj_flags = UNIQUE_RENAME
	semi_auto = TRUE
	can_be_sawn_off = TRUE
	pb_knockback = 3
	spread = 0
	recoil = 5

	gun_firemodes = list(FIREMODE_SEMIAUTO)
	default_firemode = FIREMODE_SEMIAUTO

/obj/item/shiptest_gun/ballistic/shotgun/doublebarrel/beacon/factory
	desc = "A break-action rifle made by Hunter's Pride and sold to civilian hunters. This example has been kept in excellent shape and may as well be fresh out of the workshop. Uses .45-70 ammo."
	sawn_desc= "A break-action pistol chambered in .45-70. A bit difficult to aim."
	base_icon_state = "beacon_factory"
	icon_state = "beacon_factory"
	inhand_icon_state = "beacon_factory"

/// snipers

//well. its almost a sniper.
/obj/item/shiptest_gun/ballistic/automatic/marksman/vickland //weapon designed by Apogee-dev
	name = "\improper Vickland"
	desc = "The pride of the Saint-Roumain Militia, the Vickland is a rare semi-automatic battle rifle produced by Hunter's Pride exclusively for SRM use. It is unusual in its class for its internal rotary magazine, which must be reloaded using stripper clips. Chambered in 8x50mmR."
	icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/onmob.dmi'

	fire_sound = 'modular_panda/sound/weapons/gun/rifle/vickland.ogg'
	icon_state = "vickland"
	inhand_icon_state = "vickland"
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_BULKY
	internal_magazine = TRUE
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/vickland
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/vickland,
	)
	fire_sound = 'modular_panda/sound/weapons/gun/rifle/vickland.ogg'

	manufacturer = MANUFACTURER_HUNTERSPRIDE

	rack_sound = 'modular_panda/sound/weapons/gun/rifle/ar_cock.ogg'

	fire_delay = 0.4 SECONDS

	spread = 25
	recoil = 4

	wear_rate = 0.8 //HP weapons are more resistant to wear

/obj/item/shiptest_gun/ballistic/rifle/scout
	name = "HP Scout"
	desc = "A powerful bolt-action rifle usually given to mercenary hunters of the Saint-Roumain Militia, equally suited for taking down big game or two-legged game. Chambered in .300 Magnum."
	icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/onmob.dmi'
	icon_state = "scout"
	inhand_icon_state = "scout"

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/boltaction/smile
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/boltaction/smile,
	)
	fire_sound = 'modular_panda/sound/weapons/gun/rifle/scout.ogg'

	rack_sound = 'modular_panda/sound/weapons/gun/rifle/scout_bolt_out.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/rifle/scout_bolt_in.ogg'

	can_be_sawn_off = FALSE

	zoomable = TRUE
	zoom_amt = 10 //Long range, enough to see in front of you, but no tiles behind you.
	zoom_out_amt = 5


	recoil = 10

	manufacturer = MANUFACTURER_HUNTERSPRIDE

/obj/item/shiptest_gun/ballistic/automatic/assault/invictus
	name = "HP Invictus"
	desc = "An unwieldy automatic rifle fielded by the Saint-Roumain Militia, commonly sold to police forces and private buyers. This one has a smooth wood finish and is in pristine condition. Chambered in .308."
	icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/hunterspride/onmob.dmi'

	icon_state = "invictus"
	inhand_icon_state = "invictus"

	manufacturer = MANUFACTURER_HUNTERSPRIDE

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/invictus_308_mag
	allowed_ammo_types = /obj/item/shiptest_ammo_box/magazine/invictus_308_mag

	gun_firemodes = list(FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_FULLAUTO

	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE

	fire_delay = 0.25 SECONDS

	spread = 20

	recoil = 4

	wear_rate = 0.6

	fire_sound = 'modular_panda/sound/weapons/gun/hmg/hmg.ogg'

/obj/item/shiptest_gun/ballistic/automatic/assault/invictus/old
	desc = "An unwieldy automatic rifle fielded by the Saint-Roumain Militia, commonly sold to police forces and private buyers. Chambered in .308."
	icon_state = "invictus_old"
	inhand_icon_state = "invictus_old"

	wear_rate = 1

/obj/item/shiptest_ammo_box/magazine/invictus_308_mag
	name = "Invictus magazine (.308)"
	desc = "A 20 round box magazine for the Invictus automatic rifle. These rounds do good damage with significant armor penetration."
	base_icon_state = "invictus_mag"
	icon_state = "invictus_mag-1"
	ammo_type = /obj/item/shiptest_ammo_casing/a308
	caliber = ".308"
	max_ammo = 20
	w_class = WEIGHT_CLASS_SMALL

/obj/item/shiptest_ammo_box/magazine/invictus_308_mag/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[!!ammo_count()]"

/obj/item/shiptest_ammo_box/magazine/invictus_308_mag/empty
	start_empty = TRUE
