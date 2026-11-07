/obj/shiptest_projectile/energy
	name = "energy"
	icon_state = "spark"
	damage = 0
	damage_type = BURN
	armor_flag = ENERGY
	reflectable = REFLECT_NORMAL

/obj/shiptest_projectile/energy/electrode
	name = "electrode"
	icon_state = "spark"
	color = "#FFFF00"
	hitsound = 'modular_panda/sound/weapons/taserhit.ogg'
	damage = 40
	damage_type = STAMINA
	stutter = 5
	jitter = 20 SECONDS
	range = 6
	tracer_type = /obj/effect/shiptest_projectile/tracer/stun
	muzzle_type = /obj/effect/shiptest_projectile/muzzle/stun
	impact_type = /obj/effect/shiptest_projectile/impact/stun

/obj/shiptest_projectile/energy/electrode/on_hit(atom/target, blocked = FALSE)
	. = ..()
	if(!ismob(target) || blocked >= 100) //Fully blocked by mob or collided with dense object - burst into sparks!
		do_sparks(1, TRUE, src)

/obj/shiptest_projectile/energy/electrode/on_range() //to ensure the bolt sparks when it reaches the end of its range if it didn't hit a target yet
	do_sparks(1, TRUE, src)
	..()
