// .50 BMG (Sniper)

/obj/shiptest_projectile/bullet/p50
	name = ".50 BMG bullet"
	speed = 3
	damage = 70
	knockdown = 50
	armour_penetration = 60
	var/breakthings = TRUE
	bullet_identifier = "huge bullet"

/obj/shiptest_projectile/bullet/p50/on_hit(atom/target, blocked = 0)
	if(isobj(target) && (blocked != 100) && breakthings)
		var/obj/O = target
		O.take_damage(80, BRUTE, "bullet", FALSE)
	return ..()

/obj/shiptest_projectile/bullet/p50/soporific
	name = ".50 BMG soporific bullet"
	armour_penetration = 0
	damage = 0
	dismemberment = 0
	knockdown = 0
	breakthings = FALSE

/obj/shiptest_projectile/bullet/p50/soporific/on_hit(atom/target, blocked = FALSE)
	if((blocked != 100) && isliving(target))
		var/mob/living/L = target
		L.Sleeping(400)
	return ..()

/obj/shiptest_projectile/bullet/p50/penetrator
	name = ".50 BMG penetrator round"
	icon_state = "gauss"
	damage = 60
	projectile_piercing = PASSMOB
	projectile_phasing = (ALL & (~PASSMOB))
	dismemberment = 0 //It goes through you cleanly.
	knockdown = 0
	breakthings = FALSE

//6.5mm (F90, Boomslang)

/obj/shiptest_projectile/bullet/a65
	name = "6.5mm bullet"
	stamina = 10
	damage = 40
	armour_penetration = 50
	bullet_identifier = "huge bullet"

	speed = 3

	icon_state = "redtrac"
	light_system = OVERLAY_LIGHT
	light_color = COLOR_SOFT_RED
	light_range = 2

//this should only exist on the big ass turrets. don't fucking give players this.
/obj/shiptest_projectile/bullet/a65/rubber //"rubber"
	name = "6.5mm rubber bullet"
	damage = 10
	stamina = 40
	speed_mod = BULLET_SPEED_RUBBER_MOD
	bullet_identifier = "huge rubber bullet"

// 8x58mm caseless (SG-669)

/obj/shiptest_projectile/bullet/a858
	name = "8x58mm caseless bullet"
	damage = 45
	stamina = 10
	armour_penetration = 50
	speed = 3
	bullet_identifier = "huge bullet"

// .300 Magnum

/obj/shiptest_projectile/bullet/a300
	name = ".300 Magnum bullet"
	damage = 50
	stamina = 10
	armour_penetration = 40
	speed = 2.5
	bullet_identifier = "huge bullet"

/obj/shiptest_projectile/bullet/a300/trac
	name = ".300 Magnum tracer bullet"
	color = COLOR_ORANGE
