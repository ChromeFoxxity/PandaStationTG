/obj/item/shiptest_ammo_casing/energy/disabler
	projectile_type = /obj/shiptest_projectile/beam/disabler
	select_name  = "disable"
	e_cost = 500
	fire_sound = 'modular_panda/sound/weapons/taser2.ogg'
	harmful = FALSE

/obj/item/shiptest_ammo_casing/energy/disabler/clover
	projectile_type = /obj/shiptest_projectile/beam/disabler/clover/weak
	select_name = "disable"
	e_cost = 333
	harmful = FALSE
	pass_flags = PASSTABLE | PASSGRILLE

/obj/item/shiptest_ammo_casing/energy/disabler/clover/smg
	e_cost = 500
	delay = 0.16 SECONDS

/obj/item/shiptest_ammo_casing/energy/disabler/clover/magnum
	projectile_type = /obj/shiptest_projectile/beam/disabler/clover
	e_cost = 625
	delay = 0.5 SECONDS
	harmful = FALSE

/obj/item/shiptest_ammo_casing/energy/disabler/clover/magnum/nt
	delay = 0.35 SECONDS

/obj/item/shiptest_ammo_casing/energy/disabler/hitscan
	projectile_type = /obj/shiptest_projectile/beam/hitscan/disabler
	e_cost = 500

/obj/item/shiptest_ammo_casing/energy/disabler/hitscan/kalix/nock
	projectile_type = /obj/shiptest_projectile/beam/hitscan/disabler
	fire_sound = 'modular_panda/sound/weapons/taser2.ogg'
	e_cost = 312 //10 bursts per cell
	select_name = "disable"

/obj/item/shiptest_ammo_casing/energy/disabler/scatter
	pellets = 3
	variance = 15
	select_name = "scatter"
	fire_sound = 'modular_panda/sound/weapons/taser.ogg'

/obj/item/shiptest_ammo_casing/energy/disabler/scatter/shotgun
	projectile_type = /obj/shiptest_projectile/beam/disabler/weak/negative_ap
	pellets = 4
	variance = 25
	select_name = "disable"
	e_cost = 1666
