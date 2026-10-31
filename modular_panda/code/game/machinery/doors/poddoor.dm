/obj/machinery/door/poddoor
	icon = 'modular_panda/icons/obj/doors/blast_door.dmi'
	animation_sound = 'modular_panda/sound/blast_door.ogg'

/obj/machinery/door/poddoor/shutters
	var/door_open_sound = 'modular_panda/sound/shutters_open.ogg'
	var/door_close_sound = 'modular_panda/sound/shutters_close.ogg'

/obj/machinery/door/poddoor/shutters/animation_effects(animation)
	switch(animation)
		if(DOOR_OPENING_ANIMATION)
			playsound(src, door_open_sound, 30, TRUE)
		if(DOOR_OPENING_ANIMATION)
			playsound(src, door_close_sound, 30, TRUE)
