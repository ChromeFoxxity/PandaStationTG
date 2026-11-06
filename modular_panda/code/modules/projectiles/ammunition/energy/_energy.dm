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

/obj/item/shiptest_ammo_casing/energy/laser/scatter
	projectile_type = /obj/shiptest_projectile/beam/scatter
	pellets = 10
	variance = 40
	e_cost = 1598 //12 shots upgraded cell, 6 with normal cell
	select_name = "scatter"

/obj/shiptest_projectile/beam/scatter
	name = "laser pellet"
	icon_state = "scatterlaser"
	damage = 5
	range = 7

/obj/item/shiptest_ammo_casing/energy/laser/shotgun
	projectile_type = /obj/shiptest_projectile/beam/weak/shotgun
	pellets = 3
	variance = 25
	e_cost = 625 //16 per standard, 24 per upgraded
	select_name = "kill"

/obj/shiptest_projectile/beam/weak/shotgun
	damage = 20
	armour_penetration = -10
	var/tile_dropoff = 1
	var/ap_dropoff = 5
	var/ap_dropoff_cutoff = -35

/obj/shiptest_projectile/beam/weak/shotgun/on_range() //10% loss per tile = max range of 10, generally
	..()
	if(damage > 0)
		damage -= tile_dropoff
	if(armour_penetration > ap_dropoff_cutoff)
		armour_penetration -= ap_dropoff
	if(accuracy_mod < 3)
		accuracy_mod += 0.3
	if(damage < 0 && stamina < 0)
		qdel(src)

/obj/item/shiptest_ammo_casing/energy/electrode
	projectile_type = /obj/shiptest_projectile/energy/electrode
	select_name = "stun"
	fire_sound = 'modular_panda/sound/weapons/taser.ogg'
	e_cost = 2000
	harmful = FALSE

/obj/item/shiptest_ammo_casing/energy/disabler
	projectile_type = /obj/shiptest_projectile/beam/disabler
	select_name  = "disable"
	e_cost = 500
	fire_sound = 'modular_panda/sound/weapons/taser2.ogg'
	harmful = FALSE

/obj/item/shiptest_ammo_casing/energy/disabler/hitscan
	projectile_type = /obj/shiptest_projectile/beam/hitscan/disabler
	e_cost = 500

/obj/shiptest_projectile/beam/hitscan/disabler
	name = "disabler beam"
	icon_state = "beam_disabler"
	hitscan = TRUE
	range = 12
	damage = 20
	armour_penetration = -20
	damage_type = STAMINA
	armor_flag = ENERGY
	bullet_identifier = "disabler"
	hitsound = 'modular_panda/sound/weapons/tap.ogg'
	eyeblur = 0
	tracer_type = /obj/effect/shiptest_projectile/tracer/disabler
	muzzle_type = /obj/effect/shiptest_projectile/muzzle/disabler
	impact_type = /obj/effect/shiptest_projectile/impact/disabler

	light_color = LIGHT_COLOR_BLUE

	hitscan_light_intensity = 2
	hitscan_light_range = 0.75
	hitscan_light_color_override = COLOR_LIGHT_YELLOW
	muzzle_flash_intensity = 4
	muzzle_flash_range = 2
	muzzle_flash_color_override = COLOR_LIGHT_YELLOW
	impact_light_intensity = 6
	impact_light_range = 2.5
	impact_light_color_override = COLOR_LIGHT_YELLOW

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

/obj/shiptest_projectile/beam/disabler/weak
	damage = 15

/obj/shiptest_projectile/beam/disabler/weak/negative_ap
	armour_penetration = -30
	range = 9
