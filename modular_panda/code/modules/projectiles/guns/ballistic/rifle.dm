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

/obj/item/shiptest_gun/ballistic/rifle/illestren
	name = "\improper BA Illestren"
	desc = "A sturdy and conventional bolt-action rifle. One of Bastion Armaments' most successful firearms, the Illestren is popular among colonists, pirates, snipers, and countless others. Chambered in 8x50mmR."
	sawn_desc = "An Illestren rifle sawn down to a ridiculously small size. There was probably a reason it wasn't made this short to begin with, but it still packs a punch."
	icon_state = "illestren"
	inhand_icon_state = "illestren"
	icon = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/onmob.dmi'

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

/obj/item/shiptest_gun/ballistic/rifle/illestren/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_BASTION)

/obj/item/shiptest_gun/ballistic/rifle/illestren/sawoff(forced = FALSE)
	. = ..()
	if(.)
		spread = 19
		icon_state = "illestren_sawn"
		inhand_icon_state = "illestren_sawn"
		weapon_weight = WEAPON_MEDIUM
		w_class = WEIGHT_CLASS_NORMAL
		slot_flags = ITEM_SLOT_BELT | ITEM_SLOT_SUITSTORE

/obj/item/shiptest_gun/ballistic/rifle/illestren/sawn
	desc = "An Illestren rifle sawn down to a ridiculously small size. There was probably a reason it wasn't made this short to begin with, but it still packs a punch."
	icon_state = "illestren_sawn"
	inhand_icon_state = "illestren_sawn"
	sawn_off = TRUE
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_NORMAL
	slot_flags = ITEM_SLOT_BELT | ITEM_SLOT_SUITSTORE

/obj/item/shiptest_gun/ballistic/rifle/illestren/blow_up(mob/user)
	. = FALSE
	if(chambered && chambered.BB)
		process_fire(user, user, FALSE)
		. = TRUE

/obj/item/shiptest_gun/ballistic/rifle/illestren/factory
	desc = "A sturdy and conventional bolt-action rifle. One of Bastion Armaments' most successful firearms, this example has been kept in excellent shape and may as well be fresh out of the workshop. Chambered in 8x50mmR."
	icon_state = "illestren_factory"
	inhand_icon_state = "illestren_factory"

/obj/item/shiptest_gun/ballistic/shotgun/flamingarrow
	name = "BA Flaming Arrow"
	desc = "A sturdy and lightweight lever-action rifle with hand-stamped Bastion Armaments marks on the receiver. A popular choice among Spinward Sector homesteaders for hunting small game and rudimentary self-defense. Chambered in .38."
	sawn_desc = "A lever-action rifle that has been sawed down and modified for extra portability. While surprisingly effective as a sidearm, the more important benefit is how much cooler it looks."
	base_icon_state = "flamingarrow"
	icon_state = "flamingarrow"
	inhand_icon_state = "flamingarrow"
	icon = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/onmob.dmi'
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

	spread = -5

	recoil = 0

	door_breaching_weapon = FALSE

/obj/item/shiptest_gun/ballistic/shotgun/flamingarrow/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_BASTION)

/obj/item/shiptest_gun/ballistic/shotgun/flamingarrow/sawoff(forced = FALSE)
	. = ..()
	if(.)
		spread = 19
		icon_state = "flamingarrow_sawn"
		inhand_icon_state = "flamingarrow_sawn"
		weapon_weight = WEAPON_MEDIUM

/obj/item/shiptest_gun/ballistic/shotgun/flamingarrow/sawn
	desc = "A lever-action rifle that has been sawed down and modified for extra portability. While surprisingly effective as a sidearm, the more important benefit is how much cooler it looks."
	icon_state = "flamingarrow_sawn"
	inhand_icon_state = "flamingarrow_sawn"
	sawn_off = TRUE
	weapon_weight = WEAPON_MEDIUM

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
	desc = "A sturdy and lightweight lever-action rifle with hand-stamped Bastion Armaments marks on the receiver. This example has been kept in excellent shape and may as well be fresh out of the workshop. Chambered in .38."
	icon_state = "flamingarrow_factory"
	base_icon_state = "flamingarrow_factory"
	inhand_icon_state = "flamingarrow_factory"

/obj/item/shiptest_gun/ballistic/shotgun/flamingarrow/bolt
	name = "BA Flaming Bolt"
	desc = "A sturdy, excellently-made lever-action rifle. This one appears to be a genuine antique, kept in incredibly good condition despite its advanced age. Chambered in .38."
	base_icon_state = "flamingbolt"
	icon_state = "flamingbolt"
	inhand_icon_state = "flamingbolt"

/obj/item/shiptest_gun/ballistic/shotgun/flamingarrow/absolution
	name = "BA Absolution"
	desc = "A large lever-action rifle with hand-stamped Bastion Armaments marks on the receiver and an 8 round ammunition capacity. More powerful than the Flaming Arrow, the Absolution is a popular pick for hunting larger fauna like bears and goliaths, especially when a bolt action's slower rate of fire would be a liability. Chambered in .357."
	sawn_desc = "A large lever-action rifle, sawn down for portability. It looks much cooler, but you should probably be using a revolver..."
	base_icon_state = "absolution"
	icon_state = "absolution"
	inhand_icon_state = "absolution"
	fire_sound = 'modular_panda/sound/weapons/gun/revolver/shot.ogg'
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/shot/winchester/absolution
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/shot/winchester/absolution,
	)

/obj/item/shiptest_gun/ballistic/shotgun/flamingarrow/absolution/factory
	desc = "A large lever-action rifle with hand-stamped Bastion Armaments marks on the receiver and an 8 round ammunition capacity. More powerful than the Flaming Arrow, the Absolution is a popular pick for hunting larger fauna like bears and goliaths, especially when a bolt action's slower rate of fire would be a liability. This example has been kept in excellent shape and may as well be fresh out of the workshop. Chambered in .357."
	icon_state = "absolution_factory"
	base_icon_state = "absolution_factory"
	inhand_icon_state = "absolution_factory"

/obj/item/shiptest_gun/ballistic/shotgun/flamingarrow/pyre
	name = "BA Pyre"
	desc = "A powerful lever-action rifle with hand-stamped Bastion Armaments marks on the receiver and an 5 round ammunition capacity. Bulky and unwieldy but devastatingly powerful. Chambered in .45-70."
	base_icon_state = "pyre"
	icon_state = "pyre"
	inhand_icon_state = "pyre"
	fire_sound = 'modular_panda/sound/weapons/gun/revolver/shot_hunting.ogg'
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/shot/winchester/pyre
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/shot/winchester/pyre,
	)
	fire_delay = 0.8 SECONDS
	spread = 0
	recoil = 4

	can_be_sawn_off = FALSE

/obj/item/shiptest_gun/ballistic/shotgun/flamingarrow/pyre/factory
	base_icon_state = "pyre_factory"
	icon_state = "pyre_factory"
	inhand_icon_state = "pyre_factory"
	desc = "A powerful lever-action rifle with hand-stamped Bastion Armaments marks on the receiver and an 5 round ammunition capacity, in pristine wood furniture lined with brass. Bulky and unwieldy but devastatingly powerful. Chambered in .45-70."

/obj/item/shiptest_gun/ballistic/shotgun/doublebarrel/beacon
	name = "BA Beacon"
	desc = "A break-action rifle made by Bastion Armaments and sold to civilian hunters. Boasts excellent accuracy and stopping power. Uses .45-70 ammo."
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
	recoil = 0

	gun_firemodes = list(FIREMODE_SEMIAUTO)
	default_firemode = FIREMODE_SEMIAUTO

/obj/item/shiptest_gun/ballistic/shotgun/doublebarrel/beacon/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_BASTION)

/obj/item/shiptest_gun/ballistic/shotgun/doublebarrel/beacon/sawoff(forced = FALSE)
	. = ..()
	if(.)
		weapon_weight = WEAPON_MEDIUM
		w_class = WEIGHT_CLASS_NORMAL
		slot_flags = ITEM_SLOT_BELT | ITEM_SLOT_SUITSTORE

		spread = 6
		recoil = 2
		icon_state = "ishotgun_sawn"
		inhand_icon_state = "ishotgun_sawn"


/obj/item/shiptest_gun/ballistic/shotgun/doublebarrel/beacon/sawn
	name = "BA Beacon"
	sawn_desc= "A break-action pistol chambered in .45-70. A bit difficult to aim."
	sawn_off = TRUE
	w_class = WEIGHT_CLASS_NORMAL
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE

	weapon_weight = WEAPON_MEDIUM

	icon_state = "beacon_sawn"
	inhand_icon_state = "beacon_sawn"

	spread = 6
	recoil = 2

/obj/item/shiptest_gun/ballistic/shotgun/doublebarrel/beacon/factory
	desc = "A break-action rifle made by Bastion Armaments and sold to civilian hunters. This example has been kept in excellent shape and may as well be fresh out of the workshop. Uses .45-70 ammo."
	sawn_desc= "A break-action pistol chambered in .45-70. A bit difficult to aim."
	base_icon_state = "beacon_factory"
	icon_state = "beacon_factory"
	inhand_icon_state = "beacon_factory"

/obj/item/shiptest_gun/ballistic/rifle/scout
	name = "BA Scout"
	desc = "A powerful bolt-action rifle usually given to mercenary hunters of the Terran Colonial Defense Militia, equally suited for taking down big game or two-legged game. Chambered in .300 Magnum."
	icon = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/onmob.dmi'
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

	recoil = 3

/obj/item/shiptest_gun/ballistic/rifle/scout/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_BASTION)
