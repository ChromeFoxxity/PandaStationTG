/obj/item/shiptest_ammo_casing/energy/laser
	projectile_type = /obj/shiptest_projectile/beam/laser
	select_name = "kill"

/obj/item/shiptest_ammo_casing/energy/laser/scatter
	projectile_type = /obj/shiptest_projectile/beam/scatter
	pellets = 10
	variance = 40
	e_cost = 1598 //12 shots upgraded cell, 6 with normal cell
	select_name = "scatter"

/obj/item/shiptest_ammo_casing/energy/laser/shotgun
	projectile_type = /obj/shiptest_projectile/beam/weak/shotgun
	pellets = 3
	variance = 25
	e_cost = 625 //16 per standard, 24 per upgraded
	select_name = "kill"

/obj/item/shiptest_ammo_casing/energy/laser/clover
	projectile_type = /obj/shiptest_projectile/beam/laser/clover
	select_name = "kill"
	e_cost = 333
	delay = 0.5 SECONDS

/obj/item/shiptest_ammo_casing/energy/laser/clover/auto
	e_cost = 277
	delay = 0.1 SECONDS

/obj/item/shiptest_ammo_casing/energy/laser/clover/smg
	projectile_type = /obj/shiptest_projectile/beam/laser/clover/smg
	e_cost = 500
	delay = 0.16 SECONDS

/obj/item/shiptest_ammo_casing/energy/laser/clover/magnum
	projectile_type = /obj/shiptest_projectile/beam/laser/clover/magnum
	e_cost = 625
	delay = 0.5 SECONDS

/obj/item/shiptest_ammo_casing/energy/laser/clover/magnum/nt
	delay = 0.35 SECONDS

/obj/item/shiptest_ammo_casing/energy/laser/clover/shotgun
	projectile_type = /obj/shiptest_projectile/beam/laser/clover/shotgun
	pellets = 5
	variance = 25
	e_cost = 1666
	select_name = "scatter"
	delay = 0.7 SECONDS

/obj/item/shiptest_ammo_casing/energy/laser/clover/highpower
	projectile_type = /obj/shiptest_projectile/beam/laser/clover/highpower
	e_cost = 666
	select_name = "kill"
	delay = 0.16 SECONDS

/obj/item/shiptest_ammo_casing/energy/laser/clover/overcharge
	projectile_type = /obj/shiptest_projectile/beam/laser/clover/overcharge
	e_cost = 10000
	select_name = "overcharge"
	delay = 2 SECONDS

/obj/item/shiptest_ammo_casing/energy/laser/clover/beam
	projectile_type = /obj/shiptest_projectile/beam/hitscan/kalix/faveleira
	e_cost = 1666
	select_name = "focus"
	fire_sound = 'modular_panda/sound/weapons/gun/laser/heavy_laser.ogg'
	delay = 1 SECONDS
