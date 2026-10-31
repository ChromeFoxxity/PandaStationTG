// .38 (Colt Detective Special & Winchester)

/obj/projectile/bullet/c38
	name = ".38 bullet"
	damage = 20
	armour_penetration = -20

/obj/projectile/bullet/c38/surplus
	damage = 15
	armour_penetration = -25

/obj/projectile/bullet/c38/match
	name = ".38 match bullet"
	armour_penetration = -10

	wound_bonus = -20
	exposed_wound_bonus = 10
	embed_type = /datum/embedding/bullet/c38

	ricochets_max = 4
	ricochet_chance = 100
	ricochet_auto_aim_angle = 40
	ricochet_auto_aim_range = 5
	ricochet_incidence_leeway = 50
	ricochet_decay_chance = 1
	ricochet_decay_damage = 1

/datum/embedding/bullet/c38
	embed_chance = 25
	fall_chance = 2
	jostle_chance = 2
	ignore_throwspeed_threshold = TRUE
	pain_stam_pct = 0.4
	pain_mult = 3
	jostle_pain_mult = 5
	rip_time = 1 SECONDS

/obj/projectile/bullet/c38/bouncy
	name = ".38 rubber bullet"
	damage = 7
	stamina = 28
	armour_penetration = -60
	ricochets_max = 6
	ricochet_incidence_leeway = 70
	ricochet_chance = 130
	ricochet_decay_damage = 0.8

/obj/projectile/bullet/c38/dumdum
	name = ".38 prism bullet"
	damage = 20
	armour_penetration = -30
	ricochets_max = 0
	embed_type = /datum/embedding/bullet/c38/dumdum

/obj/projectile/bullet/c38/hotshot
	name = ".38 hearth bullet"
	ricochets_max = 0

/obj/projectile/bullet/c38/iceblox
	name = ".38 chilled bullet"
	ricochets_max = 0

// .357 (Syndicate Revolver)

/obj/projectile/bullet/c357
	name = ".357 bullet"
	damage = 35

/obj/projectile/bullet/c357/match
	name = ".357 match bullet"
	armour_penetration = 10
	ricochets_max = 5
	ricochet_chance = 140
	ricochet_auto_aim_angle = 50
	ricochet_auto_aim_range = 6
	ricochet_incidence_leeway = 80
	ricochet_decay_chance = 1

/obj/projectile/bullet/c357/hp
	name = ".357 hollow point bullet"
	damage = 50
	armour_penetration = -30
	weak_against_armour = TRUE
	ricochet_chance = 0

// .45-70 Gov't (Hunting Revolver)

/obj/projectile/bullet/a4570
	name = ".45-70 bullet"
	damage = 50 //might seem crazy but armor will tank this

/obj/projectile/bullet/a4570/match
	name = ".45-70 match bullet"
	damage = 45
	armour_penetration = 15
	ricochets_max = 5
	ricochet_chance = 140
	ricochet_auto_aim_angle = 50
	ricochet_auto_aim_range = 6
	ricochet_incidence_leeway = 80
	ricochet_decay_chance = 1

/obj/projectile/bullet/a4570/hp
	name = ".45-70 hollow point bullet"
	damage = 70 //will two tap goliaths armor pen should stop it from annihilating people
	armour_penetration = -35
	weak_against_armour = TRUE

// 44 Short (Roumain & Shadow)

/obj/projectile/bullet/a44roum
	name = ".44 roumain bullet"
	damage =  30

/obj/projectile/bullet/a44roum/rubber
	name = ".44 roumain rubber bullet"
	damage =  10
	stamina = 40
	armour_penetration = -10

/obj/projectile/bullet/a44roum/hp
	name = ".44 roumain hollow point bullet"
	damage =  45
	armour_penetration = -20
	ricochet_chance = 0
	weak_against_armour = TRUE
