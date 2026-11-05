#define SHIPTEST_CLOUD_POSITION_DAMAGE 1
#define SHIPTEST_CLOUD_POSITION_W_BONUS 2
#define SHIPTEST_CLOUD_POSITION_BW_BONUS 3

/datum/component/pellet_cloud/shiptest/Initialize(projectile_type = /obj/item/shrapnel, magnitude = 5)
	if(!istype(parent, /obj/item/shiptest_ammo_casing))
		return COMPONENT_INCOMPATIBLE

	if(magnitude < 1)
		stack_trace("Invalid magnitude [magnitude] < 1 on pellet_cloud, parent: [parent]")
		magnitude = 1

	src.projectile_type = projectile_type
	num_pellets = magnitude

/datum/component/pellet_cloud/shiptest/RegisterWithParent()
	RegisterSignal(parent, COMSIG_PREQDELETED, PROC_REF(nullspace_parent))
	RegisterSignal(parent, COMSIG_PELLET_CLOUD_INIT, PROC_REF(create_shiptest_casing_pellets))

/datum/component/pellet_cloud/shiptest/UnregisterFromParent()
	UnregisterSignal(parent, list(COMSIG_PREQDELETED, COMSIG_PELLET_CLOUD_INIT))

/datum/component/pellet_cloud/shiptest/proc/create_shiptest_casing_pellets(obj/item/shiptest_ammo_casing/shell, atom/target, mob/living/user, fired_from, randomspread, spread, zone_override, params, distro)
	SIGNAL_HANDLER

	shooter = user
	var/turf/target_loc = get_turf(target)
	var/turf/current_loc = get_turf(user || shell)
	if(!istype(target_loc) || !istype(current_loc))
		qdel(src)
		return
	if(!zone_override && shooter)
		zone_override = shooter.zone_selected

	for(var/i in 1 to num_pellets)
		if(i > 1)
			shell.newshot()
			shell.ready_proj(target, user, SUPPRESSED_VERY, zone_override, fired_from)

		var/obj/shiptest_projectile/pellet = shell.BB
		if(!pellet)
			return

		pellet.suppressed = SUPPRESSED_VERY
		if(distro)
			if(randomspread)
				spread = round((rand() - 0.5) * distro)
			else
				spread = round((i / num_pellets - 0.5) * distro)

		RegisterSignal(pellet, COMSIG_PROJECTILE_SELF_ON_HIT, PROC_REF(shiptest_pellet_hit))
		RegisterSignals(pellet, list(COMSIG_PROJECTILE_RANGE_OUT, COMSIG_QDELETING), PROC_REF(shiptest_pellet_range))
		pellets += pellet

		if(!shell.throw_proj(target, target_loc, user, params, spread, fired_from))
			pellets -= pellet
			UnregisterSignal(pellet, list(COMSIG_QDELETING, COMSIG_PROJECTILE_RANGE_OUT, COMSIG_PROJECTILE_SELF_ON_HIT))
			terminated++
			if(terminated == num_pellets)
				finalize_shiptest()

/datum/component/pellet_cloud/shiptest/proc/shiptest_pellet_hit(obj/shiptest_projectile/proj, atom/movable/firer, atom/target, Angle, hit_zone)
	SIGNAL_HANDLER

	pellets -= proj
	terminated++
	hits++
	var/obj/item/bodypart/hit_part
	var/damage = TRUE
	if(iscarbon(target) && hit_zone)
		var/mob/living/carbon/hit_carbon = target
		hit_part = hit_carbon.get_bodypart(hit_zone)
		if(hit_part)
			target = hit_part
			if(proj.wound_bonus != CANT_WOUND)
				if(isnull(wound_info_by_part[hit_part]))
					wound_info_by_part[hit_part] = list(0, 0, 0)
				wound_info_by_part[hit_part][SHIPTEST_CLOUD_POSITION_DAMAGE] += proj.damage
				wound_info_by_part[hit_part][SHIPTEST_CLOUD_POSITION_W_BONUS] += proj.wound_bonus
				wound_info_by_part[hit_part][SHIPTEST_CLOUD_POSITION_BW_BONUS] += proj.exposed_wound_bonus
				proj.wound_bonus = CANT_WOUND
	else if(isobj(target))
		var/obj/hit_object = target
		if(hit_object.damage_deflection > proj.damage || !proj.damage)
			damage = FALSE

	LAZYADDASSOC(targets_hit[target], "hits", 1)
	LAZYSET(targets_hit[target], "damage", damage)
	if(targets_hit[target]["hits"] == 1)
		RegisterSignal(target, COMSIG_QDELETING, PROC_REF(on_target_qdel), override = TRUE)
	UnregisterSignal(proj, list(COMSIG_QDELETING, COMSIG_PROJECTILE_RANGE_OUT, COMSIG_PROJECTILE_SELF_ON_HIT))
	if(terminated == num_pellets)
		finalize_shiptest()

/datum/component/pellet_cloud/shiptest/proc/shiptest_pellet_range(obj/shiptest_projectile/proj)
	SIGNAL_HANDLER

	pellets -= proj
	terminated++
	UnregisterSignal(proj, list(COMSIG_QDELETING, COMSIG_PROJECTILE_RANGE_OUT, COMSIG_PROJECTILE_SELF_ON_HIT))
	if(terminated == num_pellets)
		finalize_shiptest()

/datum/component/pellet_cloud/shiptest/proc/finalize_shiptest()
	var/obj/shiptest_projectile/proj_type = projectile_type
	var/proj_name = initial(proj_type.name)

	for(var/atom/target in targets_hit)
		var/num_hits = targets_hit[target]["hits"]
		var/damage = targets_hit[target]["damage"]
		UnregisterSignal(target, COMSIG_QDELETING)
		var/obj/item/bodypart/hit_part
		if(isbodypart(target))
			hit_part = target
			if(!hit_part.owner)
				hit_part = null
			else
				target = hit_part.owner
				if(wound_info_by_part[hit_part] && (initial(proj_type.damage_type) == BRUTE || initial(proj_type.damage_type) == BURN))
					var/damage_dealt = wound_info_by_part[hit_part][SHIPTEST_CLOUD_POSITION_DAMAGE]
					var/w_bonus = wound_info_by_part[hit_part][SHIPTEST_CLOUD_POSITION_W_BONUS]
					var/bw_bonus = wound_info_by_part[hit_part][SHIPTEST_CLOUD_POSITION_BW_BONUS]
					var/wounding_type = (initial(proj_type.damage_type) == BRUTE) ? WOUND_BLUNT : WOUND_BURN
					var/sharpness = initial(proj_type.sharpness)
					if(wounding_type == WOUND_BLUNT && sharpness)
						if(sharpness & SHARP_EDGED)
							wounding_type = WOUND_SLASH
						else if(sharpness & SHARP_POINTY)
							wounding_type = WOUND_PIERCE

					wound_info_by_part -= hit_part
					var/mob/living/carbon/hit_carbon = target
					var/armor_factor = hit_carbon.getarmor(hit_part, initial(proj_type.armor_flag))
					armor_factor = min(ARMOR_MAX_BLOCK, armor_factor)
					if(armor_factor > 0)
						if(initial(proj_type.weak_against_armour) && armor_factor >= 0)
							armor_factor *= ARMOR_WEAKENED_MULTIPLIER
						damage_dealt *= max(0, 1 - armor_factor * 0.01)

					hit_part.painless_wound_roll(wounding_type, damage_dealt, w_bonus, bw_bonus, sharpness)

		var/limb_hit_text = ""
		if(hit_part)
			limb_hit_text = " in the [hit_part.plaintext_zone]"

		if(num_hits > 1)
			target.visible_message(span_danger("[target] is hit by [num_hits] [proj_name][plural_s(proj_name)][limb_hit_text][damage ? "" : ", without leaving a mark"]!"), null, null, COMBAT_MESSAGE_RANGE, target)
			to_chat(target, span_userdanger("You're hit by [num_hits] [proj_name]s[limb_hit_text]!"))
		else
			target.visible_message(span_danger("[target] is hit by a [proj_name][limb_hit_text][damage ? "" : ", without leaving a mark"]!"), null, null, COMBAT_MESSAGE_RANGE, target)
			to_chat(target, span_userdanger("You're hit by a [proj_name][limb_hit_text]!"))

	UnregisterSignal(parent, COMSIG_PREQDELETED)
	if(queued_delete)
		qdel(parent)
	qdel(src)

#undef SHIPTEST_CLOUD_POSITION_DAMAGE
#undef SHIPTEST_CLOUD_POSITION_W_BONUS
#undef SHIPTEST_CLOUD_POSITION_BW_BONUS
