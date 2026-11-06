/obj/shiptest_projectile/bullet/a84mm
	name ="\improper HEDP rocket"
	desc = "USE A WEEL GUN"
	icon_state= "84mm-hedp"
	damage = 80
	var/anti_armour_damage = 120
	armour_penetration = 100
	dismemberment = 30

	var/devastation = 0
	var/range_heavy = 1
	var/range_light = 2
	var/flame_range = 4

/obj/shiptest_projectile/bullet/a84mm/on_hit(atom/target, blocked = FALSE, pierce_hit)
	..()
	explosion(
		target,
		devastation_range = devastation,
		heavy_impact_range = range_heavy,
		light_impact_range = range_light,
		flame_range = flame_range,
		flash_range = 0,
		explosion_cause = src,
	)

	if(anti_armour_damage)
		if(ismecha(target))
			var/obj/vehicle/sealed/mecha/M = target
			M.take_damage(anti_armour_damage)
		if(issilicon(target))
			var/mob/living/silicon/S = target
			S.take_overall_damage(anti_armour_damage*0.75, anti_armour_damage*0.25)
	return BULLET_ACT_HIT

/obj/shiptest_projectile/bullet/a84mm/he
	name ="\improper HE missile"
	desc = "Boom."
	icon_state = "missile"
	damage = 30
	anti_armour_damage = 0
	light_range = 4
	ricochets_max = 0 //it's a MISSILE

/obj/shiptest_projectile/bullet/a84mm/he/weak
	name ="\improper Light HE missile"
	desc = "Boom."
	icon_state = "missile-light"
	dismemberment = 0
	damage = 20

/obj/shiptest_projectile/bullet/a84mm_br
	name ="\improper HE missile"
	desc = "Boom."
	icon_state = "missile"
	damage = 30
	ricochets_max = 0 //it's a MISSILE
	var/sturdy = list(
	/turf/closed,
	/obj/vehicle/sealed/mecha,
	/obj/machinery/door/,
	/obj/machinery/door/poddoor/shutters
	)

/obj/shiptest_projectile/bullet/a84mm_br/on_hit(atom/target, blocked = FALSE, pierce_hit)
	..()
	for(var/i in sturdy)
		if(istype(target, i))
			explosion(target, 1, 1, 1, 2)
			return BULLET_ACT_HIT
	//if(istype(target, /turf/closed) || ismecha(target))
	new /obj/item/broken_missile(get_turf(src), 1)
