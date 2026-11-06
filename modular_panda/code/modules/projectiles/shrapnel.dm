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

/obj/shiptest_projectile/bullet/shrapnel
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

/obj/shiptest_projectile/bullet/shrapnel/Initialize()
	. = ..()
	def_zone = pick(BODY_ZONE_L_ARM, BODY_ZONE_R_ARM, BODY_ZONE_CHEST, BODY_ZONE_HEAD, BODY_ZONE_L_LEG, BODY_ZONE_R_LEG)

/obj/item/ammo_casing/caseless/shrapnel/plasma
	name = "directional plasma burst"
	projectile_type = /obj/shiptest_projectile/beam/laser

/obj/item/ammo_casing/caseless/shrapnel/shred/plasma
	name = "point blank directional plasma burst"
	projectile_type = /obj/shiptest_projectile/beam/pulse/shotgun
