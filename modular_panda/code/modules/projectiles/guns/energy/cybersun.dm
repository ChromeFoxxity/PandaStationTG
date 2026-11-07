
/obj/item/shiptest_gun/energy/cybersun
	name = "cybersun gun master type"
	desc = ""
	icon = 'modular_panda/icons/obj/guns/manufacturer/cybersun/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/cybersun/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/cybersun/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/cybersun/onmob.dmi'

	icon_state = "troubleshooter"

	ammo_type = list()

	vary_fire_sound = FALSE

	default_ammo_type = /obj/item/stock_parts/power_store/cell/gun/cybersun
	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/ionization)

	allowed_ammo_types = list(
		/obj/item/stock_parts/power_store/cell/gun/cybersun,
		/obj/item/stock_parts/power_store/cell/gun/cybersun/heavy,
		/obj/item/stock_parts/power_store/cell/gun/cybersun/mini,
		/obj/item/stock_parts/power_store/cell/gun/cybersun/empty,
		/obj/item/stock_parts/power_store/cell/gun/cybersun/heavy/empty,
		/obj/item/stock_parts/power_store/cell/gun/cybersun/mini/empty,
	)

	muzzleflash_iconstate = null
	light_color = COLOR_MAROON

	modifystate = FALSE
	ammo_x_offset = 2
	dual_wield_spread = 60

	w_class = WEIGHT_CLASS_NORMAL

	abstract_type = /obj/item/shiptest_gun/energy/cybersun

/obj/item/shiptest_gun/energy/cybersun/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_CYBERSUN)

//ionization pistol
/obj/item/shiptest_gun/energy/cybersun/troubleshooter
	name = "\improper IT22 Troubleshooter"
	desc = "A compact energy pistol functioning off ionization principles. A low-powered laser provides a path of least resistance for a low-intensity plasma bolt to travel through. Typically issued to Cybersun Industries infiltration units aboard Nanotrasen vessels."

	icon_state = "troubleshooter"
	inhand_icon_state = "small"

	w_class = WEIGHT_CLASS_TINY
	weapon_weight = WEAPON_LIGHT

	default_ammo_type = /obj/item/stock_parts/power_store/cell/gun/cybersun/mini
	allowed_ammo_types = list(
		/obj/item/stock_parts/power_store/cell/gun/cybersun/mini,
	)
	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/ionization)

	shaded_charge = FALSE
	modifystate = FALSE

	min_recoil = 0
	recoil = 0.1

	spread = -2

	muzzleflash_iconstate = ""

/obj/item/shiptest_gun/energy/cybersun/troubleshooter/empty_cell
	spawn_no_ammo = TRUE

/obj/item/shiptest_gun/energy/cybersun/troubleshooter/lensman
	name = "\improper Lensman-5"
	desc = "A high-powered conversion of the IT22 Troubleshooter typically developed and used by military organizations in the frontier. Despite Cybersun Industries not manufacturing them officially, an ever-growing amount seems to exist."

	icon_state = "lensman"
	inhand_icon_state = "lensman"

	default_ammo_type = /obj/item/stock_parts/power_store/cell/gun/cybersun/mini
	allowed_ammo_types = list(
		/obj/item/stock_parts/power_store/cell/gun/cybersun/mini,
	)
	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/ionization/sniper)

	w_class = WEIGHT_CLASS_SMALL

	zoom_amt = DMR_ZOOM
	zoom_out_amt = 0

	recoil = 1

	spread = 0

	muzzleflash_iconstate = ""

/obj/item/shiptest_gun/energy/cybersun/troubleshooter/lensman/empty_cell
	spawn_no_ammo = TRUE

/obj/item/shiptest_gun/energy/cybersun/galvanizer
	name = "\improper IT34 Galvanizer"
	desc = "A marksman rifle functioning off ionization principles. A low powered laser makes a clear path for a high intensity plasma bolt to near-instantly travel. The integrated scope allows for accurate fire at long distances."

	icon_state = "galvanizer"
	inhand_icon_state = "galvanizer"

	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/ionization/sniper)

	default_ammo_type = /obj/item/stock_parts/power_store/cell/gun/cybersun

	allowed_ammo_types = list(
		/obj/item/stock_parts/power_store/cell/gun/cybersun,
		/obj/item/stock_parts/power_store/cell/gun/cybersun/heavy,
		/obj/item/stock_parts/power_store/cell/gun/cybersun/empty,
		/obj/item/stock_parts/power_store/cell/gun/cybersun/heavy/empty,
	)

	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_MEDIUM

	zoomable = TRUE
	zoom_amt = DMR_ZOOM

	fire_delay = 0.8 SECONDS

	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE

	spread = 0

	min_recoil = 0
	min_recoil_aimed = 0
	recoil = 0.5

/obj/item/shiptest_gun/energy/cybersun/anode
	name = "\improper IT41 Anode"
	desc = "Cybersun Industries's attempt at replacing Sidewinder in syndicate armories, the Anode is an ionization PDW, utilizing a heavier 'painter' light to allow for the creation of multiple armor-penetrating plasma beams per second."

	icon_state = "anode"
	inhand_icon_state = "anode"

	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/ionization/pdw)

	default_ammo_type = /obj/item/stock_parts/power_store/cell/gun/cybersun

	allowed_ammo_types = list(
		/obj/item/stock_parts/power_store/cell/gun/cybersun,
		/obj/item/stock_parts/power_store/cell/gun/cybersun/mini,
		/obj/item/stock_parts/power_store/cell/gun/cybersun/empty,
		/obj/item/stock_parts/power_store/cell/gun/cybersun/mini/empty,
	)

	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_MEDIUM

	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE

	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_SEMIAUTO

	spread = 4

	min_recoil = 0
	min_recoil_aimed = 0
	recoil = 0.2

//parent type for lorentz guns since they have snowflake behavior
/obj/item/shiptest_gun/energy/cybersun/lorentz
	name = "cybersun lawrence gun supertype"
	desc = "hey if you guys see this can you tell my mom i'm like really busy right now so i cant watch for it"

	//ammo_type = list(/obj/item/shiptest_ammo_casing/energy/lorentz, /obj/item/shiptest_ammo_casing/energy/flare)

	latch_icon = 'modular_panda/icons/obj/guns/manufacturer/cybersun/48x32.dmi'
	latch_icon_state = "opportunist"

	always_show_latch = TRUE

	min_recoil = 0.1
	min_recoil_aimed = 0

	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/lorentz, /obj/item/shiptest_ammo_casing/energy/flare)

	abstract_type = /obj/item/shiptest_gun/energy/cybersun/lorentz

/obj/item/shiptest_gun/energy/cybersun/lorentz/process_fire(atom/target, mob/living/user, message, params, zone_override, bonus_spread)
	var/flaring = FALSE
	if(!latch_closed)
		return FALSE
	if(istype(chambered, /obj/item/shiptest_ammo_casing/energy/flare))
		flaring = TRUE
		var/obj/shiptest_projectile/beam/flare/bang = chambered.BB
		var/cell_charge = cell.percent()/100
		if(cell_charge < 0.5)
			return FALSE
		bang.damage = max(120, bang.damage * cell_charge * cell.rating)
		fire_sound_volume = 150 * cell_charge
		bang.range = round(bang.range * cell_charge)
		recoil = recoil * 2
	. = ..()
	if(flaring)
		chambered = null
		recoil = recoil / 2
		explosive_cell_eject(user)

/obj/item/shiptest_gun/energy/cybersun/lorentz/proc/explosive_cell_eject(atom/shooter)
	if(!cell)
		return

	var/obj/item/stock_parts/power_store/cell/gun/ejected_cell = cell

	ejected_cell.charge = 0
	ejected_cell.rigged = TRUE

	playsound(loc, 'sound/effects/empulse.ogg', 50, TRUE)

	// Clear the gun's reference before moving the cell.
	cell = null
	latch_closed = FALSE

	// Create temporary smoke particles.
	var/obj/effect/abstract/particle_holder/smoke = new(ejected_cell, /particles/smoke/burning/cell_smoke)
	QDEL_IN(smoke, 10 SECONDS)

	// Eject the cell.
	ejected_cell.forceMove(drop_location())
	ejected_cell.pixel_x = rand(-4, 4)
	ejected_cell.pixel_y = rand(-4, 4)
	ejected_cell.pixel_z = 8

	var/angle_of_movement
	if(!isnull(shooter))
		angle_of_movement = (rand(-3000, 3000) / 100) + dir2angle(turn(shooter.dir, 180))
	else
		angle_of_movement = rand(-3000, 3000) / 100

	ejected_cell.AddComponent(/datum/component/movable_physics, _horizontal_velocity = rand(400, 450) / 100, _vertical_velocity = rand(400, 450) / 100, _horizontal_friction = rand(20, 24) / 100, _z_gravity = PHYSICS_GRAV_STANDARD, _z_floor = 0, _angle_of_movement = angle_of_movement, _bounce_sound = 'modular_panda/sound/weapons/gun/general/bulletcasing_shotgun_bounce.ogg')

	ejected_cell.update_appearance()
	update_appearance()

//flare pistol
/obj/item/shiptest_gun/energy/cybersun/lorentz/opportunist
	name = "\improper LS209 Opportunist"
	desc = "A bulky brute of revolver intended to neutralize any threat in close range. Lorentz mode rapidly ionizes air and fills it with plasma to melt through targets, while plasma flare dumps the entire plasma cell into one ferocious shot."

	w_class = WEIGHT_CLASS_NORMAL
	icon_state = "opportunist"
	inhand_icon_state = "opportunist"
	latch_icon_state = "opportunist"

	recoil = 1

	default_ammo_type = /obj/item/stock_parts/power_store/cell/gun/cybersun
	allowed_ammo_types = list(
		/obj/item/stock_parts/power_store/cell/gun/cybersun,
		/obj/item/stock_parts/power_store/cell/gun/cybersun/empty,
		/obj/item/stock_parts/power_store/cell/gun/cybersun/mini,
		/obj/item/stock_parts/power_store/cell/gun/cybersun/mini/empty,
	)

	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/lorentz, /obj/item/shiptest_ammo_casing/energy/flare)

/obj/item/shiptest_gun/energy/cybersun/lorentz/opportunist/empty_cell
	spawn_no_ammo = TRUE

//flare shotgun
/obj/item/shiptest_gun/energy/cybersun/lorentz/impactor
	name = "\improper LS126 Impactor"
	desc = "A divisor lens makes the LS126 Impactor into a proper shotgun, allowing it to cast multiple Lorentz beams at a time. While not as powerful as an individual beam can be, combined the massed impact causes much more damage to a target. A close quarters combat tool to be reckoned with. "

	icon_state = "impactor"
	inhand_icon_state = "impactor"

	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/lorentz/scatter, /obj/item/shiptest_ammo_casing/energy/flare)

	default_ammo_type = /obj/item/stock_parts/power_store/cell/gun/cybersun

	allowed_ammo_types = list(
		/obj/item/stock_parts/power_store/cell/gun/cybersun,
		/obj/item/stock_parts/power_store/cell/gun/cybersun/heavy,
		/obj/item/stock_parts/power_store/cell/gun/cybersun/empty,
		/obj/item/stock_parts/power_store/cell/gun/cybersun/heavy/empty,
	)

	latch_icon = 'modular_panda/icons/obj/guns/manufacturer/cybersun/48x32.dmi'
	latch_icon_state = "impactor"

	weapon_weight = WEAPON_LIGHT
	w_class = WEIGHT_CLASS_BULKY

	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE

	default_firemode = FIREMODE_SEMIAUTO

	recoil = 2

/obj/item/shiptest_gun/energy/cybersun/lorentz/impactor/empty_cell
	spawn_no_ammo = TRUE

/obj/item/shiptest_gun/energy/cybersun/lorentz/catalyzer
	name = "\improper LS451 Catalyzer"
	desc = "Fitting into the role of light machine gun, the LS451 Catalyzer is the heaviest weapon currently sold by Cybersun Industries. An efficient conversion lens allows for the rifle to put down a consistent rain of Lorentz Bolts, or incinerate an opponent with a plasmaflare."

	base_icon_state = "catalyzer"
	icon_state = "catalyzer"
	inhand_icon_state = "catalyzer"
	latch_icon_state = "catalyzer"

	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE

	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/lorentz/mg, /obj/item/shiptest_ammo_casing/energy/flare)

	default_ammo_type = /obj/item/stock_parts/power_store/cell/gun/cybersun/heavy

	allowed_ammo_types = list(
		/obj/item/stock_parts/power_store/cell/gun/cybersun/heavy,
		/obj/item/stock_parts/power_store/cell/gun/cybersun/heavy/empty
	)

	zoom_amt = RIFLE_ZOOM

	w_class = WEIGHT_CLASS_HUGE
	weapon_weight = WEAPON_HEAVY

	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_SEMIAUTO

	recoil = 1.5

	spread = 5

/obj/item/shiptest_gun/energy/cybersun/lorentz/catalyzer/empty_cell
	spawn_no_ammo = TRUE

//fuck your shit smooth off son
/obj/item/shiptest_gun/energy/cybersun/lorentz/magnetron
	name = "\improper LS2K Lorentz Magnetron Annihiliation Rifle"
	desc = "Held to be the largest that Lorentz Force based plasma rifles can be made while still being (theoretically) man-portable, the LS2K is a massive assembly centered around a massive plasma cell and supercapacitors. A charge-up is required to fire it in either operation mode. More typically found mounted on G/Carriers under use by Cybersun Troubleshooters, although the occasional piece is deployed in the field for close-quarters anti-armor. Flare mode is known to puncture hulls when fired from a fresh cell."

	icon_state = "magnetron"
	inhand_icon_state = "magnetron"

	latch_icon_state = "latch"
	latch_icon = 'modular_panda/icons/obj/guns/cell_latch.dmi'

	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/lorentz/heavy, /obj/item/shiptest_ammo_casing/energy/flare/heavy)

	default_ammo_type = /obj/item/stock_parts/power_store/cell/gun/cybersun/heavy

	allowed_ammo_types = list(
		/obj/item/stock_parts/power_store/cell/gun/cybersun/heavy,
		/obj/item/stock_parts/power_store/cell/gun/cybersun/heavy/empty,
	)

	always_show_latch = FALSE

	slowdown = 1
	drag_slowdown = 1

	weapon_weight = WEAPON_VERY_HEAVY
	w_class = WEIGHT_CLASS_BULKY

	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE

	gun_firemodes = list(FIREMODE_AIMED)
	default_firemode = FIREMODE_AIMED


	recoil = 2

	spread = 0

	aiming_time = 50
	aiming_time_fire_threshold = 10

	fire_sound_volume = 100

	zoomable = TRUE
	zoom_amt = 10 //Long range, enough to see in front of you, but no tiles behind you.
	zoom_out_amt = 5
