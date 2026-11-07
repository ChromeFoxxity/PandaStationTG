/* Contains ionization, lorentz, and plasma flare projectiles */

/obj/shiptest_projectile/beam/ionization
	name = "ionization beam"
	icon_state = ""
	pass_flags = PASSTABLE | PASSGRILLE

	/* to set */
	damage = 20
	armour_penetration = -10
	damage_type = BURN

	hitscan = TRUE

	tracer_type = /obj/effect/shiptest_projectile/tracer/ionization
	muzzle_type = /obj/effect/shiptest_projectile/muzzle/ionization
	impact_type = /obj/effect/shiptest_projectile/impact/ionization

	bullet_identifier = "plasma beam"

	range = 10

	armor_flag = LASER

	impact_effect_type = null

	ricochets_max = 0
	reflectable = 0

/obj/shiptest_projectile/beam/ionization/pdw
	name = "ionization beam"
	icon_state = ""
	pass_flags = PASSTABLE | PASSGRILLE

	/* to set */
	damage = 20
	armour_penetration = 10
	damage_type = BURN

	hitscan = TRUE
	range = 10

	armor_flag = LASER

/obj/shiptest_projectile/beam/ionization/sniper
	name = "far-reach ionization beam"

	damage = 35
	armour_penetration = 20

	range = 20

	tracer_type = /obj/effect/shiptest_projectile/tracer/ionization/sniper
	muzzle_type = /obj/effect/shiptest_projectile/muzzle/ionization/sniper
	impact_type = /obj/effect/shiptest_projectile/impact/ionization/sniper

/obj/shiptest_projectile/beam/lorentz
	name = "lorentz bolt"
	icon_state = ""
	pass_flags = PASSTABLE | PASSGRILLE

	/* to set */
	damage = 35
	armour_penetration = 0
	damage_type = BURN

	range = 8

	hitscan = TRUE

	tracer_type = /obj/effect/shiptest_projectile/tracer/lorentz
	muzzle_type = /obj/effect/shiptest_projectile/muzzle/lorentz
	impact_type = /obj/effect/shiptest_projectile/impact/lorentz

	hitsound = 'sound/effects/magic/lightningshock.ogg'
	hitsound_non_living = 'sound/effects/magic/lightningshock.ogg'
	hitsound_glass = 'sound/effects/magic/lightningshock.ogg'
	hitsound_stone = 'sound/effects/magic/lightningshock.ogg'
	hitsound_metal = 'sound/effects/magic/lightningshock.ogg'
	hitsound_wood = 'sound/effects/magic/lightningshock.ogg'
	hitsound_snow = 'sound/effects/magic/lightningshock.ogg'

	bullet_identifier = "bolt"

	armor_flag = LASER
	eyeblur = 2
	impact_effect_type = null
	light_system = OVERLAY_LIGHT
	light_range = 1.5
	light_power = 1
	light_color = COLOR_SOFT_RED
	ricochets_max = 0
	reflectable = 0

/obj/shiptest_projectile/beam/lorentz/shotgun
	name = "lorentz bolt"
	icon_state = ""

	/* to set */
	damage = 10
	armour_penetration = -5
	damage_type = BURN
	wound_bonus = -20
	exposed_wound_bonus = 10

	range = 5

	armor_flag = LASER

	var/tile_dropoff = 0.5

	var/ap_dropoff = 3
	var/ap_dropoff_cutoff = -20

/obj/shiptest_projectile/beam/lorentz/shotgun/on_range()
	..()
	if(damage > 0)
		damage -= tile_dropoff
	if(armour_penetration > ap_dropoff_cutoff)
		armour_penetration -= ap_dropoff
	if(accuracy_mod < 3)
		accuracy_mod += 0.3
	if(damage < 0)
		qdel(src)

/obj/shiptest_projectile/beam/lorentz/mg
	range = 12

/obj/shiptest_projectile/beam/lorentz/heavy
	damage = 75
	armour_penetration = 20
	range = 20
	projectile_piercing = PASSGLASS

/obj/shiptest_projectile/beam/flare
	name = "plasma flare"
	icon_state = ""
	pass_flags = PASSTABLE | PASSGRILLE
	projectile_piercing = PASSGLASS

	hitsound = 'modular_panda/sound/weapons/gun/cybersun/plasmaflareimpact.ogg'
	hitsound_non_living = 'modular_panda/sound/weapons/gun/cybersun/plasmaflareimpact.ogg'
	hitsound_glass = 'modular_panda/sound/weapons/gun/cybersun/plasmaflareimpact.ogg'
	hitsound_stone = 'modular_panda/sound/weapons/gun/cybersun/plasmaflareimpact.ogg'
	hitsound_metal = 'modular_panda/sound/weapons/gun/cybersun/plasmaflareimpact.ogg'
	hitsound_wood = 'modular_panda/sound/weapons/gun/cybersun/plasmaflareimpact.ogg'
	hitsound_snow = 'modular_panda/sound/weapons/gun/cybersun/plasmaflareimpact.ogg'

	damage = 60
	armour_penetration = 0
	damage_type = BURN

	range = 6

	hitscan = TRUE

	tracer_type = /obj/effect/shiptest_projectile/tracer/flare
	muzzle_type = /obj/effect/shiptest_projectile/muzzle/flare
	impact_type = /obj/effect/shiptest_projectile/impact/flare

	hitscan_light_intensity = 1.5
	hitscan_light_range = 0.75
	hitscan_light_color_override = COLOR_MAROON
	muzzle_flash_intensity = 3
	muzzle_flash_range = 1.5
	muzzle_flash_color_override = COLOR_MAROON
	impact_light_intensity = 3
	impact_light_range = 2
	impact_light_color_override = COLOR_MAROON

	bullet_identifier = "flare"

	armor_flag = LASER
	eyeblur = 2
	impact_effect_type = null
	ricochets_max = 0
	reflectable = 0

/obj/shiptest_projectile/beam/flare/on_hit(atom/target, blocked = FALSE, pierce_hit)
	. = ..()

	if(isliving(target))
		var/mob/living/exploded = target
		var/atom/throw_target = get_edge_target_turf(target, dir)
		if(!exploded.anchored)
			exploded.throw_at(throw_target, round(damage/35), round(damage/35)*2, gentle = TRUE)

/obj/shiptest_projectile/beam/flare/heavy
	pass_flags = PASSTABLE | PASSGRILLE
	projectile_piercing = PASSGLASS | PASSCLOSEDTURF | PASSMOB
	range = 12

/obj/shiptest_projectile/beam/flare/heavy/on_hit(atom/target, blocked = 0, pierce_hit)
	. = ..()
	if (!QDELETED(target) && (isturf(target) || isstructure(target)))
		if(isobj(target))
			SSexplosions.med_mov_atom += target
		else
			SSexplosions.medturf += target
