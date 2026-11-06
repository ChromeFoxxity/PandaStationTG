// 5.56x42mm (CM82, Hydra variants)

/obj/shiptest_projectile/bullet/a556_42
	name = "5.56x42mm bullet"
	damage = 25
	armour_penetration = 20
	wound_bonus = -40
	speed = 2.5
	bullet_identifier = "medium bullet"

/obj/shiptest_projectile/bullet/a556_42/hp
	name = "5.56x42mm hollow point bullet"
	damage = 35
	armour_penetration = -20
	speed_mod = BULLET_SPEED_HP_MOD

/obj/shiptest_projectile/bullet/a556_42/ap
	name = "5.56x42mm AP bullet"
	damage = 22
	armour_penetration = 40
	speed_mod = BULLET_SPEED_AP_MOD

/obj/shiptest_projectile/bullet/a556_42/rubber
	name = "5.56x42mm Rubber bullet"
	damage = 5
	stamina = 25
	armour_penetration = 0
	speed_mod = BULLET_SPEED_RUBBER_MOD
	bullet_identifier = "medium bullet"

// 8x50mmR (Illestren Rifle)

/obj/shiptest_projectile/bullet/a8_50r
	name = "8x50mmR bullet"
	damage = 35
	armour_penetration = 40
	speed = 2.5
	bullet_identifier = "large bullet"

/obj/shiptest_projectile/bullet/a8_50r/hp
	name = "8x50mmR hollow point bullet"
	damage = 50
	armour_penetration = -20
	speed_mod = BULLET_SPEED_HP_MOD

/obj/shiptest_projectile/bullet/a8_50r/match
	name = "8x50mmR match bullet"
	damage = 32
	armour_penetration = 50
	speed_mod = BULLET_SPEED_AP_MOD
	ricochets_max = 4
	ricochet_chance = 80
	ricochet_auto_aim_angle = 40
	ricochet_auto_aim_range = 5
	ricochet_incidence_leeway = 50
	ricochet_decay_chance = 1
	ricochet_decay_damage = 1

/obj/shiptest_projectile/bullet/a8_50r/trac
	name = "8x50mmR tracer bullet"
	color = COLOR_ORANGE

/obj/shiptest_projectile/bullet/a858/trac
	name = "8x58mm tracer bullet"
	color = COLOR_ORANGE

//7.62x40mm (SKM Rifles)

/obj/shiptest_projectile/bullet/a762_40
	name = "7.62x40mm bullet"
	damage = 30
	armour_penetration = 20
	speed = 2.5
	bullet_identifier = "medium bullet"

/obj/shiptest_projectile/bullet/a762_40/hp
	name = "7.62x40mm hollow point bullet"
	damage = 40
	armour_penetration = -20
	speed_mod = BULLET_SPEED_HP_MOD

/obj/shiptest_projectile/bullet/a762_40/ap
	name = "7.62x40mm armor piercing bullet"
	damage = 27
	armour_penetration = 40
	speed_mod = BULLET_SPEED_AP_MOD

/obj/shiptest_projectile/bullet/a762_40/rubber //"rubber"
	name = "7.62x40mm rubber bullet"
	damage = 15
	stamina = 40
	armour_penetration = 10
	speed_mod = BULLET_SPEED_RUBBER_MOD
	bullet_identifier = "medium rubber bullet"

//.308 WIN (M514 & GAL DMRs)

/obj/shiptest_projectile/bullet/a308
	name = ".308 bullet"
	damage = 35
	armour_penetration = 40
	speed = 2.5
	bullet_identifier = "large bullet"

/obj/shiptest_projectile/bullet/a308/hp
	name = ".308 hollow point bullet"
	damage = 40
	armour_penetration = 20
	speed_mod = BULLET_SPEED_HP_MOD

/obj/shiptest_projectile/bullet/a308/ap
	name = ".308 armor piercing bullet"
	damage = 32
	armour_penetration = 60
	speed_mod = BULLET_SPEED_AP_MOD

/obj/shiptest_projectile/bullet/a308/rubber //"rubber"
	name = ".308 rubber bullet"
	damage = 20
	stamina = 40
	armour_penetration = 20
	speed_mod = BULLET_SPEED_RUBBER_MOD
	bullet_identifier = "large rubber bullet"

