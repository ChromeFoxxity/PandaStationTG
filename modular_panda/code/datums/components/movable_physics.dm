#define PHYSICS_GRAV_STANDARD 9.80665

/datum/component/movable_physics
	var/horizontal_velocity
	var/vertical_velocity
	var/horizontal_friction
	var/z_gravity
	var/z_floor
	var/angle_of_movement
	var/bounce_sound
	var/cached_animate_movement
	var/movement_active = FALSE
	var/numbounce = 1

/datum/component/movable_physics/Initialize(
		_horizontal_velocity = 0,
		_vertical_velocity = 0,
		_horizontal_friction = 0,
		_z_gravity = 0,
		_z_floor = 0,
		_angle_of_movement = 0,
		_bounce_sound
	)
	. = ..()
	if(!ismovable(parent))
		return COMPONENT_INCOMPATIBLE

	horizontal_velocity = _horizontal_velocity
	vertical_velocity = _vertical_velocity
	horizontal_friction = _horizontal_friction
	z_gravity = _z_gravity
	z_floor = _z_floor
	angle_of_movement = _angle_of_movement
	bounce_sound = _bounce_sound
	if(vertical_velocity || horizontal_velocity)
		start_movement()

/datum/component/movable_physics/Destroy()
	STOP_PROCESSING(SSmovablephysics, src)
	if(movement_active && !QDELETED(parent))
		var/atom/movable/moving_atom = parent
		moving_atom.animate_movement = cached_animate_movement
	movement_active = FALSE
	return ..()

/datum/component/movable_physics/proc/start_movement()
	var/atom/movable/moving_atom = parent
	cached_animate_movement = moving_atom.animate_movement
	moving_atom.animate_movement = NO_STEPS
	movement_active = TRUE
	START_PROCESSING(SSmovablephysics, src)
	moving_atom.SpinAnimation(speed = 1 SECONDS, loops = 1)

/datum/component/movable_physics/proc/stop_movement()
	var/atom/movable/moving_atom = parent
	moving_atom.animate_movement = cached_animate_movement
	movement_active = FALSE
	STOP_PROCESSING(SSmovablephysics, src)
	qdel(src)

/datum/component/movable_physics/proc/floor_bounce(atom/movable/moving_atom, turf/location)
	angle_of_movement += rand(-3000, 3000) / 100
	var/bounce_sfx = bounce_sound
	if(islist(bounce_sfx))
		bounce_sfx = pick(bounce_sfx)
	if(!bounce_sfx && location?.bullet_bounce_sound)
		bounce_sfx = pick(location.bullet_bounce_sound)
	if(bounce_sfx)
		playsound(moving_atom, bounce_sfx, 50, TRUE)

	moving_atom.SpinAnimation(speed = 1 SECONDS / numbounce, loops = 1)
	moving_atom.pixel_z = z_floor
	horizontal_velocity = max(0, horizontal_velocity + (vertical_velocity * -0.8))
	vertical_velocity = max(0, (vertical_velocity * -0.8) - 0.2)
	numbounce += 0.5

/datum/component/movable_physics/proc/ricochet_x(atom/movable/moving_atom)
	angle_of_movement = 360 - angle_of_movement
	if(angle_of_movement >= 360)
		angle_of_movement -= 360

/datum/component/movable_physics/proc/ricochet_y(atom/movable/moving_atom)
	angle_of_movement = 180 - angle_of_movement
	if(angle_of_movement < 0)
		angle_of_movement += 360

/datum/component/movable_physics/process(seconds_per_tick)
	var/atom/movable/moving_atom = parent
	if(QDELETED(moving_atom))
		STOP_PROCESSING(SSmovablephysics, src)
		return PROCESS_KILL

	var/turf/location = get_turf(moving_atom)
	if(angle_of_movement < 0)
		angle_of_movement += 360
	else if(angle_of_movement >= 360)
		angle_of_movement -= 360

	if(horizontal_velocity <= 0 && moving_atom.pixel_z == 0)
		horizontal_velocity = 0
		stop_movement()
		return PROCESS_KILL

	moving_atom.pixel_x += horizontal_velocity * sin(angle_of_movement)
	moving_atom.pixel_y += horizontal_velocity * cos(angle_of_movement)
	horizontal_velocity = max(0, horizontal_velocity - horizontal_friction)

	moving_atom.pixel_z = max(z_floor, moving_atom.pixel_z + vertical_velocity)
	if(moving_atom.pixel_z > z_floor)
		vertical_velocity -= z_gravity * 0.05
	if(moving_atom.pixel_z <= z_floor && vertical_velocity && location && moving_atom.has_gravity(location))
		floor_bounce(moving_atom, location)

	if(moving_atom.pixel_x > 16)
		if(moving_atom.Move(get_step(moving_atom, EAST)))
			moving_atom.pixel_x = -16
		else
			moving_atom.pixel_x = 16
			ricochet_x(moving_atom)
		return

	if(moving_atom.pixel_x < -16)
		if(moving_atom.Move(get_step(moving_atom, WEST)))
			moving_atom.pixel_x = 16
		else
			moving_atom.pixel_x = -16
			ricochet_x(moving_atom)
		return

	if(moving_atom.pixel_y > 16)
		if(moving_atom.Move(get_step(moving_atom, NORTH)))
			moving_atom.pixel_y = -16
		else
			moving_atom.pixel_y = 16
			ricochet_y(moving_atom)
		return

	if(moving_atom.pixel_y < -16)
		if(moving_atom.Move(get_step(moving_atom, SOUTH)))
			moving_atom.pixel_y = 16
		else
			moving_atom.pixel_y = -16
			ricochet_y(moving_atom)
