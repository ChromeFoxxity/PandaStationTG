// Adapted from Shiptest's clip_lanchester energy projectiles.

/obj/projectile/beam/laser/kalix
	name = "concentrated energy beam"
	icon_state = "laser"
	hitscan = TRUE
	range = 12
	damage = 25
	armour_penetration = -10
	light_color = LIGHT_COLOR_ELECTRIC_CYAN
	hitscan_light_color_override = LIGHT_COLOR_ELECTRIC_CYAN
	pass_flags = PASSTABLE | PASSGRILLE

/obj/projectile/beam/laser/kalix/faveleira
	damage = 35
	armour_penetration = 30

/obj/projectile/beam/emitter/hitscan/clip
	damage = 35

/obj/projectile/beam/laser/clover
	name = "electroplasma bolt"
	icon_state = "clover_pulse_light"
	damage = 20
	armour_penetration = -10
	light_color = LIGHT_COLOR_CYAN
	pass_flags = PASSTABLE | PASSGRILLE

/obj/projectile/beam/laser/clover/smg
	damage = 25

/obj/projectile/beam/laser/clover/magnum
	icon_state = "clover_pulse"
	damage = 35
	armour_penetration = 10

/obj/projectile/beam/laser/clover/highpower
	icon_state = "clover_pulse"
	damage = 25
	armour_penetration = 10

/obj/projectile/beam/laser/clover/overcharge
	icon_state = "clover_pulse_heavy"
	damage = 40
	speed = 0.6

/obj/projectile/beam/laser/clover/overcharge/on_hit(atom/target, blocked = FALSE, pierce_hit = FALSE)
	. = ..()
	explosion(get_turf(target), 0, 0, 3, flame_range = 2, light_dam = 20, light_item_dam = 0)
	return BULLET_ACT_HIT

/obj/projectile/beam/laser/clover/shotgun
	damage = 15
	armour_penetration = -15
	wound_bonus = -30
	range = 10
	damage_falloff_tile = -1

/obj/projectile/beam/disabler/clover
	icon_state = "clover_disabler"
	light_color = COLOR_ORANGE

/obj/projectile/beam/disabler/clover/weak
	icon_state = "clover_disabler_light"
	damage = 15
	armour_penetration = -20
