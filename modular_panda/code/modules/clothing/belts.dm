/obj/item/storage/belt/utility/cybersun
	name = "cybersun utility webbing"
	desc = "Manufactured by Cybersun Industries, holds tools."
	icon = 'modular_panda/icons/obj/clothing/belts.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/belt.dmi'
	icon_state = "cybersun_toolbelt"
	worn_icon_state = "cybersun_toolbelt"
	content_overlays = FALSE

/obj/item/storage/belt/utility/cybersun/full/get_types_to_preload()
	var/list/to_preload = list() //Yes this is a pain. Yes this is the point
	to_preload += /obj/item/screwdriver
	to_preload += /obj/item/wrench
	to_preload += /obj/item/weldingtool
	to_preload += /obj/item/crowbar
	to_preload += /obj/item/wirecutters
	to_preload += /obj/item/multitool
	to_preload += /obj/item/stack/cable_coil
	return to_preload
