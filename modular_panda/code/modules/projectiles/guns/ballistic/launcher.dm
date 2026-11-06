//KEEP IN MIND: These are different from gun/grenadelauncher. These are designed to shoot premade rocket and grenade projectiles, not flashbangs or chemistry casings etc.
//Put handheld rocket launchers here if someone ever decides to make something so hilarious ~Paprika
GLOBAL_LIST_INIT(rpg_scrawlings, list(
	"\"FRONT TOWARDS ENEMY\"",
	"\"MY WIFE LEFT ME\"",
	"A Kepori inset in a stylized crimson heart",
	"\"Eat lead psychohazard!\"",
	"\"Portable Demotion\"",
	"A drawing of the Rilena character 'T4L1' smoking a boof",
	"\"Eat it corpo!\"",
	"\"Suck on it, rebel!\"",
	"A Sarathi woman in a suggestive pose",
	"A masculine Sarathi shouldering a launcher",
	"A Vox woman with a sledgehammer over their shoulder",
	"A man in a floral patterned shirt and nothing else, drawn leaning against the rocket's tube",
	"A crudely-drawn picture of a Gorlex Marauder exploding",
	"A scratched-out link to some kind of website",
	".:|:;",
	"\"DEATH TO NANOTRASEN!\"",
	"\"GLORY TO NANOTRASEN!\"",
	"\"Arm this!\"",
))

/obj/item/shiptest_gun/ballistic/rocketlauncher
	name = "\improper PML-9"
	desc = "A reusable rocket-propelled grenade launcher."
	abstract_type = /obj/item/shiptest_gun/ballistic/rocketlauncher
	icon_state = "rocketlauncher"
	inhand_icon_state = "rocketlauncher"
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/rocketlauncher
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/rocketlauncher,
	)
	fire_sound = 'modular_panda/sound/weapons/gun/general/rocket_launch.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/general/rocket_load.ogg'
	gun_firemodes = list(FIREMODE_SEMIAUTO)
	default_firemode = FIREMODE_SEMIAUTO
	burst_size = 1
	fire_delay = 0.4 SECONDS

	weapon_weight = WEAPON_HEAVY
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE

	//Bolt
	bolt_type = BOLT_TYPE_NO_BOLT
	doesnt_keep_bullet = TRUE

	///Magazine stuff
	cartridge_wording = "rocket"
	internal_magazine = TRUE
	empty_indicator = TRUE
	tac_reloads = FALSE
	casing_ejector = FALSE

	attack_verb_simple = list("bludgeon", "hit", "slam", "whack")

	var/rpg_scribble = null

/obj/item/shiptest_gun/ballistic/rocketlauncher/Initialize(mapload, spawn_empty)
	. = ..()
	rpg_scribble = pick(GLOB.rpg_scrawlings)
	desc += " [rpg_scribble] is scrawled on the tube"

/obj/item/shiptest_gun/ballistic/rocketlauncher/attackby(obj/item/A, mob/user, params)
	. = ..()
	if(istype(A, /obj/item/pen))
		rpg_scribble = stripped_input(user, "What are you putting on [src]?", "Rocket Launcher Doodle")
		if(!rpg_scribble || !length(rpg_scribble))
			desc = "[src::desc]"
			return
		desc = "[src::desc] [rpg_scribble] is scribbled on the body."

/obj/item/shiptest_gun/ballistic/rocketlauncher/attack_self_tk(mob/user)
	return //too difficult to remove the rocket with TK

/obj/item/shiptest_gun/ballistic/rocketlauncher/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/shiptest_gun/ballistic/rocketlauncher/mako
	name = "RR-86 \"Mako\""
	desc = "A large, four-tube rocket launcher, the Mako fires (relatively) small rockets filled with incendiary compound, designed to cause fires and deny enemy movement. Capable of causing significant damage to exosuits on impact, as well."

	icon = 'modular_panda/icons/obj/guns/manufacturer/scarborough/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/scarborough/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/scarborough/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/scarborough/onmob.dmi'

	icon_state = "mako"
	inhand_icon_state = "mako"
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/mako
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/mako,
	)
	fire_sound = 'modular_panda/sound/weapons/gun/general/rocket_launch.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/general/rocket_load.ogg'
	w_class = WEIGHT_CLASS_BULKY
	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_SEMIAUTO
	burst_size = 1
	fire_delay = 0.4 SECONDS
	casing_ejector = FALSE
	weapon_weight = WEAPON_HEAVY
	bolt_type = BOLT_TYPE_NO_BOLT
	internal_magazine = TRUE
	cartridge_wording = "rocket"
	empty_indicator = TRUE
	tac_reloads = FALSE

/obj/item/shiptest_gun/ballistic/rocketlauncher/mako/light
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/mako/light

/obj/item/shiptest_gun/ballistic/rocketlauncher/oneshot
	name = "\improper Hammer"
	desc = "A disposable rocket-propelled grenade launcher loaded with a standard HE shell."

	icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/frontier_import/onmob.dmi'
	base_icon_state = "rpg"
	icon_state = "rpg"
	inhand_icon_state = "rpg"

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/rocketlauncher/oneshot
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/rocketlauncher/oneshot,
	)
	fire_sound = 'modular_panda/sound/weapons/gun/general/rocket_launch.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/general/rocket_load.ogg'
	weapon_weight = WEAPON_HEAVY
	bolt_type = BOLT_TYPE_NO_BOLT

	cartridge_wording = "rocket"
	empty_indicator = FALSE
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE
	has_safety = FALSE
	safety = FALSE

	safety_multiplier = 0

/obj/item/shiptest_gun/ballistic/rocketlauncher/oneshot/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_FRONTIER)

/obj/item/shiptest_gun/ballistic/rocketlauncher/oneshot/eject_magazine(mob/user, display_message = TRUE)
	if (!chambered)
		to_chat(user, span_warning("It's spent!"))
	else
		to_chat(user, span_warning("You can't remove the rocket!"))
	return

/obj/item/shiptest_gun/ballistic/rocketlauncher/oneshot/insert_magazine(mob/user, display_message = TRUE)
	if (!chambered)
		to_chat(user, span_warning("It's spent!"))
	else
		to_chat(user, span_warning("You can't load this!"))
	return

/obj/item/shiptest_gun/ballistic/rocketlauncher/oneshot/hedp
	name = "\improper Hammer-DP"
	desc = "A disposable rocket-propelled grenade launcher loaded with an HEDP shell for Direct Penetration of your target."

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/rocketlauncher/oneshot/hedp
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/rocketlauncher/oneshot/hedp,
	)

/obj/item/shiptest_gun/ballistic/rocketlauncher/oneshot/Initialize()
	. = ..()
	if(prob(1))
		name = "\improper Mallet"

/obj/item/shiptest_gun/ballistic/rocketlauncher/oneshot/examine(mob/user)
	. = ..()
	if(!chambered)
		. += span_warning("It has been spent, and is now useless.")
