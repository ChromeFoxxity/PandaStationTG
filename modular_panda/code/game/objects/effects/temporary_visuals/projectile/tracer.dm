/proc/generate_tracer_between_points(datum/point/starting, datum/point/ending, beam_type, color, qdel_in = 5, light_range = 2, light_color_override, light_intensity = 1, instance_key)		//Do not pass z-crossing points as that will not be properly (and likely will never be properly until it's absolutely needed) supported!
	if(!istype(starting) || !istype(ending) || !ispath(beam_type))
		return
	var/datum/point/midpoint = point_midpoint_points(starting, ending)
	var/obj/effect/shiptest_projectile/tracer/PB = new beam_type
	if(isnull(light_color_override))
		light_color_override = color
	PB.apply_vars(angle_between_points(starting, ending), midpoint.return_px(), midpoint.return_py(), color, pixel_length_between_points(starting, ending) / world.icon_size, midpoint.return_turf(), 0)
	. = PB
	if(light_range > 0 && light_intensity > 0)
		var/list/turf/line = get_line(starting.return_turf(), ending.return_turf())
		tracing_line:
			for(var/turf/T in line)
				for(var/obj/effect/shiptest_projectile_lighting/PL in T)
					if(PL.owner == instance_key)
						continue tracing_line
				QDEL_IN(new /obj/effect/shiptest_projectile_lighting(T, light_color_override, light_range, light_intensity, instance_key), qdel_in > 0 ? qdel_in : 5)
		line = null
	if(qdel_in)
		QDEL_IN(PB, qdel_in)

/obj/effect/shiptest_projectile/tracer
	name = "beam"
	icon = 'modular_panda/icons/obj/projectiles_tracer.dmi'

/obj/effect/shiptest_projectile/tracer/laser
	name = "laser"
	icon_state = "beam"

/obj/effect/shiptest_projectile/tracer/laser/blue
	icon_state = "beam_blue"

/obj/effect/shiptest_projectile/tracer/laser/emitter
	name = "emitter beam"
	icon_state = "emitter"

/obj/effect/shiptest_projectile/tracer/disabler
	name = "disabler"
	icon_state = "beam_disabler"

/obj/effect/shiptest_projectile/tracer/disabler_heavy
	name = "disabler"
	icon_state = "beam_disabler_heavy"

/obj/effect/shiptest_projectile/tracer/xray
	name = "\improper X-ray laser"
	icon_state = "xray"

/obj/effect/shiptest_projectile/tracer/pulse
	name = "pulse laser"
	icon_state = "u_laser"

/obj/effect/shiptest_projectile/tracer/plasma_cutter
	name = "plasma blast"
	icon_state = "plasmacutter"

/obj/effect/shiptest_projectile/tracer/stun
	name = "stun beam"
	icon_state = "stun"

/obj/effect/shiptest_projectile/tracer/heavy_laser
	name = "heavy laser"
	icon_state = "beam_heavy"

//BEAM RIFLE
/obj/effect/shiptest_projectile/tracer/tracer/beam_rifle
	icon_state = "tracer_beam"

/obj/effect/shiptest_projectile/tracer/tracer/aiming
	icon_state = "pixelbeam_greyscale"
	plane = ABOVE_LIGHTING_PLANE

/obj/effect/shiptest_projectile/tracer/wormhole
	icon_state = "wormhole_g"

/obj/effect/shiptest_projectile/tracer/gauss
	icon_state = "hc_gauss"

//Cybersun
/obj/effect/shiptest_projectile/tracer/ionization
	icon_state = "ionization"

/obj/effect/shiptest_projectile/tracer/ionization/sniper
	icon_state = "ionization_sniper"

/obj/effect/shiptest_projectile/tracer/lorentz
	icon_state = "lorentz"

/obj/effect/shiptest_projectile/tracer/flare
	icon_state = "flare"

//kalixcian civilian//
/obj/effect/shiptest_projectile/tracer/kalix
	icon_state = "beam_kalix"

/obj/effect/shiptest_projectile/tracer/kalix_rifle
	icon_state = "beam_kalix_rifle"

/obj/effect/shiptest_projectile/tracer/kalix_hunt
	icon_state = "beam_kalix_hunt"

/obj/effect/shiptest_projectile/tracer/nock
	icon_state = "beam_kalix_nock"

//pgf military//
/obj/effect/shiptest_projectile/tracer/pgf ///currently unused, for a theoretical military pistol
	icon_state = "beam_pgf"

/obj/effect/shiptest_projectile/tracer/pgf/rifle
	icon_state = "beam_pgf_rifle"

/obj/effect/shiptest_projectile/tracer/pgf/pdw
	icon_state = "beam_pgf_pdw"

/obj/effect/shiptest_projectile/tracer/pgf/assault
	icon_state = "beam_pgf_assault"

/obj/effect/shiptest_projectile/tracer/pgf/sniper
	icon_state = "beam_pgf_sniper"
