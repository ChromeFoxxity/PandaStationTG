//########### AUTOMATIC ###########//
/obj/item/gun/modular/ballistic/automatic
	abstract_type = /obj/item/gun/modular/ballistic/automatic
	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/back.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_righthand.dmi'
	w_class = WEIGHT_CLASS_BULKY
	gun_firemodes = list(FIREMODE_SEMIAUTO)
	default_firemode = FIREMODE_SEMIAUTO
	semi_auto = TRUE
	burst_fire_selection = TRUE
	fire_sound = 'modular_panda/sound/weapons/gun/smg/shot.ogg'
	fire_sound_volume = 90
	vary_fire_sound = FALSE
	rack_sound = 'modular_panda/sound/weapons/gun/smg/smgrack.ogg'
	suppressed_sound = 'modular_panda/sound/weapons/gun/smg/shot_suppressed.ogg'
	weapon_weight = WEAPON_MEDIUM
	pickup_sound =  'modular_panda/sound/handling/rifle_pickup.ogg'
	fire_delay = 1
	spread = 0
	recoil = 0

/obj/item/gun/modular/ballistic/automatic/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/ammo_hud)
