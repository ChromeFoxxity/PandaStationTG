/obj/structure/closet/secure_closet/donk
	name = "donk co. locker"
	icon = 'modular_panda/icons/obj/storage/closet.dmi'
	icon_state = "donk"

/obj/structure/closet/secure_closet/donk/green
	name = "donk co. locker"
	icon = 'modular_panda/icons/obj/storage/closet.dmi'
	icon_state = "donk_green"

/obj/structure/closet/secure_closet/donk/hydroponics
	name = "botanist's locker"
	req_access = list(ACCESS_HYDROPONICS)
	icon = 'modular_panda/icons/obj/storage/closet.dmi'
	icon_state = "donk_green"

/obj/structure/closet/secure_closet/donk_hydro/PopulateContents()
	..()
	new /obj/item/storage/bag/plants/portaseeder(src)
	new /obj/item/plant_analyzer(src)
	new /obj/item/radio/headset/headset_srv(src)
	new /obj/item/cultivator(src)
	new /obj/item/hatchet(src)
	new /obj/item/secateurs(src)
