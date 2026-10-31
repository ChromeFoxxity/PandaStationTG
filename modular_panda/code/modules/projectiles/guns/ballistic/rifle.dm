//########### RIFLES ###########//

/obj/item/gun/ballistic/automatic/ar/modular
	name = "\improper NT ARG-63"
	desc = "Nanotrasen's prime ballistic option based on the Stoner design, fitted with a light polymer frame and other tactical furniture, and chambered in .223 - nicknamed 'Boarder' by Special Operations teams."
	icon = 'modular_panda/icons/obj/weapons/guns/guns_gubman2.dmi'
	icon_state = "arg"
	inhand_icon_state = "arg"
	can_suppress = FALSE

/obj/item/gun/ballistic/automatic/sniper_rifle
	name = "sniper rifle"
	desc = "A long ranged weapon that does significant damage. No, you can't quickscope."
	icon = 'modular_panda/icons/obj/weapons/guns/guns_gubman2.dmi'
	icon_state = "sniper"
	w_class = WEIGHT_CLASS_BULKY
	inhand_icon_state = "sniper"
	worn_icon_state = null
	fire_sound = 'sound/items/weapons/gun/sniper/shot.ogg'
	fire_sound_volume = 90
	load_sound = 'sound/items/weapons/gun/sniper/mag_insert.ogg'
	rack_sound = 'sound/items/weapons/gun/sniper/rack.ogg'
	suppressed_sound = 'sound/items/weapons/gun/general/heavy_shot_suppressed.ogg'
	recoil = 2
	weapon_weight = WEAPON_HEAVY
	accepted_magazine_type = /obj/item/ammo_box/magazine/sniper_rounds
	fire_delay = 6 SECONDS
	burst_size = 1
	w_class = WEIGHT_CLASS_NORMAL
	slot_flags = ITEM_SLOT_BACK
	actions_types = list()
	mag_display = TRUE
	suppressor_x_offset = 3
	suppressor_y_offset = 3

/obj/item/gun/ballistic/automatic/sniper_rifle/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/scope, range_modifier = 2)

/obj/item/gun/ballistic/automatic/sniper_rifle/reset_fire_cd()
	. = ..()
	if(suppressed)
		playsound(src, 'sound/machines/eject.ogg', 25, TRUE, ignore_walls = FALSE, extrarange = SILENCED_SOUND_EXTRARANGE, falloff_distance = 0)
	else
		playsound(src, 'sound/machines/eject.ogg', 50, TRUE)

/obj/item/gun/ballistic/automatic/sniper_rifle/syndicate
	name = "syndicate sniper rifle"
	desc = "An illegally modified .50 cal sniper rifle with suppression compatibility. Quickscoping still doesn't work."
	icon = 'modular_panda/icons/obj/weapons/guns/guns_gubman2.dmi'
	icon_state = "sniper2"
	worn_icon_state = "sniper"
	fire_delay = 5.5 SECONDS
	can_suppress = TRUE
	can_unsuppress = TRUE
	pin = /obj/item/firing_pin/implant/pindicate

/obj/item/gun/ballistic/automatic/sniper_rifle/modular
	name = "AUS-107 anti-materiel rifle"
	desc = "A devastating Aussec Armory heavy sniper rifle, fitted with a modern scope."
	icon = 'modular_panda/icons/obj/weapons/guns/guns_gubman2.dmi'
	icon_state = "sniper"
	worn_icon_state = "sniper"
	fire_sound = 'modular_panda/sound/guns/sniperrifle.ogg'
	suppressed_sound = 'modular_panda/sound/guns/sniperrifle_s.ogg'
	w_class = WEIGHT_CLASS_BULKY
	can_suppress = FALSE

/obj/item/gun/ballistic/automatic/sniper_rifle/modular/syndicate
	name = "'Caracal' anti-materiel rifle"  //we flop out
	desc = "A sleek, light bullpup .50 BMG sniper rifle with a reciprocating barrel, nicknamed 'Caracal' by Scarborough Arms. Its compact folding parts make it able to fit into a backpack, and its modular barrel can have a suppressor installed within it rather than as a muzzle extension. Its advanced scope accounts for all ballistic inaccuracies of a reciprocating barrel."
	icon_state = "sysniper"
	fire_sound = 'modular_panda/sound/guns/sniperrifle.ogg'
	suppressed_sound = 'modular_panda/sound/guns/sniperrifle_s.ogg'
	fire_delay = 4 SECONDS //Delay reduced thanks to recoil absorption
	burst_size = 0.5
	recoil = 1
	can_suppress = TRUE
	can_unsuppress = TRUE
	weapon_weight = WEAPON_LIGHT

/obj/item/gun/ballistic/automatic/sniper_rifle/modular/syndicate/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/gun/ballistic/automatic/sniper_rifle/modular/blackmarket  //Normal sniper but epic
	name = "SA-107 anti-materiel rifle"
	desc = "An illegal Scarborough Arms rendition of an Aussec Armory sniper rifle. This one has been fitted with a heavy duty scope, a sturdier stock, and has a removable muzzle brake that allows easy attachment of suppressors."
	icon_state = "sniper2"
	fire_sound = 'modular_panda/sound/guns/sniperrifle.ogg'
	suppressed_sound = 'modular_panda/sound/guns/sniperrifle_s.ogg'
	fire_sound_volume = 90
	vary_fire_sound = FALSE
	load_sound = 'sound/items/weapons/gun/sniper/mag_insert.ogg'
	rack_sound = 'sound/items/weapons/gun/sniper/rack.ogg'
	w_class = WEIGHT_CLASS_NORMAL
	can_suppress = TRUE
	can_unsuppress = TRUE
	recoil = 1.8
	weapon_weight = WEAPON_HEAVY
	accepted_magazine_type = /obj/item/ammo_box/magazine/sniper_rounds
	fire_delay = 55 //Slightly smaller than standard sniper
	burst_size = 1
	slot_flags = ITEM_SLOT_BACK
	mag_display = TRUE

/obj/item/gun/ballistic/automatic/hydra
	name = "SMR-80 \"Hydra\""
	desc = "Scarborough Arms' premier modular assault rifle platform. This is the basic configuration, optimized for light weight and handiness. A very well-regarded, if expensive and rare, assault rifle. Chambered in 5.56x42mm CLIP."

	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/scarborough_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/scarborough_righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/clothing/back.dmi'
	icon_state = "hydra"
	inhand_icon_state = "hydra"

	accepted_magazine_type = /obj/item/ammo_box/magazine/m556_42_hydra
	actions_types = list(/datum/action/item_action/toggle_firemode)

	load_sound = 'modular_panda/sound/weapons/gun/rifle/m16_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/rifle/m16_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/rifle/m16_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/rifle/m16_unload.ogg'

	rack_sound = 'modular_panda/sound/weapons/gun/rifle/ar_cock.ogg'

	fire_sound = 'modular_panda/sound/weapons/gun/rifle/hydra.ogg'

	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE

	burst_size = 2
	burst_delay = 0.1 SECONDS
	fire_delay = 0.18 SECONDS
	spread = 1

/obj/item/gun/ballistic/automatic/hydra/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/gun/ballistic/automatic/hydra/indie
	name = "Hydra-80"
	desc = "A dated variant of Scarborough Arms' premier assault rifle platform. Only accepts small magazines and is locked to semi-auto. Chambered in 5.56x42mm CLIP."

	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/scarborough_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/scarborough_righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/clothing/back.dmi'
	icon_state = "hydra_80"
	inhand_icon_state = "hydra_80"

	accepted_magazine_type = /obj/item/ammo_box/magazine/m556_42_hydra/small

	burst_size = 1
	spread = 3
	fire_delay = 0.2 SECONDS

/obj/item/gun/ballistic/automatic/hydra/dmr
	name = "SBR-80 \"Hydra\""
	desc = "Scarborough Arms' premier modular assault rifle platform. This example is configured as a marksman rifle, with an extended barrel and medium-zoom scope. Its lightweight cartridge is compensated for with a 2-round burst action, though it is unable to fit large extended magazines. Chambered in 5.56x42mm CLIP."

	icon_state = "hydra_dmr"
	inhand_icon_state = "hydra_dmr"

	actions_types = list(/datum/action/item_action/toggle_firemode)

	spread = 0

	accepted_magazine_type = /obj/item/ammo_box/magazine/m556_42_hydra/small

/obj/item/gun/ballistic/automatic/hydra/dmr/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/scope, range_modifier = 2)

/obj/item/gun/ballistic/automatic/python
	name = "\improper SAW-90 Python"
	desc = "Scarborough Arms' premier Squad-Automatic Weapon. A unique bullpup LMG with best-in-class weight and capacity. The reloading process has been described with every colorful name in the Uncommon language. Chambered in 5.56x42mm CLIP."
	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/scarborough_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/scarborough_righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/clothing/back.dmi'

	icon_state = "python"
	inhand_icon_state = "python"

	fire_sound = 'modular_panda/sound/weapons/gun/rifle/hydra.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/hmg/cm40_cocked.ogg'

	rack_sound_vary = FALSE

	load_sound_vary = FALSE
	eject_sound_vary = FALSE

	load_sound = 'modular_panda/sound/weapons/gun/hmg/cm40_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/hmg/cm40_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/hmg/cm40_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/hmg/cm40_unload.ogg'

	fire_delay = 0.1 SECONDS

	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE
	accepted_magazine_type = /obj/item/ammo_box/magazine/python_box

	spread = 8
	recoil = 1.5 //identical to other LMGS

/obj/item/gun/ballistic/automatic/python/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)
