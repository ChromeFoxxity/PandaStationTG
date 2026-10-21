/// Automatically generates all subtypes for a decal with the given path.
#define TILE_DECAL_SUBTYPE_HELPER(path)\
##path/opposingcorners {\
	icon_state = "tile_opposing_corners";\
}\
##path/half {\
	icon_state = "tile_half";\
}\
##path/half/contrasted {\
	icon_state = "tile_half_contrasted";\
}\
##path/anticorner {\
	icon_state = "tile_anticorner";\
}\
##path/anticorner/contrasted {\
	icon_state = "tile_anticorner_contrasted";\
}\
##path/fourcorners {\
	icon_state = "tile_fourcorners";\
}\
##path/full {\
	icon_state = "tile_full";\
}\
##path/diagonal_centre {\
	icon_state = "diagonal_centre";\
}\
##path/diagonal_edge {\
	icon_state = "diagonal_edge";\
}\
##path/tram {\
	icon_state = "tile_tram";\
}

/// Automatically generates all trimlines for a decal with the given path.
#define TRIMLINE_SUBTYPE_HELPER(path)\
##path/line {\
	icon_state = "trimline";\
}\
##path/corner {\
	icon_state = "trimline_corner";\
}\
##path/end {\
	icon_state = "trimline_end";\
}\
##path/arrow_cw {\
	icon_state = "trimline_arrow_cw";\
}\
##path/arrow_ccw {\
	icon_state = "trimline_arrow_ccw";\
}\
##path/warning {\
	icon_state = "trimline_warn";\
}\
##path/tram {\
	icon_state = "trimline_tram";\
}\
##path/mid_joiner {\
	icon_state = "trimline_mid";\
}\
##path/corner_long {\
	icon_state = "trimline_corner_long";\
}\
##path/corner_long_alt {\
	icon_state = "trimline_corner_long_alt";\
}\
##path/filled {\
	icon_state = "trimline_box_fill";\
}\
##path/filled/line {\
	icon_state = "trimline_fill";\
}\
##path/filled/corner {\
	icon_state = "trimline_corner_fill";\
}\
##path/filled/end {\
	icon_state = "trimline_end_fill";\
}\
##path/filled/arrow_cw {\
	icon_state = "trimline_arrow_cw_fill";\
}\
##path/filled/arrow_ccw {\
	icon_state = "trimline_arrow_ccw_fill";\
}\
##path/filled/warning {\
	icon_state = "trimline_warn_fill";\
}\
##path/filled/warning/corner {\
	icon_state = "trimline_corner_warn_fill";\
}\
##path/filled/mid_joiner {\
	icon_state = "trimline_mid_fill";\
}\
##path/filled/shrink_cw {\
	icon_state = "trimline_shrink_cw";\
}\
##path/filled/shrink_ccw {\
	icon_state = "trimline_shrink_ccw";\
}

/obj/effect/turf_decal/tile/syndicate
	name = "BASE VARIABLE DONT USE"

/obj/effect/turf_decal/trimline/syndicate
	name = "BASE VARIABLE DONT USE"

/// Interdyne tiles
/obj/effect/turf_decal/tile/syndicate/interdyne
	name = "interdyne tile decal"
	color = "#8846B7"

TILE_DECAL_SUBTYPE_HELPER(/obj/effect/turf_decal/tile/syndicate/interdyne)

/// Interdyne trimlines
/obj/effect/turf_decal/trimline/syndicate/interdyne
	name = "interdyne trimline decal"
	color = "#8846B7"

TRIMLINE_SUBTYPE_HELPER(/obj/effect/turf_decal/trimline/syndicate/interdyne)

/// Cybersun tiles
/obj/effect/turf_decal/tile/syndicate/cybersun
	name = "cybersun tile decal"
	color = "#F07828"

TILE_DECAL_SUBTYPE_HELPER(/obj/effect/turf_decal/tile/syndicate/cybersun)

/// Cybersun trimlines
/obj/effect/turf_decal/trimline/syndicate/cybersun
	name = "cybersun trimline decal"
	color = "#F07828"

TRIMLINE_SUBTYPE_HELPER(/obj/effect/turf_decal/trimline/syndicate/cybersun)

/// Waffle tiles
/obj/effect/turf_decal/tile/syndicate/waffle_blue
	name = "waffle blue tile decal"
	color = "#03417E"

TILE_DECAL_SUBTYPE_HELPER(/obj/effect/turf_decal/tile/syndicate/waffle_blue)

/// Waffle trimlines
/obj/effect/turf_decal/trimline/syndicate/waffle_blue
	name = "waffle blue trimline decal"
	color = "#03417E"

TRIMLINE_SUBTYPE_HELPER(/obj/effect/turf_decal/trimline/syndicate/waffle_blue)

/// Waffle tiles
/obj/effect/turf_decal/tile/syndicate/waffle_yellow
	name = "waffle yellow tile decal"
	color = "#FFC629"

TILE_DECAL_SUBTYPE_HELPER(/obj/effect/turf_decal/tile/syndicate/waffle_yellow)

/// Waffle trimlines
/obj/effect/turf_decal/trimline/syndicate/waffle_yellow
	name = "waffle yellow trimline decal"
	color = "#FFC629"

TRIMLINE_SUBTYPE_HELPER(/obj/effect/turf_decal/trimline/syndicate/waffle_yellow)

/// Donk tiles
/obj/effect/turf_decal/tile/syndicate/donk_red
	name = "donk red tile decal"
	color = "#7c1c2c"

TILE_DECAL_SUBTYPE_HELPER(/obj/effect/turf_decal/tile/syndicate/donk_red)

/// Donk trimlines
/obj/effect/turf_decal/trimline/syndicate/donk_red
	name = "donk red trimline decal"
	color = "#7c1c2c"

TRIMLINE_SUBTYPE_HELPER(/obj/effect/turf_decal/trimline/syndicate/donk_red)

/// Donk tiles
/obj/effect/turf_decal/tile/syndicate/donk_green
	name = "donk green tile decal"
	color = "#406642"

TILE_DECAL_SUBTYPE_HELPER(/obj/effect/turf_decal/tile/syndicate/donk_green)

/// Donk trimlines
/obj/effect/turf_decal/trimline/syndicate/donk_green
	name = "donk green trimline decal"
	color = "#406642"

TRIMLINE_SUBTYPE_HELPER(/obj/effect/turf_decal/trimline/syndicate/donk_green)

#undef TRIMLINE_SUBTYPE_HELPER
