/obj/item/shiptest_gun/ballistic/automatic/pistol/challenger
	name = "Advantage PS9 Challenger"
	desc = "A lightweight semi-automatic 9mm pistol constructed largely of polymers. Low price point, forgiving recoil, and generous magazine capacity for its class. Chambered in 9mm."
	icon_state = "challenger"
	inhand_icon_state = "warra_generic"
	icon = 'modular_panda/icons/obj/guns/manufacturer/warra_sharplite/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/warra_sharplite/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/warra_sharplite/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/warra_sharplite/onmob.dmi'

	w_class = WEIGHT_CLASS_NORMAL
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/co9mm
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/co9mm,
	)
	manufacturer = MANUFACTURER_VIGILITAS
	fire_sound = 'modular_panda/sound/weapons/gun/pistol/rattlesnake.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release.ogg'

	rack_sound = 'modular_panda/sound/weapons/gun/pistol/rack_small.ogg'
	lock_back_sound = 'modular_panda/sound/weapons/gun/pistol/lock_small.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/pistol/drop_small.ogg'


NO_MAG_GUN_HELPER(automatic/pistol/challenger)

/obj/item/shiptest_gun/ballistic/automatic/pistol/challenger/indie
	name = "Advantage CA9 Challenger Personal"
	desc = "The civilian import version of the challenger. A popular first pick for gun owners due to its low price point, forgiving recoil, and generous mag capacity for its class."
	icon_state = "challengerp"
	inhand_icon_state = "warra_civ"

/obj/item/shiptest_gun/ballistic/automatic/pistol/champion
	name = "Advantage PHB Champion"
	desc = "A large machine pistol featuring an impressive recoil compensation assembly, making it substantially more stable and accurate than most machine pistols. Chambered in 9mm."
	icon_state = "champion"
	inhand_icon_state = "champion"
	icon = 'modular_panda/icons/obj/guns/manufacturer/warra_sharplite/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/warra_sharplite/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/warra_sharplite/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/warra_sharplite/onmob.dmi'

	w_class = WEIGHT_CLASS_NORMAL
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/co9mm
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/co9mm,
	)
	manufacturer = MANUFACTURER_VIGILITAS
	fire_sound = 'modular_panda/sound/weapons/gun/pistol/cm23.ogg'

	load_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release.ogg'

	rack_sound = 'modular_panda/sound/weapons/gun/pistol/rack_small.ogg'
	lock_back_sound = 'modular_panda/sound/weapons/gun/pistol/lock_small.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/pistol/drop_small.ogg'


	burst_size = 3
	burst_delay = 0.1 SECONDS
	fire_delay = 0.08 SECONDS

	wear_minor_threshold = 240
	wear_major_threshold = 720

	wear_maximum = 1200

	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_BURST)
	default_firemode = FIREMODE_SEMIAUTO

NO_MAG_GUN_HELPER(automatic/pistol/champion)

/obj/item/shiptest_gun/ballistic/automatic/pistol/podium
	name = "Advantage PH46 Podium"
	desc ="A heavy pistol chambered in the high-velocity 4.6mm cartridge, designed to defeat common body armor. Despite the powerful cartridge, it is known to be surprisingly controllable, though not necessarily lightweight. Chambered in 4.6mm."

	icon = 'modular_panda/icons/obj/guns/manufacturer/warra_sharplite/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/warra_sharplite/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/warra_sharplite/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/warra_sharplite/onmob.dmi'
	icon_state = "podium"
	inhand_icon_state = "podium"

	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m46_30_podium
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m46_30_podium,
	)

	fire_sound = 'modular_panda/sound/weapons/gun/pistol/podium.ogg'

	load_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release.ogg'

	rack_sound = 'modular_panda/sound/weapons/gun/pistol/rack.ogg'
	lock_back_sound = 'modular_panda/sound/weapons/gun/pistol/lock_small.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/pistol/drop_small.ogg'

	manufacturer = MANUFACTURER_VIGILITAS
	show_magazine_on_sprite = TRUE


NO_MAG_GUN_HELPER(automatic/pistol/podium)

/obj/item/shiptest_gun/ballistic/automatic/pistol/podium/inteq
	name = "P46 Schnauzer"
	desc = "A modification of Makosso-Warra's \"Podium\" line of pistols made by the IRMG. Typically issued to second line combatants due to the armor piercing potential of the 4.6mm cartridge. Just be careful around the snout. Chambered in 4.6mm."

	icon = 'modular_panda/icons/obj/guns/manufacturer/inteq/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/inteq/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/inteq/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/inteq/onmob.dmi'
	icon_state = "podium_inteq"
	inhand_icon_state = "inteq_generic"
	manufacturer = MANUFACTURER_INTEQ

NO_MAG_GUN_HELPER(automatic/pistol/podium/inteq)

/obj/item/shiptest_ammo_box/magazine/m46_30_podium
	name = "Podium magazine (4.6x30mm)"
	desc = "A 12-round, double-stack magazine for the Podium pistol. These rounds do okay damage with average performance against armor."
	icon_state = "podium_mag-12"
	base_icon_state = "podium_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/c46x30mm
	caliber = "4.6x30mm"
	max_ammo = 12

/obj/item/shiptest_ammo_box/magazine/m46_30_podium/update_icon_state()
	. = ..()
	if(ammo_count() == 12)
		icon_state = "[base_icon_state]-12"
	else if(ammo_count() >= 10)
		icon_state = "[base_icon_state]-10"
	else if(ammo_count() >= 5)
		icon_state = "[base_icon_state]-5"
	else if(ammo_count() >= 1)
		icon_state = "[base_icon_state]-1"
	else
		icon_state = "[base_icon_state]-0"


/obj/item/shiptest_ammo_box/magazine/co9mm
	name = "challenger pistol magazine (9mm)"
	desc = "A 12-round double-stack magazine for challenger pistols. This is also compatable with the Champion machine pistol. These rounds do okay damage, but struggle against armor."
	icon_state = "commander_mag-12"
	base_icon_state = "commander_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/c9mm
	caliber = "9mm"
	max_ammo = 12
	multiple_sprites = AMMO_BOX_PER_BULLET

/obj/item/shiptest_ammo_box/magazine/co9mm/hp
	name = "pistol magazine (9mm HP)"
	desc= "A 12-round double-stack magazine for standard-issue 9mm pistols. These hollow point rounds do significant damage against soft targets, but are nearly ineffective against armored ones."
	ammo_type = /obj/item/shiptest_ammo_casing/c9mm/hp

/obj/item/shiptest_ammo_box/magazine/co9mm/ap
	name = "pistol magazine (9mm AP)"
	desc= "A 12-round double-stack magazine for standard-issue 9mm pistols. These armor-piercing rounds are okay at piercing protective equipment, but lose some stopping power."
	ammo_type = /obj/item/shiptest_ammo_casing/c9mm/ap

/obj/item/shiptest_ammo_box/magazine/co9mm/rubber
	name = "pistol magazine (9mm rubber)"
	desc = "A 12-round double-stack magazine for standard-issue 9mm pistols. These rubber rounds trade lethality for a heavy impact which can incapacitate targets. Performs even worse against armor."
	ammo_type = /obj/item/shiptest_ammo_casing/c9mm/rubber

/obj/item/shiptest_ammo_box/magazine/co9mm/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[ammo_count() == 1 ? 1 : round(ammo_count(),2)]"


/obj/item/shiptest_ammo_box/magazine/co9mm/empty
	start_empty = TRUE


/obj/item/shiptest_gun/ballistic/automatic/pistol/challenger/inteq
	name = "PS-03 Commissioner"
	desc = "A modified version of the PS9 Challenger, issued as standard to Inteq Risk Management Group personnel. Features the same excellent handling and high magazine capacity as the original. Chambered in 9mm."

	icon = 'modular_panda/icons/obj/guns/manufacturer/inteq/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/inteq/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/inteq/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/inteq/onmob.dmi'
	icon_state = "commander_inteq"
	inhand_icon_state = "inteq_generic"
	manufacturer = MANUFACTURER_INTEQ

NO_MAG_GUN_HELPER(automatic/pistol/challenger/inteq)

/obj/item/shiptest_gun/ballistic/revolver/rhino
	name = "Advantage Rhino"
	desc = "A very famous high-powered semi-auto revolver, often used as the de-facto officer weapon of the Makosso-Warra aliance. Chambered in .357."
	icon = 'modular_panda/icons/obj/guns/manufacturer/warra_sharplite/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/warra_sharplite/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/warra_sharplite/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/warra_sharplite/onmob.dmi'
	icon_state = "rhino"
	inhand_icon_state = "warra_generic"
	manufacturer = MANUFACTURER_VIGILITAS
	semi_auto = TRUE
	safety_wording = "safety"

	fire_sound = 'modular_panda/sound/weapons/gun/revolver/viper.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/revolver/viper_prime.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/revolver/load_bullet.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/revolver/empty.ogg'

	dry_fire_sound = 'modular_panda/sound/weapons/gun/revolver/dry_fire.ogg'

	spread = 0
	recoil = 3

EMPTY_GUN_HELPER(revolver/rhino)

/obj/item/shiptest_gun/ballistic/automatic/smg/expedition
	name = "\improper Advantage SGL9 Expedition"
	desc = "A deceptively lightweight submachinegun. Its novel recoil compensation system almost eliminates recoil, and its compact size is well-suited for use aboard ships and stations."
	icon = 'modular_panda/icons/obj/guns/manufacturer/warra_sharplite/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/warra_sharplite/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/warra_sharplite/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/warra_sharplite/onmob.dmi'
	icon_state = "expedition"
	inhand_icon_state = "expedition"
	manufacturer = MANUFACTURER_VIGILITAS
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/m9mm_expedition
	spread = 4
	fire_delay = 0.09 SECONDS // despite being 1 fire delay previously, it fucking rounds up to 1.5. This makes it ACTUALLY ONE
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/m9mm_expedition,
	) //you guys remember when the autorifle was chambered in 9mm
	bolt_type = BOLT_TYPE_LOCKING
	show_magazine_on_sprite = TRUE
	weapon_weight = WEAPON_LIGHT
	fire_sound = 'modular_panda/sound/weapons/gun/smg/vector_fire.ogg'


NO_MAG_GUN_HELPER(automatic/smg/expedition)

/obj/item/shiptest_ammo_box/magazine/m9mm_expedition
	name = "expedition submachinegun magazine (9mm)"
	desc = "A 30-round magazine for the Expedition submachine gun. These rounds do okay damage, but struggle against armor."
	icon_state = "expedition_mag-30"
	base_icon_state = "expedition_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/c9mm
	caliber = "9mm"
	max_ammo = 30
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/shiptest_ammo_box/magazine/m9mm_expedition/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[(ammo_count() == 1 || ammo_count() == 2) ? 1 : round(ammo_count(),6)]"

/obj/item/shiptest_ammo_box/magazine/m9mm_expedition/empty
	start_empty = TRUE

/obj/item/shiptest_ammo_box/magazine/m9mm_expedition/ap
	name = "expedition submachinegun magazine (9mm AP)"
	desc = "A 30-round magazine for the Expedition submachine gun. These armor-piercing rounds are okay at piercing protective equipment, but lose some stopping power."
	ammo_type = /obj/item/shiptest_ammo_casing/c9mm/ap

/obj/item/shiptest_ammo_box/magazine/m9mm_expedition/rubber
	name = "expedition submachinegun magazine (9mm rubber)"
	desc = "A 30-round magazine for the Expedition submachine gun. These rubber rounds trade lethality for a heavy impact which can incapacitate targets. Performs even worse against armor."
	ammo_type = /obj/item/shiptest_ammo_casing/c9mm/rubber

/obj/item/shiptest_gun/ballistic/automatic/smg/expedition/indie
	name = "\improper Advantage SGP9 Expedition Defender"
	desc = "The civilian import of the Expedition, marketed to private police forces and well-off bounty hunters. Retains most of its novel features aside from the rail mount."
	icon_state = "civpedition"
	inhand_icon_state = "civpedition"
	manufacturer = MANUFACTURER_VIGILITAS

// /obj/item/shiptest_gun/ballistic/automatic/smg/resolution
/obj/item/shiptest_gun/ballistic/automatic/smg/resolution
	name = "\improper Advantage PD46 Resolution"
	desc = "A surprisingly compact 4.6mm personal defense weapon with a very unusual design. Though somewhat awkward to reload, the PD46 has excellent shooting ergonomics and excellent accuracy for its class, combined with its armor-penetrating cartridge and low price of entry."
	icon = 'modular_panda/icons/obj/guns/manufacturer/warra_sharplite/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/warra_sharplite/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/warra_sharplite/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/warra_sharplite/onmob.dmi'
	icon_state = "resolution"
	inhand_icon_state = "resolution"
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/wt550m9
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/wt550m9,
	)
	actions_types = list()
	show_magazine_on_sprite = TRUE
	show_magazine_on_sprite_ammo = TRUE
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_NORMAL
	empty_indicator = TRUE
	manufacturer = MANUFACTURER_VIGILITAS
	fire_sound = 'modular_panda/sound/weapons/gun/smg/resolution.ogg'

	fire_delay = 0.13 SECONDS

	spread = 10

	recoil = 4


/obj/item/shiptest_gun/ballistic/automatic/smg/resolution/no_mag
	default_ammo_type = FALSE

/obj/item/shiptest_gun/ballistic/automatic/smg/resolution/inteq
	name = "\improper BDM-50 Akita"
	desc = "A seized Advantage PD46, modified to Inteq's requirements and standards. Awkward to reload, though has a powerful cartridge with good ergonomics and accuracy."
	icon = 'modular_panda/icons/obj/guns/manufacturer/inteq/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/inteq/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/inteq/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/inteq/onmob.dmi'
	icon_state = "resolution_inteq"
	inhand_icon_state = "resolution_inteq"
	manufacturer = MANUFACTURER_INTEQ

NO_MAG_GUN_HELPER(automatic/smg/resolution/inteq)

/obj/item/shiptest_ammo_box/magazine/wt550m9
	name = "Resolution magazine (4.6x30mm)"
	desc = "A 30-round magazine for the Resolution personal defense weapon. These rounds do okay damage with average performance against armor."
	icon_state = "resolution_mag-1"
	base_icon_state = "resolution_mag"
	ammo_type = /obj/item/shiptest_ammo_casing/c46x30mm
	caliber = "4.6x30mm"
	max_ammo = 30
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/shiptest_ammo_box/magazine/wt550m9/empty
	start_empty = TRUE

/obj/item/shiptest_ammo_box/magazine/wt550m9/ap
	name = "Resolution magazine (4.6x30mm AP)"
	desc = "A compact, 30-round top-loading magazine for the WT-550 Automatic Rifle. These armor-piercing rounds are great at piercing protective equipment, but lose some stopping power."

	ammo_type = /obj/item/shiptest_ammo_casing/c46x30mm/ap

/obj/item/shiptest_gun/ballistic/shotgun/automatic/negotiator
	name = "Advantage AST12 Negotiator"
	desc = "An automatic shotgun with a twin-tube design that allows the user to switch between two ammo types on demand, or simply double their available ammunition."

	icon = 'modular_panda/icons/obj/guns/manufacturer/warra_sharplite/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/warra_sharplite/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/warra_sharplite/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/warra_sharplite/onmob.dmi'

	icon_state = "negotiator"
	inhand_icon_state = "negotiator"
	manufacturer = MANUFACTURER_VIGILITAS
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/shot/tube/rubbershot
	allowed_ammo_types = list(
		/obj/item/shiptest_ammo_box/magazine/internal/shot/tube,
	)
	w_class = WEIGHT_CLASS_BULKY
	var/toggled = FALSE
	var/obj/item/shiptest_ammo_box/magazine/internal/shot/alternate_magazine
	actions_types = list(/datum/action/item_action/toggle_tube)

	semi_auto = TRUE
	casing_ejector = TRUE


/obj/item/shiptest_gun/ballistic/shotgun/automatic/negotiator/secondary_action(user)
	toggle_tube(user)

/obj/item/shiptest_gun/ballistic/shotgun/automatic/negotiator/examine(mob/user)
	. = ..()
	. += span_notice("Tube [toggled ? "B" : "A"] is currently loaded.")
	. += "You can change the [src]'s tube by pressing the <b>secondary action</b> key. By default, this is <b>Shift + Space</b>"

/obj/item/shiptest_gun/ballistic/shotgun/automatic/negotiator/Initialize(mapload, spawn_empty)
	. = ..()
	if (!alternate_magazine)
		alternate_magazine = new default_ammo_type(src, spawn_empty)

/obj/item/shiptest_gun/ballistic/shotgun/automatic/negotiator/proc/toggle_tube(mob/living/user)
	var/current_mag = magazine
	var/alt_mag = alternate_magazine
	magazine = alt_mag
	alternate_magazine = current_mag
	toggled = !toggled
	if(toggled)
		to_chat(user, span_notice("You switch to tube B."))
	else
		to_chat(user, span_notice("You switch to tube A."))
	SEND_SIGNAL(src, COMSIG_UPDATE_AMMO_HUD)
	playsound(src, load_sound, load_sound_volume, load_sound_vary)

/datum/action/item_action/toggle_tube
	name = "Toggle Tube"

/datum/action/item_action/toggle_tube/Trigger(mob/clicker, trigger_flags)
	if(!..(clicker, trigger_flags))
		return FALSE
	if(istype(target, /obj/item/shiptest_gun/ballistic/shotgun/automatic/negotiator))
		var/obj/item/shiptest_gun/ballistic/shotgun/automatic/negotiator/shotty = target
		shotty.toggle_tube(owner)
		return TRUE

/obj/item/shiptest_gun/ballistic/shotgun/automatic/negotiator/buckshot
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/shot/tube/buckshot

/obj/item/shiptest_gun/ballistic/shotgun/automatic/negotiator/empty
	default_ammo_type = /obj/item/shiptest_ammo_box/magazine/internal/shot/tube/empty
