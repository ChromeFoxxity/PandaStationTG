/obj/item/shiptest_ammo_casing/energy
	name = "energy weapon lens"
	desc = "The part of the gun that makes the laser go pew."
	caliber = "energy"
	projectile_type = /obj/shiptest_projectile/energy

	/// The amount of energy required to create this shot.
	var/e_cost = 1000

	/// The name displayed when this firing mode is selected.
	var/select_name = "energy"

	resistance_flags = INDESTRUCTIBLE
	fire_sound = 'modular_panda/sound/weapons/gun/laser/sharplite-fire.ogg'
	heavy_metal = FALSE
	delay = 5

/obj/item/shiptest_ammo_casing/energy/kalix
	projectile_type = /obj/shiptest_projectile/beam/hitscan/kalix
	fire_sound = 'modular_panda/sound/weapons/gun/energy/kalixsmg.ogg'
	e_cost = 500 //25 shots per cell
	delay = 1
	select_name = "lethal"

/obj/item/shiptest_ammo_casing/energy/kalix/nt
	select_name = "focus"

/obj/item/shiptest_ammo_casing/energy/kalix/nock
	projectile_type = /obj/shiptest_projectile/beam/hitscan/kalix/nock
	fire_sound = 'modular_panda/sound/weapons/gun/energy/kalixsmg.ogg'
	e_cost = 312 //10 bursts per cell
	select_name = "lethal"

/obj/item/shiptest_ammo_casing/energy/electrode
	projectile_type = /obj/shiptest_projectile/energy/electrode
	select_name = "stun"
	fire_sound = 'modular_panda/sound/weapons/taser.ogg'
	e_cost = 2000
	harmful = FALSE
