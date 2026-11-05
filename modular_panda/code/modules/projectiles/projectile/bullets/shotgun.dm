/obj/shiptest_projectile/bullet/slug
	name = "12g shotgun slug"
	damage = 40
	armour_penetration = 10
	speed = 1.1
	bullet_identifier = "large slug"

/obj/shiptest_projectile/bullet/slug/beanbag
	name = "beanbag slug"
	damage = 10
	stamina = 60
	armour_penetration = -45

/obj/shiptest_projectile/bullet/incendiary/shotgun
	name = "incendiary slug"
	damage = 25
	armour_penetration = -10
	speed = 1.1

/obj/shiptest_projectile/bullet/incendiary/shotgun/dragonsbreath
	name = "dragonsbreath pellet"
	damage = 8
	armour_penetration = -35

/obj/shiptest_projectile/bullet/slug/stun
	name = "stunslug"
	damage = 5
	paralyze = 100
	stutter = 5
	jitter = 20 SECONDS
	range = 7
	icon_state = "spark"
	color = "#FFFF00"

/obj/shiptest_projectile/bullet/slug/meteor
	name = "meteorslug"
	icon = 'icons/obj/meteor.dmi'
	icon_state = "dust"
	damage = 30
	paralyze = 15
	knockdown = 80
	hitsound = 'sound/effects/meteorimpact.ogg'

/obj/shiptest_projectile/bullet/slug/meteor/on_hit(atom/target, blocked = FALSE)
	. = ..()
	if(ismovable(target) && !QDELETED(target))
		var/atom/movable/M = target
		var/atom/throw_target = get_edge_target_turf(M, get_dir(src, get_step_away(M, src)))
		if(!QDELETED(M))
			M.safe_throw_at(throw_target, 3, 2)

/obj/shiptest_projectile/bullet/slug/meteor/Initialize()
	. = ..()
	SpinAnimation()

/obj/shiptest_projectile/bullet/slug/frag12
	name = "frag12 slug"
	damage = 25
	paralyze = 20

/obj/shiptest_projectile/bullet/slug/frag12/on_hit(atom/target, blocked = FALSE)
	..()
	explosion(target, -1, 0, 0,  light_impact_range = 30, explosion_cause = src)
	return BULLET_ACT_HIT

/obj/shiptest_projectile/bullet/pellet
	///How much damage is subtracted per tile?
	var/tile_dropoff = 1 //Standard of 10% per tile
	///How much stamina damage is subtracted per tile?
	var/tile_dropoff_stamina = 1.5 //As above

	var/ap_dropoff = 5
	var/ap_dropoff_cutoff = -25

	icon_state = "pellet"
	armour_penetration = -10
	speed = 1.1
	bullet_identifier = "pellet"

/obj/shiptest_projectile/bullet/pellet/buckshot
	name = "buckshot pellet"
	damage = 13

/obj/shiptest_projectile/bullet/pellet/rubbershot
	name = "rubbershot pellet"
	damage = 2.5
	tile_dropoff = 0.15
	stamina = 15
	armour_penetration = -35
	bullet_identifier = "rubber pellet"

/obj/shiptest_projectile/bullet/pellet/rubbershot/incapacitate
	name = "incapacitating pellet"
	damage = 1
	tile_dropoff = 0.1
	stamina = 6
	tile_dropoff_stamina = 0.6

/obj/shiptest_projectile/bullet/pellet/blank
	name = "blank pellet"
	damage = 0
	stamina = 0
	shrapnel_type = null
	sharpness = NONE
	embed_type = null

/obj/shiptest_projectile/bullet/dart
	name = "shotgun dart"
	damage = 6
	embed_type = null
	shrapnel_type = null
	var/inject_flags

/obj/shiptest_projectile/bullet/dart/Initialize(mapload)
	. = ..()
	create_reagents(50, NO_REACT)

/obj/shiptest_projectile/bullet/dart/on_hit(atom/target, blocked = FALSE)
	if(iscarbon(target) && blocked != 100 && reagents?.total_volume)
		var/mob/living/carbon/carbon_target = target
		if(carbon_target.can_inject(target_zone = def_zone, injection_flags = inject_flags))
			reagents.trans_to(carbon_target, reagents.total_volume, methods = INJECT)
		else
			blocked = 100
	return ..()

/obj/shiptest_projectile/ion
	name = "ion bolt"
	icon_state = "ion"
	damage = 0
	damage_type = BURN
	armor_flag = ENERGY
	impact_effect_type = /obj/effect/temp_visual/impact_effect/ion
	var/emp_radius = 1

/obj/shiptest_projectile/ion/on_hit(atom/target, blocked = FALSE)
	. = ..()
	empulse(target, emp_radius, emp_radius, emp_source = src)
	return BULLET_ACT_HIT

/obj/shiptest_projectile/ion/weak
	emp_radius = 0

/obj/shiptest_projectile/beam/pulse/shotgun
	name = "pulse slug"
	icon_state = "pulse"
	damage = 40
	damage_type = BURN
	armor_flag = ENERGY
	range = 10
	ricochets_max = 0

/obj/shiptest_projectile/bullet/pellet/Initialize(mapload)
	. = ..()
	RegisterSignal(src, COMSIG_PROJECTILE_RANGE, PROC_REF(apply_tile_dropoff))

/obj/shiptest_projectile/bullet/pellet/proc/apply_tile_dropoff(datum/source)
	SIGNAL_HANDLER
	if(damage > 0)
		damage -= tile_dropoff
	if(stamina > 0)
		stamina -= tile_dropoff_stamina
	if(armour_penetration > ap_dropoff_cutoff)
		armour_penetration -= ap_dropoff
	if(accuracy_mod < 3)
		accuracy_mod += 0.3

/obj/shiptest_projectile/bullet/pellet/improvised
	damage = 6
	armour_penetration = -60
	tile_dropoff = 0.6

// Mech Scattershot

/obj/shiptest_projectile/bullet/pellet/scattershot
	damage = 24
	armour_penetration = -20
