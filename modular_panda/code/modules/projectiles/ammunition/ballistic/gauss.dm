/obj/item/shiptest_ammo_casing/caseless/gauss
	name = "ferromagnetic pellet"
	desc = "A small metal pellet."
	caliber = "pellet"
	icon_state = "gauss-pellet"
	projectile_type = /obj/shiptest_projectile/bullet/gauss
	auto_rotate = FALSE
	firing_effect_type = /obj/effect/temp_visual/dir_setting/firing_effect/gauss
	stack_size = 22
	can_cookoff = FALSE
	var/energy_cost = 100
	var/auto_lock_range = 2

/obj/item/shiptest_ammo_casing/caseless/gauss/ready_proj(atom/target, mob/living/user, quiet, zone_override, atom/fired_from)
	. = ..()

	if(!istype(fired_from, /obj/item/shiptest_gun/ballistic/cs_gauss))
		return

	var/obj/item/shiptest_gun/ballistic/cs_gauss/gauss = fired_from

	if(!gauss.smart_lock)
		return

	var/atom/aimbot_target

	if(isliving(target))
		aimbot_target = target
	else if(isturf(target))
		aimbot_target = locate(/mob/living) in range(auto_lock_range, target)

	if(aimbot_target)
		BB.set_homing_target(aimbot_target)
		new /obj/effect/temp_visual/smartgun_target(get_turf(aimbot_target))

/obj/item/shiptest_ammo_casing/caseless/gauss/tavsha
	name = "2x15mm Tav'Sha gauss dart"
	desc = "A small magnetic dart."
	caliber = "dart"
	icon_state = "gauss-lance"
	projectile_type = /obj/shiptest_projectile/bullet/gauss/tavsha
	auto_rotate = FALSE
	stack_size = 30
	energy_cost = 0
	can_cookoff = TRUE

/obj/item/shiptest_ammo_casing/caseless/gauss/deusha
	name = "3x20mm Deu'Sha gauss dart"
	desc = "A small magnetic dart."
	caliber = "dart"
	icon_state = "gauss-lance"
	projectile_type = /obj/shiptest_projectile/bullet/gauss/deusha
	auto_rotate = FALSE
	stack_size = 30
	energy_cost = 0
	can_cookoff = TRUE
