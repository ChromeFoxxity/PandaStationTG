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

/obj/shiptest_projectile/beam/scatter
	name = "laser pellet"
	icon_state = "scatterlaser"
	damage = 5
	range = 7

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

/obj/shiptest_projectile/beam/weak/shotgun
	damage = 20
	armour_penetration = -10
	var/tile_dropoff = 1
	var/ap_dropoff = 5
	var/ap_dropoff_cutoff = -35

/obj/shiptest_projectile/beam/weak/shotgun/on_range() //10% loss per tile = max range of 10, generally
	..()
	if(damage > 0)
		damage -= tile_dropoff
	if(armour_penetration > ap_dropoff_cutoff)
		armour_penetration -= ap_dropoff
	if(accuracy_mod < 3)
		accuracy_mod += 0.3
	if(damage < 0 && stamina < 0)
		qdel(src)

/obj/shiptest_projectile/beam/hitscan/kalix
	name = "concentrated energy beam"
	tracer_type = /obj/effect/shiptest_projectile/tracer/kalix_rifle
	muzzle_type = /obj/effect/shiptest_projectile/muzzle/kalix_rifle
	impact_type = /obj/effect/shiptest_projectile/impact/kalix_rifle
	hitscan_light_color_override = LIGHT_COLOR_ELECTRIC_CYAN
	muzzle_flash_color_override = LIGHT_COLOR_ELECTRIC_CYAN
	impact_light_color_override = LIGHT_COLOR_ELECTRIC_CYAN
	range = 12
	damage_constant = 0.8
	damage = 25
	armour_penetration = -10

/obj/shiptest_projectile/beam/hitscan/kalix/faveleira
	damage = 35
	armour_penetration = 30

/obj/shiptest_projectile/beam/hitscan/kalix/nock
	name = "concentrated energy beam"
	tracer_type = /obj/effect/shiptest_projectile/tracer/nock
	muzzle_type = /obj/effect/shiptest_projectile/muzzle/nock
	impact_type = /obj/effect/shiptest_projectile/impact/nock
	hitscan_light_color_override = LIGHT_COLOR_PURPLE
	muzzle_flash_color_override = LIGHT_COLOR_PURPLE
	impact_light_color_override = LIGHT_COLOR_PURPLE
	damage_constant = 0.8
	damage = 15
	armour_penetration = -20
