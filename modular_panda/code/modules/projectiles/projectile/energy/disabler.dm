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

/obj/shiptest_projectile/beam/disabler/weak
	damage = 15

/obj/shiptest_projectile/beam/disabler/weak/negative_ap
	armour_penetration = -30
	range = 9

/obj/shiptest_projectile/beam/hitscan/disabler
	name = "disabler beam"
	icon_state = "beam_disabler"
	hitscan = TRUE
	range = 12
	damage = 20
	armour_penetration = -20
	damage_type = STAMINA
	armor_flag = ENERGY
	bullet_identifier = "disabler"
	hitsound = 'modular_panda/sound/weapons/tap.ogg'
	eyeblur = 0
	tracer_type = /obj/effect/shiptest_projectile/tracer/disabler
	muzzle_type = /obj/effect/shiptest_projectile/muzzle/disabler
	impact_type = /obj/effect/shiptest_projectile/impact/disabler

	light_color = LIGHT_COLOR_BLUE

	hitscan_light_intensity = 2
	hitscan_light_range = 0.75
	hitscan_light_color_override = COLOR_LIGHT_YELLOW
	muzzle_flash_intensity = 4
	muzzle_flash_range = 2
	muzzle_flash_color_override = COLOR_LIGHT_YELLOW
	impact_light_intensity = 6
	impact_light_range = 2.5
	impact_light_color_override = COLOR_LIGHT_YELLOW

/obj/shiptest_projectile/beam/disabler/clover
	icon_state = "clover_disabler"
	light_color = COLOR_ORANGE

/obj/shiptest_projectile/beam/disabler/clover/weak
	icon_state = "clover_disabler_light"
	damage = 15
	armour_penetration = -20

