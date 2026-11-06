/obj/item/shiptest_gun/ballistic/automatic/pistol
	abstract_type = /obj/item/shiptest_gun/ballistic/automatic/pistol
	bolt_type = BOLT_TYPE_LOCKING
	w_class = WEIGHT_CLASS_NORMAL

	gun_firemodes = list(FIREMODE_SEMIAUTO)
	default_firemode = FIREMODE_SEMIAUTO

	vary_fire_sound = FALSE
	fire_sound_volume = 90
	bolt_wording = "slide"
	weapon_weight = WEAPON_LIGHT
	pickup_sound = 'modular_panda/sound/handling/gun_pickup.ogg'

	recoil_backtime_multiplier = 6

	zoom_amt = PISTOL_ZOOM

	fire_delay = 0.3 SECONDS

	recoil = 0.5
	spread = 5

	muzzleflash_iconstate = "muzzle_flash_light"

/obj/item/shiptest_gun/ballistic/automatic/pistol/commissar
	name = "\improper Commissar"
	desc = "A Makosso-Warra-issue handgun, modified with a voice box to further enhance its effectiveness in troop discipline."
	icon_state = "challenger"
	icon = 'modular_panda/icons/obj/guns/manufacturer/warra_sharplite/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/warra_sharplite/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/warra_sharplite/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/warra_sharplite/onmob.dmi'

	w_class = WEIGHT_CLASS_NORMAL
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/co9mm
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/co9mm,
	)
	var/funnysounds = TRUE
	var/cooldown = 0
	load_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release.ogg'

	rack_sound = 'modular_panda/sound/weapons/gun/pistol/rack_small.ogg'
	lock_back_sound = 'modular_panda/sound/weapons/gun/pistol/lock_small.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/pistol/drop_small.ogg'

	autowiki_hidden = TRUE

/obj/item/shiptest_gun/ballistic/automatic/pistol/commissar/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_REMOVED)

/obj/item/shiptest_gun/ballistic/automatic/pistol/commissar/equipped(mob/living/user, slot)
	..()
	if(slot == ITEM_SLOT_HANDS && funnysounds) // Only play this when it is picked up.
		playsound(src, 'modular_panda/sound/weapons/gun/commissar/pickup.ogg', 30, 0)

/obj/item/shiptest_gun/ballistic/automatic/pistol/commissar/shoot_live_shot(mob/living/user, pointblank, atom/pbtarget, message)
	. = ..()
	if(prob(50) && funnysounds)
		playsound(src, 'modular_panda/sound/weapons/gun/commissar/shot.ogg', 30, 0)

/obj/item/shiptest_gun/ballistic/automatic/pistol/commissar/shoot_with_empty_chamber(mob/living/user)
	. = ..()
	if(prob(50) && funnysounds)
		playsound(src, 'modular_panda/sound/weapons/gun/commissar/dry.ogg', 30, 0)

/obj/item/shiptest_gun/ballistic/automatic/pistol/commissar/insert_magazine(mob/user, obj/item/ammo_box/magazine/AM, display_message)
	. = ..()
	if(bolt_locked)
		drop_bolt(user)
		if(. && funnysounds)
			playsound(src, 'modular_panda/sound/weapons/gun/commissar/magazine.ogg', 30, 0)

/obj/item/shiptest_gun/ballistic/automatic/pistol/commissar/multitool_act(mob/living/user, obj/item/I)
	. = ..()
	funnysounds = !funnysounds
	to_chat(user, span_notice("You toggle [src]'s vox audio functions."))

/obj/item/shiptest_gun/ballistic/automatic/pistol/commissar/click_alt(mob/user)
	. = ..()
	if(!Adjacent(user, src) || user.incapacitated)
		return
	if((cooldown < world.time - 200) && funnysounds)
		user.audible_message("<font color='red' size='5'><b>DON'T TURN AROUND!</b></font>")
		playsound(src, 'modular_panda/sound/weapons/gun/commissar/dontturnaround.ogg', 50, 0, 4)
		cooldown = world.time

/obj/item/shiptest_gun/ballistic/automatic/pistol/commissar/examine(mob/user)
	. = ..()
	if(funnysounds)
		. += span_info("Alt-click to use \the [src] vox hailer.")

/obj/item/shiptest_gun/ballistic/automatic/pistol/disposable
	name = "disposable gun"
	desc = "An extraordinarily flimsy single-use gun manufactured out of molded plastic. While the origins of this particular design are unknown, the schematics can be found just about everywhere on the intranet. A popular choice among the particularly desperate. Chambered in .22 LR, and has ten shots - make them count."
	icon = 'modular_panda/icons/obj/guns/zippy.dmi'
	icon_state = "zippy"
	fire_sound = 'modular_panda/sound/weapons/gun/pistol/himehabu.ogg'

	w_class = WEIGHT_CLASS_SMALL
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/disposable
	allowed_ammo_types = list(/obj/item/shiptest_ammo_box/magazine/disposable)
	custom_materials = list(/datum/material/plastic = 2000)
	has_safety = FALSE // you get what you pay for
	safety = FALSE
	no_bolt_overlay = TRUE

	var/trigger_pull_fail = 33 // funny snowflake jam chance
	var/desc_more = null // for appending variant descriptions

/obj/item/shiptest_gun/ballistic/automatic/pistol/disposable/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_REMOVED)

/obj/item/shiptest_gun/ballistic/automatic/pistol/disposable/Initialize()
	. = ..()
	if(desc_more)
		desc += " [desc_more]"

/obj/item/shiptest_gun/ballistic/automatic/pistol/disposable/eject_magazine(mob/user, display_message = TRUE)
	to_chat(user, span_warning("Theres no magazine to eject!"))
	return

/obj/item/shiptest_gun/ballistic/automatic/pistol/disposable/insert_magazine(mob/user)
	to_chat(user, span_warning("Theres no magazine to replace!"))
	return

/obj/item/shiptest_gun/ballistic/automatic/pistol/disposable/fire_gun(atom/target, mob/living/user, flag, params)
	if(prob(trigger_pull_fail))
		balloon_alert(user, "stuck!")
		playsound(src, 'modular_panda/sound/weapons/gun/general/dry_fire.ogg', 50, TRUE, -15)
		return
	return ..()

// now available in fun colors
/obj/item/shiptest_gun/ballistic/automatic/pistol/disposable/red
	name = "red disposable gun"
	icon_state = "zippy_red"
	desc_more = "This one is made out of a bright red plastic."

/obj/item/shiptest_gun/ballistic/automatic/pistol/disposable/purple
	name = "purple disposable gun"
	icon_state = "zippy_purple"
	desc_more = "This one is made out of a bold purple plastic."

/obj/item/shiptest_gun/ballistic/automatic/pistol/disposable/blue
	name = "blue disposable gun"
	icon_state = "zippy_blue"
	desc_more = "This one is made out of a deep blue plastic."

/obj/item/shiptest_gun/ballistic/automatic/pistol/disposable/gold
	name = "golden disposable gun"
	icon_state = "zippy_gold"
	desc_more = "This one has an exceptionally tacky gold finish. Lucky you."

/obj/item/shiptest_gun/ballistic/automatic/pistol/disposable/pink
	name = "pink disposable gun"
	icon_state = "zippy_pink"
	desc_more = "This one is made out of a rosy pink plastic."

/obj/item/shiptest_gun/ballistic/automatic/pistol/disposable/green
	name = "green disposable gun"
	icon_state = "zippy_green"
	desc_more = "This one is made out of an earthy green plastic."

/obj/item/shiptest_gun/ballistic/automatic/pistol/disposable/black
	name = "tactical disposable gun"
	icon_state = "zippy_black"
	desc_more = "This one is made out of a dark black plastic."

/obj/item/shiptest_gun/ballistic/automatic/pistol/disposable/silver
	name = "silver disposable gun"
	icon_state = "zippy_silver"
	desc_more = "This one has a matte silver finish."

/obj/item/shiptest_gun/ballistic/automatic/pistol/disposable/beige
	name = "beige disposable gun"
	icon_state = "zippy_beige"
	desc_more = "This one is made out of a dull beige plastic."

/obj/item/shiptest_gun/ballistic/automatic/pistol/disposable/phenex
	name = "disposable phenex"
	icon_state = "zippy_phenex"
	desc_more = "This one has a paint job resembling the infamous BA Phenex, though you suspect its make is nowhere matching the quality."

/obj/item/shiptest_gun/ballistic/automatic/pistol/disposable/sharplite
	name = "SL X22 “Spark” Disposable Handgun"
	icon_state = "zarplite"
	desc_more = "This one has a paint job resembling a Sharplite electroplasma gun, barely disguising its true nature."

// ASPAWN INFINITE AMMO VARIANT //
/obj/item/shiptest_gun/ballistic/automatic/pistol/disposable/infinite_ammo
	name = "true disposable gun"
	desc = "The brutal conclusion of arms development research. Gaze upon it and despair. Chambered in .22 LR."
	fire_delay = 0.09 SECONDS
	gun_firemodes = list(FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_FULLAUTO
	wear_rate = 0
	trigger_pull_fail = 0

/obj/item/shiptest_gun/ballistic/automatic/pistol/disposable/infinite_ammo/process_fire()
	. = ..()
	magazine.top_off(null, TRUE) // experimental bluespace magazine

// CHOCOLATE GUN - YOU CAN EAT IT //
/obj/item/shiptest_gun/ballistic/automatic/pistol/disposable/chocolate
	name = "chocolate gun"
	desc = "What appears to be a brick of chocolate cast into the shape of a gun. Concerningly, the mechanical components still seem to be made of plastic, suggesting that this is capable of firing at least once."
	icon_state = "zippy_chocolate"
	spread = 30

/obj/item/shiptest_gun/ballistic/automatic/pistol/disposable/chocolate/Initialize()
	. = ..()
	AddComponent(/datum/component/edible,\
		initial_reagents = list(/datum/reagent/consumable/nutriment = 10),\
		volume = 10,\
		eat_time = 1 SECONDS,\
		tastes = list("single-use plastics" = 10, "expired chocolate" = 10, "gun" = 5),\
		foodtypes = TOXIC | GROSS,\
		bite_consumption = 2,\
		after_eat = CALLBACK(src, PROC_REF(crunchy)))

// called when we eat the chocolate gun by ^ that callback right there
/obj/item/shiptest_gun/ballistic/automatic/pistol/disposable/chocolate/proc/crunchy(mob/eater, mob/feeder)
	process_fire(eater, feeder, FALSE, null, BODY_ZONE_HEAD) // hope it isn't loaded

/obj/item/shiptest_gun/ballistic/automatic/pistol/disposable/chocolate/attack(mob/victim, mob/user)
	var/datum/component/edible/my_component = GetComponent(/datum/component/edible)
	my_component.TryToEat(victim, user) // abhorrent! but it works
	return ..()

//not technically a pistol but whatever
/obj/item/shiptest_gun/ballistic/automatic/pistol/derringer
	name = "BA Spark"
	desc = "An easily concealable derringer. Its simple design and modest demand make the Spark a common project for trainee Bastion Armaments gunsmiths. Chambered in .38."
	icon_state = "derringer"
	inhand_icon_state = "hp_generic"

	icon = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/onmob.dmi'

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/derr38
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/derr38,
	)
	fire_sound = 'modular_panda/sound/weapons/gun/revolver/shot.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/revolver/load_bullet.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/revolver/empty.ogg'
	fire_sound_volume = 60
	dry_fire_sound = 'modular_panda/sound/weapons/gun/revolver/dry_fire.ogg'
	casing_ejector = FALSE
	internal_magazine = TRUE
	bolt_type = BOLT_TYPE_NO_BOLT
	tac_reloads = FALSE
	w_class = WEIGHT_CLASS_TINY
	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_BURST)

/obj/item/shiptest_gun/ballistic/automatic/pistol/derringer/get_ammo(countchambered = FALSE, countempties = TRUE)
	var/boolets = 0 //legacy var name maturity
	if (chambered && countchambered)
		boolets++
	if (magazine)
		boolets += magazine.ammo_count(countempties)
	return boolets

/obj/item/shiptest_gun/ballistic/automatic/pistol/derringer/examine(mob/user)
	. = ..()
	var/live_ammo = get_ammo(FALSE, FALSE)
	. += "[live_ammo ? live_ammo : "None"] of those are live rounds."

/obj/item/shiptest_gun/ballistic/automatic/pistol/derringer/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_BASTION)

/obj/item/shiptest_gun/ballistic/automatic/pistol/derringer/traitor
	name = "D-9 \"Temblor\""
	desc = "An easily concealable derriger. It was rarely used as an alternative to the PC-81 \"Himehabu\" during covert operations, but nowadays sees use through executive staff self-defense. Chambered in .357."

	icon = 'modular_panda/icons/obj/guns/manufacturer/scarborough/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/scarborough/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/scarborough/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/scarborough/onmob.dmi'

	icon_state = "derringer_syndie"
	inhand_icon_state = "sa_generic"
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/derr357
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/derr357,
	)
	fire_sound_volume = 50 //Tactical stealth firing

/obj/item/shiptest_gun/ballistic/automatic/pistol/derringer/traitor/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/shiptest_gun/ballistic/automatic/pistol/derringer/gold
	name = "golden derringer"
	desc = "The golden sheen is somewhat counter-intuitive on a holdout weapon, but it looks cool. Uses .357 ammo."
	icon_state = "derringer_gold"
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/derr357
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/derr357,
	)

/obj/item/shiptest_gun/ballistic/automatic/pistol/ringneck
	name = "PC-76 \"Ringneck\""
	desc = "A compact handgun used by most Syndicate-affiliated groups. Small enough to conceal in most pockets, making it popular for covert elements and simply as a compact defensive weapon. Chambered in 10mm."
	icon = 'modular_panda/icons/obj/guns/manufacturer/scarborough/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/scarborough/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/scarborough/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/scarborough/onmob.dmi'
	icon_state = "ringneck"
	inhand_icon_state = "sa_generic"

	w_class = WEIGHT_CLASS_SMALL
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m10mm_ringneck
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m10mm_ringneck,
	)

	fire_sound = 'modular_panda/sound/weapons/gun/pistol/shot.ogg'
	dry_fire_sound = 'modular_panda/sound/weapons/gun/pistol/dry_fire.ogg'
	suppressed_sound = 'modular_panda/sound/weapons/gun/pistol/shot_suppressed.ogg'

	load_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert_alt.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert_alt.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release_alt.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release_alt.ogg'

	rack_sound = 'modular_panda/sound/weapons/gun/pistol/rack_small.ogg'
	lock_back_sound = 'modular_panda/sound/weapons/gun/pistol/lock_small.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/pistol/drop_small.ogg'

	show_magazine_on_sprite = TRUE

	spread = 6

/obj/item/shiptest_gun/ballistic/automatic/pistol/ringneck/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/shiptest_gun/ballistic/automatic/pistol/ringneck/indie
	name = "Ringneck-76"
	desc = "A service handgun popular among law enforcement, mercenaries, and independent spacers with discerning tastes. Chambered in 10mm."

	icon_state = "ringneck76"
	inhand_icon_state = "sa_indie"

	w_class = WEIGHT_CLASS_NORMAL

	spread = 5

/obj/item/shiptest_gun/ballistic/automatic/pistol/asp
	name = "BC-81 \"Asp\""
	desc = "An armor-piercing combat handgun used by Syndicate strike teams, now primarily used by operatives of the Gorlex Marauders. Chambered in 5.7mm."

	icon = 'modular_panda/icons/obj/guns/manufacturer/scarborough/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/scarborough/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/scarborough/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/scarborough/onmob.dmi'
	icon_state = "asp"
	inhand_icon_state = "sa_generic"

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m57_39_asp
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m57_39_asp,
	)

	fire_sound = 'modular_panda/sound/weapons/gun/pistol/asp.ogg'

	load_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release.ogg'

	rack_sound = 'modular_panda/sound/weapons/gun/pistol/rack.ogg'
	lock_back_sound = 'modular_panda/sound/weapons/gun/pistol/lock_small.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/pistol/drop_small.ogg'

	show_magazine_on_sprite = TRUE

/obj/item/shiptest_gun/ballistic/automatic/pistol/asp/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/shiptest_gun/ballistic/automatic/pistol/rattlesnake
	name = "MP-84 \"Rattlesnake\""
	desc = "A machine pistol, used by Syndicate infiltrators and special forces. Still used by specialists and security operatives in Syndicate factions. Chambered in 9mm."

	icon = 'modular_panda/icons/obj/guns/manufacturer/scarborough/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/scarborough/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/scarborough/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/scarborough/onmob.dmi'

	icon_state = "rattlesnake"
	inhand_icon_state = "rattlesnake"

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m9mm_rattlesnake
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m9mm_rattlesnake,
	)

	fire_sound = 'modular_panda/sound/weapons/gun/pistol/rattlesnake.ogg'
	dry_fire_sound = 'modular_panda/sound/weapons/gun/pistol/dry_fire.ogg'
	suppressed_sound = 'modular_panda/sound/weapons/gun/pistol/shot_suppressed.ogg'

	load_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert_alt.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert_alt.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release_alt.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release_alt.ogg'

	rack_sound = 'modular_panda/sound/weapons/gun/pistol/rack_small.ogg'
	lock_back_sound = 'modular_panda/sound/weapons/gun/pistol/lock_small.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/pistol/drop_small.ogg'

	show_magazine_on_sprite = TRUE

	burst_size = 3
	burst_delay = 0.1 SECONDS
	fire_delay = 0.07 SECONDS
	wear_minor_threshold = 240
	wear_major_threshold = 720
	wear_maximum = 1200
	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_BURST, FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_SEMIAUTO

/obj/item/shiptest_gun/ballistic/automatic/pistol/rattlesnake/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/shiptest_gun/ballistic/automatic/pistol/rattlesnake/cottonmouth
	name = "MP-84m Cottonmouth"
	desc = "A machine pistol obtained from Marauder stockpiles and heavily modified by elements of the Ramzi Clique to accept a larger calibre, with a few largely-ignored drawbacks of 2-round burst and magazine capacity. Chambered in 10mm."

	icon_state = "cottonmouth"
	inhand_icon_state = "cottonmouth"

	fire_sound = 'modular_panda/sound/weapons/gun/pistol/asp.ogg'

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m10mm_cottonmouth
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m10mm_cottonmouth,
	)

	wear_rate = 1.5

	recoil = 0.5
	burst_size = 2
	burst_delay = 0.07 SECONDS
	fire_delay = 0.1 SECONDS
	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_BURST)

/obj/item/shiptest_gun/ballistic/automatic/pistol/himehabu
	name = "PC-81 \"Himehabu\""
	desc = "An astonishingly compact machine pistol firing ultra-light projectiles, designed to be as small and concealable as possible while remaining a credible threat at very close range. Armor penetration is practically non-existent. Chambered in .22."

	icon_state = "himehabu"
	inhand_icon_state = "sa_generic"

	icon = 'modular_panda/icons/obj/guns/manufacturer/scarborough/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/scarborough/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/scarborough/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/scarborough/onmob.dmi'

	w_class = WEIGHT_CLASS_TINY
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m22lr_himehabu
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m22lr_himehabu,
	)
	fire_sound = 'modular_panda/sound/weapons/gun/pistol/himehabu.ogg'

	load_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert_alt.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert_alt.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release_alt.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release_alt.ogg'

	rack_sound = 'modular_panda/sound/weapons/gun/pistol/rack_small.ogg'
	lock_back_sound = 'modular_panda/sound/weapons/gun/pistol/lock_small.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/pistol/drop_small.ogg'

	show_magazine_on_sprite = TRUE

	spread = -2
	recoil = -2

/obj/item/shiptest_gun/ballistic/automatic/pistol/himehabu/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/shiptest_gun/ballistic/automatic/pistol/m17
	name = "Model 17 \"Micro Target\""
	desc = "A lightweight and very accurate target pistol produced by Hinterland Sporting Arms. The barrel can be unscrewed for storage. Chambered in .22 LR."

	icon = 'modular_panda/icons/obj/guns/manufacturer/hinterland_sporting/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/hinterland_sporting/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/hinterland_sporting/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/hinterland_sporting/onmob.dmi'
	icon_state = "m17"
	inhand_icon_state = "so_generic"

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m17
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m17,
	)

	fire_sound = 'modular_panda/sound/weapons/gun/pistol/himehabu.ogg'

	show_magazine_on_sprite = TRUE
	bolt_type = BOLT_TYPE_LOCKING

	w_class = WEIGHT_CLASS_SMALL

	spread = 1
	recoil = -2

/obj/item/shiptest_gun/ballistic/automatic/pistol/m17/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_HINTERLAND)

/obj/item/shiptest_gun/ballistic/automatic/pistol/m20
	name = "Model 20 \"Auto Elite\""
	desc = "A large handgun chambered .44 Solarian. Originally developed by Serene Outdoors for the Star City Police Department when their older handguns proved underpowered, the Auto Elite proved heavy and unwieldy in practice. It has nevertheless seen modest success as a sidearm for big game hunters and among customers looking to make an impression."

	icon = 'modular_panda/icons/obj/guns/manufacturer/hinterland_sporting/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/hinterland_sporting/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/hinterland_sporting/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/hinterland_sporting/onmob.dmi'
	icon_state = "m20"
	inhand_icon_state = "so_generic"

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m20_auto_elite
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m20_auto_elite,
	)

	fire_sound = 'modular_panda/sound/weapons/gun/pistol/cm23.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/pistol/candor_cocked.ogg'
	lock_back_sound = 'modular_panda/sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/pistol/slide_drop.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/pistol/deagle_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/pistol/deagle_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/pistol/deagle_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/pistol/deagle_unload.ogg'

	recoil = 0.5

/obj/item/shiptest_gun/ballistic/automatic/pistol/m20/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_HINTERLAND)

/obj/item/shiptest_gun/ballistic/automatic/pistol/candor
	name = "\improper Candor"
	desc = "A classic semi-automatic handgun, widely popular throughout the Spinward Sector. An engraving on the slide marks it as a product of Bastion Armaments. Chambered in .44 Solarian."
	icon_state = "candor"
	inhand_icon_state = "hp_generic"
	icon = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/onmob.dmi'

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m44
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m44,
	)
	fire_sound = 'modular_panda/sound/weapons/gun/pistol/candor.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/pistol/candor_cocked.ogg'
	lock_back_sound = 'modular_panda/sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/pistol/candor_cocked.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/pistol/candor_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/pistol/candor_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/pistol/candor_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/pistol/candor_unload.ogg'
	show_magazine_on_sprite = TRUE
	wear_rate = 0.66 //HP weapons are more resistant to wear

/obj/item/shiptest_gun/ballistic/automatic/pistol/candor/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_BASTION)

/obj/item/shiptest_gun/ballistic/automatic/pistol/candor/factory
	desc = "A classic semi-automatic handgun, widely popular throughout the Spinward Sector. This example has been kept in especially good shape, and may as well be fresh out of the workshop. Chambered in .44."
	inhand_icon_state = "hp_generic_fresh"
	wear_rate = 0.6 //factory guns are now OBJECTIVELY better. if they happen to be candors.

/obj/item/shiptest_gun/ballistic/automatic/pistol/candor/factory/update_overlays()
	. = ..()
	. += "[initial(icon_state)]_factory"

/obj/item/shiptest_gun/ballistic/automatic/pistol/mauler
	name = "Mauler machine pistol"
	desc = "An automatic machine pistol originating from the industrial colonies of the Frontier. Impressive volume of fire with high recoil, lackluster armor penetration, and limited magazine size render it difficult to use outside of close quarters. Chambered in 9mm."
	icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/bastion_armaments/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/onmob.dmi'

	icon_state = "mauler_mp"
	inhand_icon_state = "hp_generic"
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m9mm_mauler/extended
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m9mm_mauler,
		/obj/item/shiptest_ammo_box/magazine/m9mm_mauler/extended,
	)
	fire_delay = 0.06 SECONDS

	gun_firemodes = list(FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_FULLAUTO

	show_magazine_on_sprite = FALSE //hard coded

	spread = 15
	recoil = 3
	safety_multiplier = 2 //this means its twice as safe right? //oh, god no.

	fire_sound = 'modular_panda/sound/weapons/gun/pistol/mauler.ogg'

	rack_sound = 'modular_panda/sound/weapons/gun/pistol/candor_cocked.ogg'

	lock_back_sound = 'modular_panda/sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/pistol/candor_cocked.ogg'

	load_sound = 'modular_panda/sound/weapons/gun/pistol/candor_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/pistol/candor_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/pistol/candor_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/pistol/candor_unload.ogg'

	wear_rate = 2
	wear_minor_threshold = 240
	wear_major_threshold = 720
	wear_maximum = 1200

/obj/item/shiptest_gun/ballistic/automatic/pistol/mauler/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_FRONTIER)

/obj/item/shiptest_gun/ballistic/automatic/pistol/mauler/update_overlays()
	. = ..()
	if (magazine)
		. += "mauler_mag_[magazine.base_icon_state]"

/obj/item/shiptest_gun/ballistic/automatic/pistol/mauler/regular
	name = "Mauler pistol"
	desc = "A toned down semi-auto version of the Mauler. Still fast to fire still with better accuracy than it's auto counterpart, but it's still innaccurate compared to most modern pistols. Chambered in 9mm."

	icon_state = "mauler"

	spread = 8
	recoil = 0
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m9mm_mauler

	fire_delay = 0.12 SECONDS

	gun_firemodes = list(FIREMODE_SEMIAUTO)
	default_firemode = FIREMODE_SEMIAUTO

/obj/item/shiptest_gun/ballistic/automatic/pistol/spitter
	name = "\improper Spitter"
	desc = "An open-bolt submachine gun favored by the Frontiersmen. This design's origins are unclear, but its simple, robust design has been widely copied throughout the Frontier, and it is stereotypically used by pirates and various criminal groups that value low price and ease of concealment. Chambered in 9mm."
	icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/onmob.dmi'

	icon_state = "spitter"
	inhand_icon_state = "spitter"
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/spitter_9mm
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/spitter_9mm,
	)
	bolt_type = BOLT_TYPE_OPEN
	weapon_weight = WEAPON_LIGHT
	show_magazine_on_sprite = TRUE

	spread = 15
	dual_wield_spread = 35
	fire_delay = 0.09 SECONDS
	safety_multiplier = 2

	fire_sound = 'modular_panda/sound/weapons/gun/smg/spitter.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/smg/spitter_cocked.ogg'
	rack_sound_vary = FALSE

	load_sound_vary = FALSE
	eject_sound_vary = FALSE
	load_sound = 'modular_panda/sound/weapons/gun/smg/spitter_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/smg/spitter_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/smg/spitter_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/smg/spitter_unload.ogg'

	wear_rate = 0.8
	wear_minor_threshold = 240
	wear_major_threshold = 720
	wear_maximum = 1200

	gun_firemodes = list(FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_FULLAUTO

/obj/item/shiptest_gun/ballistic/automatic/pistol/spitter/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_PIRATE)

/obj/item/shiptest_gun/ballistic/automatic/pistol/nt23
	name = "\improper NT-23"
	desc = "Nanotrasen's standard service pistol. 10 rounds of 10mm ammunition make the NT-23 deadlier than many other service pistols, but its weight and bulk have made it unpopular as a sidearm. It has largely been phased out outside of station security and underfunded private security forces in the Spinward Sector. Chambered in 10mm."
	icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/onmob.dmi'

	icon_state = "cm23"
	inhand_icon_state = "clip_generic"
	w_class = WEIGHT_CLASS_NORMAL
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m10mm_nt23
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m10mm_nt23,
	)
	fire_sound = 'modular_panda/sound/weapons/gun/pistol/cm23.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/pistol/candor_cocked.ogg'
	lock_back_sound = 'modular_panda/sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/pistol/slide_drop.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/pistol/candor_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/pistol/candor_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/pistol/candor_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/pistol/candor_unload.ogg'

	fire_select_icon_state_prefix = "clip_"
	adjust_fire_select_icon_state_on_safety = TRUE

/obj/item/shiptest_gun/ballistic/automatic/pistol/nt23/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)

/obj/item/shiptest_gun/ballistic/automatic/pistol/nt70
	name = "NT-70 machine pistol"
	desc = "A compact machine pistol designed to rapidly fire 9mm ammo. Popular with security officers and emergency response teams, the NT-70 is incredibly dangerous at close range. Chambered in 9mm."
	icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/onmob.dmi'
	icon_state = "cm70"
	inhand_icon_state = "clip_generic"
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m9mm_nt70
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m9mm_nt70,
	)
	burst_size = 3
	burst_delay = 0.1 SECONDS
	fire_delay = 0.07 SECONDS
	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_SEMIAUTO

	fire_select_icon_state_prefix = "clip_"
	adjust_fire_select_icon_state_on_safety = TRUE

	fire_sound = 'modular_panda/sound/weapons/gun/pistol/cm70.ogg'

	spread = 8

	wear_minor_threshold = 240
	wear_major_threshold = 720
	wear_maximum = 1200

/obj/item/shiptest_gun/ballistic/automatic/pistol/nt70/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)

/obj/item/shiptest_gun/ballistic/automatic/pistol/nt357
	name = "\improper NT-357"
	desc = "A powerful semi-automatic handgun designed for Nanotrasen's megafauna removal unit, as standard handguns had proven ineffective as backup weapons. The heft and power of the weapon have made it a status symbol among the few Nanotrasen officers able to requisition one. Chambered in .357."
	icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/onmob.dmi'

	icon_state = "cm357"
	inhand_icon_state = "clip_generic"
	w_class = WEIGHT_CLASS_NORMAL
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/nt357
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/nt357,
	)
	fire_sound = 'modular_panda/sound/weapons/gun/pistol/deagle.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/pistol/candor_cocked.ogg'
	lock_back_sound = 'modular_panda/sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/pistol/slide_drop.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/pistol/candor_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/pistol/candor_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/pistol/candor_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/pistol/candor_unload.ogg'

	fire_select_icon_state_prefix = "clip_"
	adjust_fire_select_icon_state_on_safety = TRUE

	recoil = 1

/obj/item/shiptest_gun/ballistic/automatic/pistol/nt357/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)
