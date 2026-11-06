// Adapted from Shiptest's clip_lanchester energy ammunition.

/obj/item/shiptest_ammo_casing/energy/kalix
	projectile_type = /obj/shiptest_projectile/beam/hitscan/kalix
	fire_sound = 'modular_panda/sound/weapons/gun/energy/kalixsmg.ogg'
	e_cost = 500 //25 shots per cell
	delay = 1
	select_name = "lethal"

/obj/item/shiptest_ammo_casing/energy/kalix/nt
	select_name = "focus"

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

/obj/item/shiptest_ammo_casing/energy/kalix/nock
	projectile_type = /obj/shiptest_projectile/beam/hitscan/kalix/nock
	fire_sound = 'modular_panda/sound/weapons/gun/energy/kalixsmg.ogg'
	e_cost = 312 //10 bursts per cell
	select_name = "lethal"

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

/obj/item/shiptest_ammo_casing/energy/disabler/hitscan/kalix/nock
	projectile_type = /obj/shiptest_projectile/beam/hitscan/disabler
	fire_sound = 'modular_panda/sound/weapons/taser2.ogg'
	e_cost = 312 //10 bursts per cell
	select_name = "disable"

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

/obj/item/shiptest_ammo_casing/energy/laser
	projectile_type = /obj/shiptest_projectile/beam/laser
	select_name = "kill"

/obj/item/shiptest_ammo_casing/energy/laser/clover
	projectile_type = /obj/shiptest_projectile/beam/laser/clover
	select_name = "kill"
	e_cost = 333
	delay = 0.5 SECONDS

/obj/item/shiptest_ammo_casing/energy/laser/clover/auto
	e_cost = 277
	delay = 0.1 SECONDS

/obj/shiptest_projectile/beam/laser/clover
	name = "electroplasma bolt"
	icon_state = "clover_pulse_light"
	damage = 20
	armour_penetration = -10
	light_color = LIGHT_COLOR_CYAN
	pass_flags = PASSTABLE | PASSGRILLE

/obj/item/shiptest_ammo_casing/energy/laser/clover/smg
	projectile_type = /obj/shiptest_projectile/beam/laser/clover/smg
	e_cost = 500
	delay = 0.16 SECONDS

/obj/shiptest_projectile/beam/laser/clover/smg
	damage = 25

/obj/item/shiptest_ammo_casing/energy/laser/clover/magnum
	projectile_type = /obj/shiptest_projectile/beam/laser/clover/magnum
	e_cost = 625
	delay = 0.5 SECONDS

/obj/item/shiptest_ammo_casing/energy/laser/clover/magnum/nt
	delay = 0.35 SECONDS

/obj/shiptest_projectile/beam/laser/clover/magnum
	icon_state = "clover_pulse"
	damage = 35
	armour_penetration = 10

/obj/item/shiptest_ammo_casing/energy/laser/clover/shotgun
	projectile_type = /obj/shiptest_projectile/beam/laser/clover/shotgun
	pellets = 5
	variance = 25
	e_cost = 1666
	select_name = "scatter"
	delay = 0.7 SECONDS

/obj/shiptest_projectile/beam/laser/clover/shotgun
	damage = 15
	armour_penetration = -15
	wound_bonus = -30
	range = 10
	damage_falloff_tile = -1

/obj/item/shiptest_ammo_casing/energy/laser/clover/highpower
	projectile_type = /obj/shiptest_projectile/beam/laser/clover/highpower
	e_cost = 666
	select_name = "kill"
	delay = 0.16 SECONDS

/obj/shiptest_projectile/beam/laser/clover/highpower
	icon_state = "clover_pulse"
	damage = 25
	armour_penetration = 10

/obj/item/shiptest_ammo_casing/energy/laser/clover/overcharge
	projectile_type = /obj/shiptest_projectile/beam/laser/clover/overcharge
	e_cost = 10000
	select_name = "overcharge"
	delay = 2 SECONDS

/obj/shiptest_projectile/beam/laser/clover/overcharge
	icon_state = "clover_pulse_heavy"
	damage = 40
	speed = 0.6

/obj/shiptest_projectile/beam/laser/clover/overcharge/on_hit(atom/target, blocked = FALSE, pierce_hit)
	..()
	explosion(target, 0, 0, 3, flame_range = 2, light_impact_range = 3, explosion_cause = src)
	return BULLET_ACT_HIT

/obj/item/shiptest_ammo_casing/energy/laser/clover/beam
	projectile_type = /obj/shiptest_projectile/beam/hitscan/kalix/faveleira
	e_cost = 1666
	select_name = "focus"
	fire_sound = 'modular_panda/sound/weapons/gun/laser/heavy_laser.ogg'
	delay = 1 SECONDS

/obj/shiptest_projectile/beam/hitscan/kalix/faveleira
	damage = 35
	armour_penetration = 30

/obj/item/shiptest_ammo_casing/energy/disabler/clover
	projectile_type = /obj/shiptest_projectile/beam/disabler/clover/weak
	select_name = "disable"
	e_cost = 333
	harmful = FALSE
	pass_flags = PASSTABLE | PASSGRILLE

/obj/item/shiptest_ammo_casing/energy/disabler/clover/smg
	e_cost = 500
	delay = 0.16 SECONDS

/obj/shiptest_projectile/beam/disabler/clover/weak
	icon_state = "clover_disabler_light"
	damage = 15
	armour_penetration = -20

/obj/item/shiptest_ammo_casing/energy/disabler/clover/magnum
	projectile_type = /obj/shiptest_projectile/beam/disabler/clover
	e_cost = 625
	delay = 0.5 SECONDS
	harmful = FALSE

/obj/item/shiptest_ammo_casing/energy/disabler/clover/magnum/nt
	delay = 0.35 SECONDS

/obj/shiptest_projectile/beam/disabler/clover
	icon_state = "clover_disabler"
	light_color = COLOR_ORANGE
