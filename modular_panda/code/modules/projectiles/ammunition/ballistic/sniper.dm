// .50 BMG (Sniper)

/obj/item/shiptest_ammo_casing/p50
	name = ".50 BMG bullet casing"
	desc = "A .50 BMG bullet casing."
	icon_state = "big-steel"
	caliber = ".50 BMG"
	projectile_type = /obj/shiptest_projectile/bullet/p50
	stack_size = 5

/obj/item/shiptest_ammo_casing/p50/soporific
	name = ".50 BMG soporific bullet casing"
	desc = "A .50 BMG soporific bullet casing."
	bullet_skin = "rubber"
	projectile_type = /obj/shiptest_projectile/bullet/p50/soporific
	harmful = FALSE

/obj/item/shiptest_ammo_casing/p50/penetrator
	name = ".50 BMG penetrator bullet casing"
	desc = "A .50 BMG penetrator bullet casing."
	bullet_skin = "ap"
	projectile_type = /obj/shiptest_projectile/bullet/p50/penetrator

// .300 Magnum (Smile Rifle)

/obj/item/shiptest_ammo_casing/a300
	name = ".300 Magnum bullet casing"
	desc = "A .300 Magnum bullet casing."
	icon_state = "rifle-steel"
	caliber = "a300"
	projectile_type = /obj/shiptest_projectile/bullet/a300
	stack_size = 5

/obj/item/shiptest_ammo_casing/a300/trac
	name = ".300 Magnum Trac bullet casing"
	desc = "A .300 Magnum Tracker casing."
	projectile_type = /obj/shiptest_projectile/bullet/a300/trac
	bullet_skin = "trac"

//6.5mm

/obj/item/shiptest_ammo_casing/a65
	name = "6.5mm bullet casing"
	desc = "A 6.5mm bullet casing."
	icon_state = "big-brass"
	caliber = "6.5mm"
	projectile_type = /obj/shiptest_projectile/bullet/a65
	stack_size = 5
