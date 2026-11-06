/obj/shiptest_projectile/energy
	name = "energy"
	icon_state = "spark"
	damage = 0
	damage_type = BURN
	armor_flag = ENERGY
	reflectable = REFLECT_NORMAL

/obj/shiptest_projectile/beam
	name = "laser"
	icon_state = "laser"
	pass_flags = PASSTABLE | PASSGLASS | PASSGRILLE
	damage = 25
	armour_penetration = -5
	damage_type = BURN
	wound_bonus = -20
	exposed_wound_bonus = 10

	hitsound = 'modular_panda/sound/weapons/gun/hit/energy_impact1.ogg'
	hitsound_non_living = 'modular_panda/sound/weapons/effects/searwall.ogg'
	hitsound_glass = 'modular_panda/sound/weapons/effects/searwall.ogg'
	hitsound_stone = 'modular_panda/sound/weapons/sear.ogg'
	hitsound_metal = 'modular_panda/sound/weapons/effects/searwall.ogg'
	hitsound_wood = 'modular_panda/sound/weapons/sear.ogg'
	hitsound_snow = 'modular_panda/sound/weapons/sear.ogg'

	near_miss_sound = 'modular_panda/sound/weapons/gun/hit/energy_miss1.ogg'
	ricochet_sound = 'modular_panda/sound/weapons/gun/hit/energy_ricochet1.ogg'

	bullet_identifier = "laser"

	armor_flag = LASER
	eyeblur = 2
	impact_effect_type = /obj/effect/temp_visual/impact_effect/red_laser
	light_system = OVERLAY_LIGHT
	light_range = 1.5
	light_power = 1
	light_color = COLOR_SOFT_RED
	ricochets_max = 50	//Honk!
	ricochet_chance = 90
	ricochet_incidence_leeway = 75
	reflectable = REFLECT_NORMAL

/obj/shiptest_projectile/beam/hitscan
	name = "hitscan beam"
	tracer_type = /obj/effect/shiptest_projectile/tracer/laser
	muzzle_type = /obj/effect/shiptest_projectile/muzzle/laser
	impact_type = /obj/effect/shiptest_projectile/impact/laser

	hitscan_light_intensity = 2
	hitscan_light_range = 0.50
	hitscan_light_color_override = COLOR_SOFT_RED

	muzzle_flash_intensity = 4
	muzzle_flash_range = 1
	muzzle_flash_color_override = COLOR_SOFT_RED

	impact_light_intensity = 5
	impact_light_range = 1.25
	impact_light_color_override = COLOR_SOFT_RED

	range = 15
	var/damage_constant = 0.8
	var/ap_constant = 1
	hitscan = TRUE

/obj/shiptest_projectile/beam/hitscan/reduce_range()
	. = ..()

	var/turf/location = get_turf(src)
	if(!location)
		return

	var/datum/gas_mixture/environment = location.return_air()
	if(!environment)
		return

	if(environment.return_pressure() < 50)
		return

	if((maximum_range - range) < 4)
		return

	damage *= damage_constant
	armour_penetration *= ap_constant

/obj/shiptest_projectile/beam/laser
	tracer_type = /obj/effect/shiptest_projectile/tracer/laser
	muzzle_type = /obj/effect/shiptest_projectile/muzzle/laser
	impact_type = /obj/effect/shiptest_projectile/impact/laser

/obj/shiptest_projectile/beam/disabler
	name = "disabler beam"
	icon_state = "omnilaser"
	damage = 30
	armour_penetration = -20
	damage_type = STAMINA
	armor_flag = ENERGY
	bullet_identifier = "disabler"
	hitsound = 'modular_panda/sound/weapons/tap.ogg'
	hitsound_glass = null
	hitsound_stone = null
	hitsound_metal = null
	hitsound_wood = null
	hitsound_snow = null
	eyeblur = 0
	impact_effect_type = /obj/effect/temp_visual/impact_effect/blue_laser
	light_color = LIGHT_COLOR_BLUE
	tracer_type = /obj/effect/shiptest_projectile/tracer/disabler
	muzzle_type = /obj/effect/shiptest_projectile/muzzle/disabler
	impact_type = /obj/effect/shiptest_projectile/impact/disabler

/obj/shiptest_projectile/energy/electrode
	name = "electrode"
	icon_state = "spark"
	color = "#FFFF00"
	hitsound = 'modular_panda/sound/weapons/taserhit.ogg'
	damage = 40
	damage_type = STAMINA
	stutter = 5
	jitter = 20 SECONDS
	range = 6
	tracer_type = /obj/effect/shiptest_projectile/tracer/stun
	muzzle_type = /obj/effect/shiptest_projectile/muzzle/stun
	impact_type = /obj/effect/shiptest_projectile/impact/stun

/obj/shiptest_projectile/energy/electrode/on_hit(atom/target, blocked = FALSE)
	. = ..()
	if(!ismob(target) || blocked >= 100) //Fully blocked by mob or collided with dense object - burst into sparks!
		do_sparks(1, TRUE, src)

/obj/shiptest_projectile/energy/electrode/on_range() //to ensure the bolt sparks when it reaches the end of its range if it didn't hit a target yet
	do_sparks(1, TRUE, src)
	..()
