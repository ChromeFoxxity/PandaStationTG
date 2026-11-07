//supertype for CS gauss cause they do things different.
/obj/item/shiptest_gun/ballistic/cs_gauss
	name = "cybersun gauss gun supertype"

	//more bullet per bullet
	casing_ejector = FALSE

	empty_alarm = TRUE
	empty_autoeject = TRUE
	bolt_type = BOLT_TYPE_STANDARD
	always_chambers = TRUE

	tac_reloads = FALSE
	bolt_wording = "prime"
	cartridge_wording = "dart"

	show_magazine_on_sprite = TRUE

	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_BURST, FIREMODE_FULLAUTO)
	gun_firenames = list(FIREMODE_SEMIAUTO = "solo", FIREMODE_BURST = "burst", FIREMODE_FULLAUTO = "automatic")

	recoil = 0.3

	wear_minor_threshold = 180
	/// Gun will start to jam more at this level of wear. The grace period between jams is also removed for extra fun
	wear_major_threshold = 300
	/// Highest wear value so the gun doesn't end up completely irreperable
	wear_maximum = 480

	wear_rate = 0

	//shameless asset reuse
	fire_select_icon_state_prefix = "lance_"

	abstract_type = /obj/item/shiptest_gun/ballistic/cs_gauss

	//if this has the functionality for locking a target
	var/smart_lock = TRUE

/obj/item/shiptest_gun/ballistic/cs_gauss/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_CYBERSUN)

/obj/item/shiptest_gun/ballistic/cs_gauss/update_overlays()
	. = ..()
	if(smart_lock)
		if(magazine)
			. += "[base_icon_state]-scope-0"
		else
			. += "[base_icon_state]-scope-1"

/obj/item/shiptest_gun/ballistic/cs_gauss/rack(mob/user, chamber_new_round)
	if(chambered)
		to_chat(user, span_notice("[src] is already primed!"))
		return FALSE
	. = ..()

/obj/item/shiptest_gun/ballistic/cs_gauss/rectifier
	name = "\improper SG27 Rectifier"
	desc = "The successor to the iconic 'SG11 Amend' gauss pistol manufactured by Cybersun Industries. Cybersun Troubleshooters demanded an version with enhanced target tracking for indoor complex indoor combat context. Payload was reduced, and digitalized targetting system was added to coordinate fire, leading to the SG27 Rectifier."
	base_icon_state = "rectifier"
	icon_state = "rectifier"
	inhand_icon_state = "small"
	icon = 'modular_panda/icons/obj/guns/manufacturer/cybersun/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/cybersun/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/cybersun/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/cybersun/onmob.dmi'

	w_class = WEIGHT_CLASS_SMALL
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/cs_gauss/pistol

	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/cs_gauss/pistol,
	)

	load_sound = 'modular_panda/sound/weapons/gun/gauss/pistol_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/gauss/pistol_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release.ogg'

	rack_sound = 'modular_panda/sound/weapons/gun/pistol/rack_small.ogg'

	fire_sound = 'modular_panda/sound/weapons/gun/cybersun/gauss.ogg'
	fire_sound_volume = 75
	vary_fire_sound = TRUE

	///How much the bullet scatters when fired while wielded.
	spread	= 6
	//additional spread when dual wielding
	dual_wield_spread = 24

	fire_delay = 0.04
	burst_delay = 0.03
	burst_size = 5

/obj/item/shiptest_gun/ballistic/cs_gauss/rectifier/export
	name = "\improper SG11 Amend"
	desc = "An iconic gauss pistol manufactured by Cybersun Industries, this one is really old. Sold to dozens of security agencies in the Sol System before finding a secondary market in space due to low risk of the gauss darts causing overpenetration. Modern versions actually have the targeting computer, unlike this one."
	base_icon_state = "amend"
	icon_state = "amend"
	inhand_icon_state = "amend"

	///How much the bullet scatters when fired while wielded.
	spread = 3
	//additional spread when dual wielding
	dual_wield_spread = 12

	smart_lock = FALSE

/obj/item/shiptest_gun/ballistic/cs_gauss/rectifier/export/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_FRONTIER)

/obj/item/shiptest_gun/ballistic/cs_gauss/convergence
	name = "\improper SG49 Convergence"
	desc = "Designed to suppress hostile targets with sustained accurate fire, the Convergence fires the same round as the smaller Rectifier, but with double the magazine capacity to allow fire to be sustained. Longer accelerator also makes unassisted fire more accurate, leading to a fairly reliable automatic weapon."
	base_icon_state = "convergence"
	icon_state = "convergence"
	inhand_icon_state = "convergence"
	icon = 'modular_panda/icons/obj/guns/manufacturer/cybersun/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/cybersun/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/cybersun/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/cybersun/onmob.dmi'

	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_MEDIUM

	wear_minor_threshold = 240
	wear_major_threshold = 380

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/cs_gauss
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/cs_gauss,
	)

	load_sound = 'modular_panda/sound/weapons/gun/gauss/rifle_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/gauss/rifle_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/smg/smg_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/smg/smg_unload.ogg'

	rack_sound = 'modular_panda/sound/weapons/gun/smg/uzi_cocked.ogg'

	fire_sound = 'modular_panda/sound/weapons/gun/cybersun/gauss.ogg'
	fire_sound_volume = 100
	vary_fire_sound = TRUE

	spread = 8

	fire_delay = 0.03

/obj/item/shiptest_gun/ballistic/cs_gauss/convergence/export
	name = "\improper SG48 Divergence"
	desc = "An older, yet mildly more accurate version of the SG49 Convergence, manufactured by Cybersun Industries, repainted, and resold by export companies. The targetting computer is removed and power used for it is redirected to the accelerator, leading to sustained, semi-accurate low calibre fire."
	base_icon_state = "divergence"
	icon_state = "divergence"
	inhand_icon_state = "divergence"

	spread = 4

	smart_lock = FALSE

/obj/item/shiptest_gun/ballistic/cs_gauss/convergence/export/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_FRONTIER)

/obj/item/shiptest_gun/ballistic/cs_gauss/vector
	name = "\improper SG95 Vector"
	desc = "The largest smart-gauss weapon manufactured by Cybersun Industries. The SG95 Vector is an upscaled accelerator mechanism from the SG49 Convergence refitted for 3x20mm Deu'Sha gauss darts. Larger darts have mildly more penetrative power, but challenge the power supply, reducing the effective rate of fire."
	base_icon_state = "vector"
	icon_state = "vector"
	inhand_icon_state = "vector"
	icon = 'modular_panda/icons/obj/guns/manufacturer/cybersun/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/cybersun/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/cybersun/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/cybersun/onmob.dmi'

	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_MEDIUM

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/cs_gauss/rifle
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/cs_gauss/rifle,
	)

	load_sound = 'modular_panda/sound/weapons/gun/gauss/rifle_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/gauss/rifle_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/smg/smg_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/smg/smg_unload.ogg'

	rack_sound = 'modular_panda/sound/weapons/gun/smg/uzi_cocked.ogg'

	fire_sound = 'modular_panda/sound/weapons/gun/cybersun/gauss2.ogg'
	fire_sound_volume = 100
	vary_fire_sound = TRUE

	recoil = 0.6

	spread = 2

	fire_delay = 0.1
	burst_delay = 0.1
	burst_size = 5

/obj/item/shiptest_gun/ballistic/cs_gauss/vector/export
	name = "\improper SG90 Director"
	desc = "An older version of the SG95 Vector, manufactured by Cybersun Industries, repainted and resold by export companies. Fires larger gauss darts in exchange for a reduced rate of fire. The Director is renowned for being a stable firing platform compared to the Vector, which is reputed to be off-weight due to the targetting computer."
	base_icon_state = "director"
	icon_state = "director"
	inhand_icon_state = "director"

	spread = 0

	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_BURST)
	burst_delay = 0.15
	burst_size = 6

	smart_lock = FALSE

/obj/item/shiptest_gun/ballistic/cs_gauss/vector/export/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_FRONTIER)
