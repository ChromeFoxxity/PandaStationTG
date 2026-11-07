/obj/shiptest_projectile/bullet/gauss
	name = "ferromagnetic pellet"
	icon_state = "gauss-pellet"
	damage = 25
	range = 35
	light_system = 2
	light_color = COLOR_RED
	light_range = 3

/obj/shiptest_projectile/bullet/gauss/tavsha
	name = "tav'sha dart"
	icon_state = "gauss-pellet"
	bullet_identifier = "dart"

	damage = 7
	armour_penetration = 30

	homing_turn_speed = 7
	homing_inaccuracy_min = 0
	homing_inaccuracy_max = 16

	ricochets_max = 0
	range = 30
	light_system = 0
	speed = BULLET_SPEED_HANDGUN

	transform = matrix(0.7, 0, 0, 0, 0.7, 0)

/obj/shiptest_projectile/bullet/gauss/deusha
	name = "deu'sha dart"
	icon_state = "gauss-pellet"
	bullet_identifier = "dart"

	damage = 10
	armour_penetration = 35

	homing_turn_speed = 4
	homing_inaccuracy_min = 0
	homing_inaccuracy_max = 16

	ricochets_max = 0
	range = 30
	light_system = 0
	speed = BULLET_SPEED_SHOTGUN
