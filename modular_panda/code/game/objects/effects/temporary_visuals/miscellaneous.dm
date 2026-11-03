/obj/effect/muzzle_flash
	icon = 'modular_panda/icons/obj/projectiles.dmi'
	icon_state = "muzzle_flash"
	layer = ABOVE_MOB_LAYER
	plane = GAME_PLANE
	appearance_flags = KEEP_APART|TILE_BOUND
	var/applied = FALSE

/obj/effect/muzzle_flash/Initialize(mapload, new_icon_state)
	. = ..()
	if(new_icon_state)
		icon_state = new_icon_state
