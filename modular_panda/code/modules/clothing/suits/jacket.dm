/obj/item/clothing/suit/jacket/interdyne_suit
	name = "interdyne executive suit jacket"
	desc = "A finely tailored charcoal-black executive jacket with subtle light-purple accents along the lapels and cuffs. A small Interdyne Pharmaceuticals insignia is embroidered over the left breast, giving the jacket a polished corporate appearance befitting a pharmaceutical executive."
	icon = 'modular_panda/icons/obj/clothing/suits/jacket.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/suits/jacket.dmi'
	icon_state = "interdyne_suit"
	armor_type = /datum/armor/wintercoat_security

/obj/item/clothing/suit/jacket/interdyne_suit/Initialize(mapload)
	. = ..()
	allowed += GLOB.security_vest_allowed
