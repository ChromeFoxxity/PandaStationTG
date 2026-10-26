/obj/item/clothing/suit/hooded/wintercoat/donk
	name = "donk co. staff winter coat"
	desc = "A Donk Corporation red and yellow winter coat that is used by their culinary staff. It smells of donk pockets!"
	icon = 'modular_panda/icons/obj/clothing/suits/wintercoat.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/suits/wintercoat.dmi'
	icon_state = "coatdonk"
	allowed = /obj/item/clothing/suit/apron/chef/donk::allowed
	hoodtype = /obj/item/clothing/head/hooded/winterhood/donk

/obj/item/clothing/head/hooded/winterhood/donk
	desc = "A Donk Corporation red winter hood that is used by their culinary staff. It smells of donk pockets!"
	icon = 'modular_panda/icons/obj/clothing/head/winterhood.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/head/winterhood.dmi'
	icon_state = "hood_donk"

/obj/item/clothing/suit/hooded/wintercoat/donk/green
	name = "donk co. botanist winter coat"
	desc = "A Donk Corporation green and yellow winter coat that is used by their hydroponic staff. It smells of dirt and vegetables, gross!"
	icon_state = "coatdonkgreen"
	allowed = /obj/item/clothing/suit/apron::allowed
	hoodtype = /obj/item/clothing/head/hooded/winterhood/donk/green

/obj/item/clothing/head/hooded/winterhood/donk/green
	desc = "A Donk Corporation green winter hood that is used by their hydroponic staff. It smells of dirt and vegetables, gross!"
	icon_state = "hood_donkgreen"

/obj/item/clothing/suit/hooded/wintercoat/donk/janitor
	name = "donk co. janitor winter coat"
	desc = "A Donk Corporation red winter coat with yellow trims that is used by their custodian staff. It smells of space cleaner and donk pockets."
	icon_state = "coatdonkjanitor"
	inhand_icon_state = null
	allowed = list(
		/obj/item/access_key,
		/obj/item/grenade/chem_grenade,
		/obj/item/holosign_creator,
		/obj/item/key/janitor,
		/obj/item/reagent_containers/cup/beaker,
		/obj/item/reagent_containers/cup/bottle,
		/obj/item/reagent_containers/cup/tube,
		/obj/item/reagent_containers/spray,
	)
	hoodtype = /obj/item/clothing/head/hooded/winterhood/donk/janitor

/obj/item/clothing/head/hooded/winterhood/donk/janitor
	desc = "A Donk Corporation red and yellow winter hood that is used by their custodian staff. It smells of space cleaner and donk pockets."
	icon_state = "hood_donkjanitor"

/obj/item/clothing/suit/hooded/wintercoat/donk/bartender
	name = "donk co. bartending winter coat"
	desc = "A Donk Corporation beige winter coat with a red apron that is used by their bartending staff. It smells of alcohol."
	icon_state = "coatdonkbar"
	inhand_icon_state = null
	hoodtype = /obj/item/clothing/head/hooded/winterhood/donk/bartender

/obj/item/clothing/head/hooded/winterhood/donk/bartender
	desc = "A Donk Corporation beige winter hood that is used by their bartending staff. It smells of alcohol."
	icon_state = "hood_donkbar"

/obj/item/clothing/suit/hooded/wintercoat/doh
	name = "director of hospitality's winter coat"
	desc = "A cozy Donk Corporation red winter coat with yellow trims, covered in thick, comfy fur. The breast features a golden nametag, you can tell whoever in this just loves Karens."
	icon = 'modular_panda/icons/obj/clothing/suits/wintercoat.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/suits/wintercoat.dmi'
	icon_state = "coatdoh"
	inhand_icon_state = null
	armor_type = /datum/armor/wintercoat_hop
	allowed = list(
		/obj/item/melee/baton/telescopic,
		/obj/item/stamp,
	)
	hoodtype = /obj/item/clothing/head/hooded/winterhood/doh

/obj/item/clothing/suit/hooded/wintercoat/doh/Initialize(mapload)
	. = ..()
	allowed += GLOB.security_wintercoat_allowed

/obj/item/clothing/head/hooded/winterhood/doh
	desc = "A cozy Donk Corporation red winter hood, covered in thick, comfy fur, you can tell whoever in this just loves Karens"
	icon = 'modular_panda/icons/obj/clothing/head/winterhood.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/head/winterhood.dmi'
	icon_state = "hood_doh"
	armor_type =/datum/armor/wintercoat_hop
