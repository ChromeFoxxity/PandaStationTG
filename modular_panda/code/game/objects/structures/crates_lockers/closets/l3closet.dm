/obj/structure/closet/l3closet/interdyne
	icon = 'modular_panda/icons/obj/storage/closet.dmi'
	icon_state = "bio_interdyne"

/obj/structure/closet/l3closet/interdyne/PopulateContents()
	new /obj/item/storage/bag/bio(src)
	new /obj/item/clothing/suit/bio_suit/interdyne(src)
	new /obj/item/clothing/head/bio_hood/interdyne(src)
	new /obj/item/clothing/mask/breath(src)
	new /obj/item/tank/internals/oxygen(src)
	new /obj/item/reagent_containers/syringe/antiviral(src)
