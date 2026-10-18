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

/obj/item/clothing/suit/jacket/cybersun_coat
	name = "cybersun executive coat"
	desc = "A finely tailored midnight blue executive longcoat with orange trims along the lining, collar and cuffs. A small golden Cybersun Industries pin is attached on the left collar, and a small logo on the back, giving the longcoat a polished corporate appearance befitting a tech company executive."
	icon = 'modular_panda/icons/obj/clothing/suits/jacket.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/suits/jacket.dmi'
	icon_state = "cybersun_coat"
	armor_type = /datum/armor/wintercoat_security

/obj/item/clothing/suit/jacket/cybersun_coat/Initialize(mapload)
	. = ..()
	allowed += GLOB.security_vest_allowed

/obj/item/clothing/suit/jacket/waffle_jacket
	name = "waffle co. jacket"
	desc = "A comfortable, puffy navy blue jacket with Waffle Corporation's logo on the left breast, and back of the jacket. It has yellow trims around the bottom of the jacket, and sleeve cuffs."
	icon = 'modular_panda/icons/obj/clothing/suits/jacket.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/suits/jacket.dmi'
	icon_state = "waffle_jacket"

/obj/item/clothing/suit/jacket/waffle_vest
	name = "waffle co. vest"
	desc = "A comfortable, puffy navy blue vest with Waffle Corporation's logo on the left breast, and back of the jacket. It has yellow trims around the bottom of the vest."
	icon = 'modular_panda/icons/obj/clothing/suits/jacket.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/suits/jacket.dmi'
	icon_state = "waffle_vest"
	body_parts_covered = CHEST
