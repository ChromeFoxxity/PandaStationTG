/obj/shiptest_projectile/bullet
	name = "bullet"
	icon_state = "gauss"
	damage = 60
	speed = 2.5
	damage_type = BRUTE
	sharpness = SHARP_POINTY

	hitsound = "bullet_hit"
	hitsound_non_living = "bullet_impact"
	hitsound_glass = "bullet_hit_glass"
	hitsound_stone = "bullet_hit_stone"
	hitsound_metal = "bullet_hit_metal"
	hitsound_wood = "bullet_hit_wood"
	hitsound_snow = "bullet_hit_snow"

	near_miss_sound = "bullet_miss"
	ricochet_sound = "bullet_bounce"

	bullet_identifier = "bullet"

	impact_effect_type = /obj/effect/temp_visual/impact_effect
	ricochets_max = 5 //should be enough to scare the shit out of someone
	ricochet_chance = 30
	ricochet_decay_damage = 0.5 //shouldnt being reliable, but deadly enough to be careful if you accidentally hit an ally
	shrapnel_type = /obj/item/shiptest_shrapnel/bullet
	wound_falloff_tile = -2
	embed_falloff_tile = -2
	wound_bonus = -10

/obj/shiptest_projectile/bullet/smite
	name = "divine retribution"
	damage = 10

/obj/shiptest_projectile/bullet/foam_dart
	name = "foam dart"
	icon = 'icons/obj/weapons/guns/toy.dmi'
	icon_state = "foamdart_proj"
	damage = 0
	damage_type = OXY
	range = 10
	embed_type = /datum/embedding/foam_dart
	shrapnel_type = /obj/item/shiptest_ammo_casing/caseless/foam_dart
	embed_falloff_tile = 0

/obj/shiptest_projectile/bullet/foam_dart/riot
	name = "riot foam dart"
	icon_state = "foamdart_riot_proj"
	stamina = 25
	shrapnel_type = /obj/item/shiptest_ammo_casing/caseless/foam_dart/riot

/obj/shiptest_projectile/bullet/rocket
	name = "HE rocket"
	icon_state = "missile"
	damage = 50
	sharpness = NONE
	embed_type = null
	shrapnel_type = null
	ricochets_max = 0

/obj/shiptest_projectile/bullet/rocket/on_hit(atom/target, blocked = FALSE, pierce_hit)
	. = ..()
	explosion(target, heavy_impact_range = 1, light_impact_range = 2, flame_range = 3, flash_range = 4, explosion_cause = src)
	return BULLET_ACT_HIT

/obj/shiptest_projectile/bullet/rocket/hedp
	name = "HEDP rocket"
	damage = 60

/obj/shiptest_projectile/bullet/rocket/a70mm
	name = "70mm rocket"
	damage = 40

/obj/shiptest_projectile/bullet/rocket/a70mm/light
	name = "light 70mm rocket"
	damage = 30
