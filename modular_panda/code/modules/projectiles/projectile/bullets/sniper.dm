// .50 BMG (Sniper)

/obj/projectile/bullet/p50
	name = ".50 BMG bullet"
	damage = 70
	knockdown = 50
	armour_penetration = 60

/obj/projectile/bullet/p50/penetrator
	name = ".50 BMG penetrator round"
	icon_state = "gauss"
	damage = 60
	dismemberment = 0 //It goes through you cleanly.
	knockdown = 0

//6.5mm CLIP (F90, Boomslang)

/obj/projectile/bullet/a65clip
	name = "6.5mm CLIP bullet"
	stamina = 10
	damage = 40
	armour_penetration = 50

	icon_state = "redtrac"
	light_color = COLOR_SOFT_RED
	light_range = 2

// 8x58mm caseless (SG-669)

/obj/projectile/bullet/a858
	name = "8x58mm caseless bullet"
	damage = 45
	stamina = 10
	armour_penetration = 50

// .300 Magnum

/obj/projectile/bullet/a300
	name = ".300 Magnum bullet"
	damage = 50
	stamina = 10
	armour_penetration = 40
