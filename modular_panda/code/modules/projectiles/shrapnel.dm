/obj/item/shiptest_shrapnel // frag grenades
	name = "shrapnel shard"
	custom_materials = list(/datum/material/iron = 50)
	armour_penetration = -20
	icon = 'icons/obj/debris.dmi'
	icon_state = "large"
	w_class = WEIGHT_CLASS_TINY
	item_flags = DROPDEL
	sharpness = SHARP_EDGED
	embed_type = /datum/embedding/shrapnel

/obj/item/shiptest_shrapnel/hot
	name = "molten slag"
	damtype =  BURN
	sharpness = SHARP_NONE

/obj/item/shiptest_shrapnel/stingball
	name = "clump of ballistic gel"
	icon_state = "tiny"

/obj/item/shiptest_shrapnel/bullet // bullets
	name = "bullet"
	icon = 'modular_panda/icons/obj/ammunition/ammo_bullets.dmi'
	icon_state = "pistol-brass"
	item_flags = DROPDEL
/obj/item/shiptest_shrapnel/bullet/c38 // .38 round
	name = "\improper .38 bullet"

/obj/item/shiptest_shrapnel/bullet/c38/dumdum // .38 DumDum round
	name = "\improper .38 prism bullet"

/obj/projectile/bullet/shrapnel
	name = "flying shrapnel shard"
	damage = 15
	range = 15
	armour_penetration = -5
	ricochets_max = 2
	ricochet_chance = 60
	shrapnel_type = /obj/item/shiptest_shrapnel
	ricochet_incidence_leeway = 60
	sharpness = SHARP_EDGED
	wound_bonus = 30

/obj/projectile/bullet/shrapnel/Initialize()
	. = ..()
	def_zone = pick(BODY_ZONE_L_ARM, BODY_ZONE_R_ARM, BODY_ZONE_CHEST, BODY_ZONE_HEAD, BODY_ZONE_L_LEG, BODY_ZONE_R_LEG)

/obj/projectile/bullet/shrapnel/rusty
	damage = 8
	armour_penetration = -10
	ricochets_max = 3//duller = less likely to stick in a wall
	ricochet_chance = 60

/obj/projectile/bullet/shrapnel/mega
	damage = 20
	name = "flying shrapnel hunk"
	range = 25
	ricochets_max = 4
	ricochet_chance = 90
	ricochet_decay_chance = 0.9

/obj/projectile/bullet/shrapnel/hot
	name = "white-hot metal slag"
	damage = 8
	range = 8
	armour_penetration = -35
	shrapnel_type = /obj/item/shiptest_shrapnel/hot
	damage_type = BURN

/obj/projectile/bullet/shrapnel/hot/on_hit(atom/target, blocked = FALSE, pierce_hit = FALSE)
	. = ..()
	if(iscarbon(target))
		var/mob/living/carbon/M = target
		M.adjust_fire_stacks(15)
		M.ignite_mob()

/obj/projectile/bullet/shrapnel/spicy
	name = "radioactive slag"
	damage_type = BURN
	damage = 10
	range = 8
	armour_penetration = -35
	shrapnel_type = /obj/item/shiptest_shrapnel/hot

/obj/projectile/bullet/shrapnel/spicy/on_hit(atom/target, blocked = FALSE, pierce_hit = FALSE)
	. = ..()
	if(iscarbon(target))
		var/mob/living/carbon/M = target
		M.apply_effect(250,EFFECT_IRRADIATE,0)

/obj/projectile/bullet/shrapnel/walkmine
	name = "flying walkmine shard"
	damage = 5 //may need tuning. this should maim, not kill!
	range = 5
	armour_penetration = -10
	wound_bonus = 10


/obj/projectile/bullet/pellet/stingball
	name = "ballistic gel clump"
	damage = 5
	stamina = 15
	ricochets_max = 6
	ricochet_chance = 66
	ricochet_decay_chance = 1
	ricochet_decay_damage = 0.9
	ricochet_auto_aim_angle = 10
	ricochet_auto_aim_range = 2
	ricochet_incidence_leeway = 0
	embed_falloff_tile = -2
	shrapnel_type = /obj/item/shiptest_shrapnel/stingball

/obj/projectile/bullet/pellet/stingball/mega
	name = "megastingball pellet"
	ricochets_max = 6
	ricochet_chance = 110

//claymore shrapnel stuff//
//2 small bursts- one that harasses people passing by a bit aways, one that brutalizes point-blank targets.
/obj/item/ammo_casing/caseless/shrapnel
	name = "directional shrapnel burst :D"
	desc = "I May Have Overreacted"
	pellets = 5
	variance = 70
	projectile_type = /obj/projectile/bullet/shrapnel/claymore
	randomspread = TRUE

/obj/item/ammo_casing/caseless/shrapnel/shred
	name = "point blank directional shrapnel burst"
	desc = "Claymores are lethal to armored infantry at point blank range."
	pellets = 4
	variance = 50
	projectile_type = /obj/projectile/bullet/shrapnel/claymore/pointbl
	randomspread = TRUE

/obj/projectile/bullet/shrapnel/claymore
	name = "ceramic splinter"
	range = 4
	armour_penetration = 0

/obj/projectile/bullet/shrapnel/claymore/pointbl
	name = "large ceramic shard"
	range = 2
	damage = 18
	dismemberment = 30
	armour_penetration = 10

/obj/item/ammo_casing/caseless/shrapnel/plasma
	name = "directional plasma burst"
	projectile_type = /obj/projectile/beam/laser

/obj/item/ammo_casing/caseless/shrapnel/shred/plasma
	name = "point blank directional plasma burst"
	projectile_type = /obj/projectile/beam/pulse/shotgun
