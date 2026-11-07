/obj/shiptest_projectile/beam/laser
	tracer_type = /obj/effect/shiptest_projectile/tracer/laser
	muzzle_type = /obj/effect/shiptest_projectile/muzzle/laser
	impact_type = /obj/effect/shiptest_projectile/impact/laser

/obj/shiptest_projectile/beam/laser/clover
	name = "electroplasma bolt"
	icon_state = "clover_pulse_light"
	damage = 20
	armour_penetration = -10
	light_color = LIGHT_COLOR_CYAN
	pass_flags = PASSTABLE | PASSGRILLE

/obj/shiptest_projectile/beam/laser/clover/smg
	damage = 25

/obj/shiptest_projectile/beam/laser/clover/magnum
	icon_state = "clover_pulse"
	damage = 35
	armour_penetration = 10

/obj/shiptest_projectile/beam/laser/clover/shotgun
	damage = 15
	armour_penetration = -15
	wound_bonus = -30
	range = 10
	damage_falloff_tile = -1

/obj/shiptest_projectile/beam/laser/clover/highpower
	icon_state = "clover_pulse"
	damage = 25
	armour_penetration = 10

/obj/shiptest_projectile/beam/laser/clover/overcharge
	icon_state = "clover_pulse_heavy"
	damage = 40
	speed = 0.6

/obj/shiptest_projectile/beam/laser/clover/overcharge/on_hit(atom/target, blocked = FALSE, pierce_hit)
	..()
	explosion(target, 0, 0, 3, flame_range = 2, light_impact_range = 3, explosion_cause = src)
	return BULLET_ACT_HIT
