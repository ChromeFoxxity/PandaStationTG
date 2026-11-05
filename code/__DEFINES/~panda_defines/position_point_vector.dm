//Designed for things that need precision trajectories like projectiles.
//Don't use this for anything that you don't absolutely have to use this with (like projectiles!) because it isn't worth using a datum unless you need accuracy down to decimal places in pixels.

//You might see places where it does - 16 - 1. This is intentionally 17 instead of 16, because of how byond's tiles work and how not doing it will result in rounding errors like things getting put on the wrong turf.

#define RETURN_POINT_VECTOR(ATOM, ANGLE, SPEED) (new /datum/point/vector(ATOM, null, null, null, null, ANGLE, SPEED))
#define RETURN_POINT_VECTOR_INCREMENT(ATOM, ANGLE, SPEED, AMT) (new /datum/point/vector(ATOM, null, null, null, null, ANGLE, SPEED, AMT))

/// First argument can also be a /datum/position or /atom.
/datum/point/New(_x, _y, _z, _pixel_x = 0, _pixel_y = 0)
	if(istype(_x, /datum/position))
		var/datum/position/P = _x
		_x = P.x
		_y = P.y
		_z = P.z
		_pixel_x = P.pixel_x
		_pixel_y = P.pixel_y
	else if(istype(_x, /atom))
		var/atom/A = _x
		_x = A.x
		_y = A.y
		_z = A.z
		_pixel_x = A.pixel_x
		_pixel_y = A.pixel_y
	initialize_location(_x, _y, _z, _pixel_x, _pixel_y)

/datum/point/vector
	/// Pixels per iteration
	var/speed = 32
	var/iteration = 0
	var/angle = 0
	/// Calculated x movement amounts to prevent having to do trig every step.
	var/mpx = 0
	/// Calculated y movement amounts to prevent having to do trig every step.
	var/mpy = 0
	var/starting_x = 0			//just like before, pixels from EDGE of map! This is set in initialize_location().
	var/starting_y = 0
	var/starting_z = 0

/datum/point/vector/New(_x, _y, _z, _pixel_x = 0, _pixel_y = 0, _angle, _speed, initial_increment = 0)
	..()
	initialize_trajectory(_speed, _angle)
	if(initial_increment)
		increment(initial_increment)

/datum/point/vector/initialize_location(tile_x, tile_y, tile_z, p_x = 0, p_y = 0)
	. = ..()
	starting_x = x
	starting_y = y
	starting_z = z

/// Same effect as initiliaze_location, but without setting the starting_x/y/z
/datum/point/vector/proc/set_location(tile_x, tile_y, tile_z, p_x = 0, p_y = 0)
	if(!isnull(tile_x))
		x = ((tile_x - 1) * world.icon_size) + world.icon_size * 0.5 + p_x + 1
	if(!isnull(tile_y))
		y = ((tile_y - 1) * world.icon_size) + world.icon_size * 0.5 + p_y + 1
	if(!isnull(tile_z))
		z = tile_z

/datum/point/vector/copy_to(datum/point/vector/v = new)
	..(v)
	v.speed = speed
	v.iteration = iteration
	v.angle = angle
	v.mpx = mpx
	v.mpy = mpy
	v.starting_x = starting_x
	v.starting_y = starting_y
	v.starting_z = starting_z
	return v

/datum/point/vector/proc/initialize_trajectory(pixel_speed, new_angle)
	if(!isnull(pixel_speed))
		speed = pixel_speed
	set_angle(new_angle)

/datum/point/vector/proc/set_angle(new_angle)		//calculations use "byond angle" where north is 0 instead of 90, and south is 180 instead of 270.
	if(isnull(angle))
		return
	angle = new_angle
	update_offsets()

/datum/point/vector/proc/update_offsets()
	mpx = sin(angle) * speed
	mpy = cos(angle) * speed

/datum/point/vector/proc/set_speed(new_speed)
	if(isnull(new_speed) || speed == new_speed)
		return
	speed = new_speed
	update_offsets()

/datum/point/vector/proc/return_vector_after_increments(amount = 7, multiplier = 1, force_simulate = FALSE)
	var/datum/point/vector/v = copy_to()
	if(force_simulate)
		for(var/i in 1 to amount)
			v.increment(multiplier)
	else
		v.increment(multiplier * amount)
	return v

/datum/point/vector/proc/on_z_change()
	return

/datum/point/vector/processed		//pixel_speed is per decisecond.
	var/last_process = 0
	var/last_move = 0
	var/paused = FALSE

/datum/point/vector/processed/Destroy()
	STOP_PROCESSING(SSprojectiles, src)
	return ..()

/datum/point/vector/processed/proc/start()
	last_process = world.time
	last_move = world.time
	START_PROCESSING(SSprojectiles, src)

/datum/point/vector/processed/process(seconds_per_tick)
	if(paused)
		last_move += world.time - last_process
		last_process = world.time
		return
	var/needed_time = world.time - last_move
	last_process = world.time
	last_move = world.time
	increment(needed_time / SSprojectiles.wait)
