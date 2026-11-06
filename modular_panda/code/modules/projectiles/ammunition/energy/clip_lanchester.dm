// Adapted from Shiptest's clip_lanchester energy ammunition.

/obj/item/ammo_casing/energy/kalix
	name = "focused energy lens"
	projectile_type = /obj/projectile/beam/laser/kalix
	fire_sound = 'sound/items/weapons/laser.ogg'
	e_cost = 500
	delay = 1 SECONDS
	select_name = "lethal"

/obj/item/ammo_casing/energy/kalix/clip
	select_name = "focus"

/obj/item/ammo_casing/energy/laser/eoehoma/e50/clip
	name = "E-50 energy lens"
	projectile_type = /obj/projectile/beam/emitter/hitscan/clip
	e_cost = 6250
	delay = 0.6 SECONDS

/obj/item/ammo_casing/energy/laser/clover
	projectile_type = /obj/projectile/beam/laser/clover
	select_name = "kill"
	e_cost = 333
	delay = 0.5 SECONDS

/obj/item/ammo_casing/energy/laser/clover/auto
	e_cost = 277
	delay = 0.1 SECONDS

/obj/item/ammo_casing/energy/laser/clover/smg
	projectile_type = /obj/projectile/beam/laser/clover/smg
	e_cost = 500
	delay = 0.16 SECONDS

/obj/item/ammo_casing/energy/laser/clover/magnum
	projectile_type = /obj/projectile/beam/laser/clover/magnum
	e_cost = 625
	delay = 0.5 SECONDS

/obj/item/ammo_casing/energy/laser/clover/magnum/clip
	delay = 0.35 SECONDS

/obj/item/ammo_casing/energy/laser/clover/shotgun
	projectile_type = /obj/projectile/beam/laser/clover/shotgun
	pellets = 5
	variance = 25
	e_cost = 1666
	select_name = "scatter"
	delay = 0.7 SECONDS

/obj/item/ammo_casing/energy/laser/clover/highpower
	projectile_type = /obj/projectile/beam/laser/clover/highpower
	e_cost = 666
	select_name = "kill"
	delay = 0.16 SECONDS

/obj/item/ammo_casing/energy/laser/clover/overcharge
	projectile_type = /obj/projectile/beam/laser/clover/overcharge
	e_cost = 10000
	select_name = "overcharge"
	delay = 2 SECONDS

/obj/item/ammo_casing/energy/laser/clover/beam
	projectile_type = /obj/projectile/beam/laser/kalix/faveleira
	e_cost = 1666
	select_name = "focus"
	fire_sound = 'sound/items/weapons/laser.ogg'
	delay = 1 SECONDS

/obj/item/ammo_casing/energy/disabler/clover
	projectile_type = /obj/projectile/beam/disabler/clover/weak
	select_name = "disable"
	e_cost = 333
	harmful = FALSE
	pass_flags = PASSTABLE | PASSGRILLE

/obj/item/ammo_casing/energy/disabler/clover/smg
	e_cost = 500
	delay = 0.16 SECONDS

/obj/item/ammo_casing/energy/disabler/clover/magnum
	projectile_type = /obj/projectile/beam/disabler/clover
	e_cost = 625
	delay = 0.5 SECONDS
	harmful = FALSE

/obj/item/ammo_casing/energy/disabler/clover/magnum/clip
	delay = 0.35 SECONDS
