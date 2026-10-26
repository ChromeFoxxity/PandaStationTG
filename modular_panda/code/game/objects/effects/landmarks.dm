/obj/effect/landmark/navigate_destination/autoname
	name = "auto-naming navigate verb destination"
	location = null

/obj/effect/landmark/navigate_destination/autoname/Initialize(mapload)
	. = ..()
	location = "[loc.loc.name]" //This looks unsafe. Intentional. This should runtime if there are issues.

/obj/effect/landmark/start/director_of_hospitality
	name = "Director of Hospitality"
	icon_state = "Director of Hospitality"
