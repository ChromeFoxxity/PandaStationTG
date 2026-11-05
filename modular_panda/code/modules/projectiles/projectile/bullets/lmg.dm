// C3D (Borgs)

/obj/shiptest_projectile/bullet/c3d
	damage = 20

/obj/shiptest_projectile/bullet/ctac
	damage = 40
	armour_penetration = 35
	speed = 2.5

/obj/shiptest_projectile/bullet/csour
	damage = 0
	stamina = 60
	jitter = 30 SECONDS
	stutter = 10
	slur = 10
	knockdown = 5
	armour_penetration = 30

// Mech LMG

/obj/shiptest_projectile/bullet/lmg
	damage = 25
	armour_penetration = 40

// Mech FNX-99

/obj/shiptest_projectile/bullet/incendiary/fnx99
	damage = 25

// Mech Railgun

/obj/shiptest_projectile/bullet/p50/penetrator/sabot
	name = "Iron-tungsten rod"
	icon_state = "sabot"
	projectile_piercing = NONE // Piercing was requested to be disabled
	projectile_phasing = NONE
	var/anti_armour_damage = 50
	ricochet_chance = 0 // Superheated tungsten rod - I'd like to imagine it's impossible for it to ricochet
	speed = 4 // Railgun, go ludicrously fast to make up for lost piercing

/obj/shiptest_projectile/bullet/p50/penetrator/sabot/on_hit(atom/target, blocked = FALSE)
	..()
	if(ismecha(target))
		var/obj/vehicle/sealed/mecha/M = target
		M.take_damage(anti_armour_damage)
		// Mechs take extra damage
	return BULLET_ACT_HIT

// Turrets

/obj/shiptest_projectile/bullet/manned_turret
	damage = 30
	armour_penetration = 40

/obj/shiptest_projectile/bullet/manned_turret/hmg
	icon_state = "redtrac"
	armour_penetration = 40

/obj/shiptest_projectile/bullet/syndicate_turret
	damage = 20
	armour_penetration = 20
