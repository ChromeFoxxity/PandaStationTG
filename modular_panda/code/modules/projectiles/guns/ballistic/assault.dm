//########### ASSAULT ###########//
/obj/item/gun/modular/ballistic/automatic/assault
	abstract_type = /obj/item/gun/modular/ballistic/automatic/assault
	mag_display = TRUE
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE
	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_SEMIAUTO
	mag_display = TRUE
	burst_size = 1
	fire_delay = 2 DECISECONDS
	load_sound = 'modular_panda/sound/weapons/gun/rifle/ar_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/rifle/ar_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/rifle/ar_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/rifle/ar_unload.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/rifle/ar_cock.ogg'

/obj/item/gun/modular/ballistic/automatic/assault/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/ammo_hud)

/obj/item/gun/modular/ballistic/automatic/assault/hydra
	name = "SMR-80 \"Hydra\""
	desc = "Scarborough Arms' premier modular assault rifle platform. This is the basic configuration, optimized for light weight and handiness. A very well-regarded, if expensive and rare, assault rifle. Chambered in 5.56x42mm."
	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_righthand.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/back.dmi'
	icon_state = "hydra"
	inhand_icon_state = "hydra"
	accepted_magazine_type = /obj/item/ammo_box/magazine/m556_42_hydra
	load_sound = 'modular_panda/sound/weapons/gun/rifle/m16_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/rifle/m16_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/rifle/m16_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/rifle/m16_unload.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/rifle/ar_cock.ogg'
	fire_sound = 'modular_panda/sound/weapons/gun/rifle/hydra.ogg'
	gun_firenames = list(FIREMODE_SEMIAUTO = "single", FIREMODE_BURST = "burst fire", FIREMODE_FULLAUTO = "full auto")
	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_FULLAUTO)
	//gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_BURST, FIREMODE_OTHER)
	default_firemode = FIREMODE_SEMIAUTO
	mag_display_ammo = TRUE
	special_mags = TRUE
	can_suppress = FALSE
	spread = 1

/obj/item/gun/modular/ballistic/automatic/assault/hydra/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/gun/modular/ballistic/automatic/assault/hydra/add_deep_lore()
	AddElement(/datum/element/examine_lore, \
		lore_hint = span_notice("You can [EXAMINE_HINT("look closer")] to learn a little more about [src]."), \
		lore = "The SMR-80 is the standard configuration of Scarborough Arms' Hydra modular rifle platform, \
		and the weapon most commonly associated with the company's modern small-arms division. Conceived \
		as a flexible alternative to traditional service rifles, the Hydra was designed to accommodate a \
		variety of operational requirements without forcing its customers to maintain entirely separate \
		weapons inventories.<br>\
		<br>\
		The platform's development was driven in part by a market that Nanotrasen's procurement model \
		rarely served particularly well. While major corporations could afford to standardize their security \
		forces around a handful of mass-produced weapons, smaller organizations often required equipment \
		that could be adapted to different assignments as their needs changed. Scarborough Arms recognized \
		an opportunity to sell flexibility to customers who could not afford the luxury of maintaining \
		a dedicated firearm for every conceivable role.<br>\
		<br>\
		The SMR-80 represents the baseline of that philosophy. Its compact configuration prioritizes handling \
		and portability, while its 5.56x42mm cartridge offers manageable recoil for operators who may not \
		have access to the extensive training facilities available to major corporate military formations. \
		The platform's modular construction allows compatible components to be exchanged as requirements \
		change, although the extent of this adaptability depends on the availability of the appropriate \
		assemblies and the expertise of the organization's armorers.<br>\
		<br>\
		For all its advantages, the Hydra has never achieved the ubiquity of Nanotrasen's standard service \
		rifles. Its price is difficult to justify for organizations that simply need thousands of reliable \
		firearms, and its more specialized components introduce logistical considerations that mass-produced \
		service weapons largely avoid. Scarborough Arms has consequently found its strongest customers \
		among private security contractors, specialized corporate units, and organizations that value \
		equipment flexibility over the convenience of standardized procurement.<br>\
		<br>\
		The company has occasionally described the Hydra as a rifle that grows with its owner. Critics \
		have pointed out that this is a curious way to describe a weapon whose replacement components \
		can cost more than some competing firearms. Scarborough Arms' marketing division has yet to issue \
		a response, although its sales representatives remain enthusiastic about the platform's potential." \
	)

/obj/item/gun/modular/ballistic/automatic/assault/hydra/indie
	name = "Hydra-80"
	desc = "A dated variant of Scarborough Arms' premier assault rifle platform. Only accepts small magazines and is locked to semi-auto. Chambered in 5.56x42mm."
	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_righthand.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/back.dmi'
	icon_state = "hydra_80"
	inhand_icon_state = "hydra_80"
	gun_firemodes = list(FIREMODE_SEMIAUTO)
	gun_firenames = list(FIREMODE_SEMIAUTO)
	accepted_magazine_type = /obj/item/ammo_box/magazine/m556_42_hydra/small
	burst_size = 1
	spread = 3

/obj/item/gun/modular/ballistic/automatic/assault/hydra/indie/add_deep_lore()
	AddElement(/datum/element/examine_lore, \
		lore_hint = span_notice("You can [EXAMINE_HINT("look closer")] to learn a little more about [src]."), \
		lore = "The Hydra-80 is an early production variant of Scarborough Arms' modular rifle platform, dating \
		to the company's initial efforts to establish the Hydra as a commercially viable alternative to \
		conventional service rifles. While later models emphasized adaptability and specialized configurations, \
		the original Hydra-80 was designed around a much simpler objective: provide a functional, inexpensive \
		rifle to customers unwilling or unable to pay for more sophisticated equipment.<br>\
		<br>\
		Several compromises distinguish the weapon from later Hydra configurations. Its firing mechanism is \
		restricted to semi-automatic operation, and its magazine well accepts only smaller-capacity magazines. \
		These decisions were originally justified as cost-saving measures, reducing manufacturing complexity \
		and allowing Scarborough Arms to offer the platform at a more competitive price point.<br>\
		<br>\
		The commercial success of the Hydra-80 was short-lived. Customers who initially welcomed its low \
		purchase price soon began demanding the features offered by competing rifles, while Scarborough Arms \
		itself shifted its marketing efforts toward more capable configurations. The company eventually \
		discontinued the variant, leaving existing owners to contend with an increasingly limited supply \
		of factory-supported components.<br>\
		<br>\
		Despite its obsolescence, the Hydra-80 has proven remarkably difficult to eliminate from circulation. \
		Thousands of examples remain in the hands of private security firms, remote installations, and \
		organizations whose equipment budgets are generally approved by someone who has never personally \
		handled a firearm. Its simple mechanism and limited feature set make it relatively easy to maintain, \
		provided the necessary parts can still be acquired.<br>\
		<br>\
		Scarborough Arms' current product literature makes no mention of the Hydra-80. The company has, \
		however, repeatedly denied rumors that it considers the weapon a commercial failure, preferring \
		to describe it as an important early step in the development of the Hydra family.<br>\
		<br>\
		For the thousands of people still carrying one, this distinction is probably academic." \
	)

/obj/item/gun/modular/ballistic/automatic/assault/hydra/dmr
	name = "SBR-80 \"Hydra\""
	desc = "Scarborough Arms' premier modular assault rifle platform. This example is configured as a marksman rifle, with an extended barrel and medium-zoom scope. Its lightweight cartridge is compensated for with a 2-round burst action, though it is unable to fit large extended magazines. Chambered in 5.56x42mm."
	icon_state = "hydra_dmr"
	inhand_icon_state = "hydra_dmr"
	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_BURST)
	default_firemode = FIREMODE_SEMIAUTO
	burst_size = 2
	spread = 0
	accepted_magazine_type = /obj/item/ammo_box/magazine/m556_42_hydra/small

/obj/item/gun/modular/ballistic/automatic/assault/hydra/dmr/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/scope, range_modifier = 6)

/obj/item/gun/modular/ballistic/automatic/assault/hydra/dmr/add_deep_lore()
	AddElement(/datum/element/examine_lore, \
		lore_hint = span_notice("You can [EXAMINE_HINT("look closer")] to learn a little more about [src]."), \
		lore = "The SBR-80 is a specialized configuration of Scarborough Arms' Hydra modular rifle platform, \
		developed for customers who require greater precision without the expense of procuring an entirely \
		separate class of firearm. Scarborough Arms has long promoted the Hydra family as an alternative to \
		the increasingly fragmented small-arms market, where organizations often find themselves maintaining \
		separate inventories for weapons that perform only marginally different functions.<br>\
		<br>\
		The marksman configuration employs an extended barrel assembly and an optical sight intended to improve \
		target acquisition at intermediate distances. Rather than adopting a heavier cartridge, Scarborough Arms \
		retained the platform's relatively lightweight 5.56x42mm ammunition, relying on controlled two-round \
		bursts to provide a compromise between precision and follow-up capability.<br>\
		<br>\
		This compromise has not been without criticism. The weapon's magazine restrictions limit its usefulness \
		in situations where sustained fire is expected, while its extended configuration sacrifices some of the \
		handiness that made the original Hydra attractive. Scarborough Arms maintains that these limitations \
		are acceptable tradeoffs for a platform intended to bridge the gap between a conventional assault rifle \
		and a dedicated marksman weapon.<br>\
		<br>\
		The Hydra's modularity has made it particularly attractive to private security contractors and smaller \
		corporate organizations that lack the procurement budgets of major powers. However, the savings promised \
		by a common weapon platform are not always realized. Specialized components, proprietary assemblies, \
		and the occasional disagreement between a contractor and a Scarborough Arms distributor have generated \
		a steady market for third-party replacement parts.<br>\
		<br>\
		Scarborough Arms officially discourages the use of unauthorized components, citing reliability and \
		operator safety. Its legal department has declined to comment on whether this policy has anything to \
		do with the company's unusually extensive catalogue of replacement assemblies." \
	)

/obj/item/gun/modular/ballistic/automatic/assault/nt24
	name = "\improper NT-24"
	desc = "An obsolete and very rugged assault rifle with a heavy projectile and slow action for its class. Once Nanotrasen's standard assault rifle produced in phenomenal numbers for the safety of stations due to heightened Syndicate activity, it now serves as an acceptable, if rare, battle rifle. Chambered in 7.62mm."
	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/back.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_righthand.dmi'
	icon_state = "nt24"
	inhand_icon_state = "nt24"
	special_mags = TRUE
	weapon_weight = WEAPON_MEDIUM
	burst_fire_selection = TRUE
	accepted_magazine_type = /obj/item/ammo_box/magazine/skm_762_40
	spread = 6

/obj/item/gun/modular/ballistic/automatic/assault/nt24/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)

/obj/item/gun/modular/ballistic/automatic/assault/nt24/add_deep_lore()
	AddElement(/datum/element/examine_lore, \
		lore_hint = span_notice("You can [EXAMINE_HINT("look closer")] to learn a little more about [src]."), \
		lore = "Before the NT-82 became the face of Nanotrasen's conventional armaments, there was the NT-24. \
		Developed during a period of heightened Syndicate activity, the rifle was intended to provide Nanotrasen's \
		rapidly expanding security forces with a weapon that could be manufactured in enormous quantities and \
		maintained by personnel with minimal specialized training.<br>\
		<br>\
		The NT-24's design philosophy was remarkably straightforward. Its action was deliberately conservative, \
		its construction prioritized durability over weight, and its 7.62mm cartridge offered considerably more \
		projectile mass than the ammunition used by its eventual successor. These characteristics made it popular \
		among security detachments stationed at remote facilities, where replacement parts were scarce and \
		weapons were often expected to function long after their scheduled maintenance intervals.<br>\
		<br>\
		At the height of its production, the NT-24 was manufactured in quantities that would later become a \
		significant logistical embarrassment for Nanotrasen. The subsequent introduction of the NT-82 rendered \
		much of the existing inventory obsolete almost overnight, leaving warehouses full of perfectly serviceable \
		rifles that no longer met the corporation's preferred equipment standards.<br>\
		<br>\
		Officially, the NT-24 has been relegated to reserve stocks, secondary security assignments, and emergency \
		armories. Unofficially, numerous facilities continue issuing the rifle because their administrators \
		would rather explain an outdated equipment manifest to Central Command than justify the expense of \
		replacing thousands of functioning firearms.<br>\
		<br>\
		The NT-24 remains a particularly uncomfortable subject for Nanotrasen's procurement officers. It is \
		neither sufficiently obsolete to justify its wholesale disposal nor sufficiently modern to justify \
		its continued production. For a corporation that prides itself on efficiency, the rifle is an enduring \
		reminder that purchasing equipment is considerably easier than deciding when to stop using it." \
	)

/obj/item/gun/modular/ballistic/automatic/assault/nt82
	name = "\improper NT-82"
	desc = "Nanotrasen's standard assault rifle, a relatively new service weapon. Accurate, reliable, and easy to use, the NT-82 replaced the NT-24 as Nanotrasen's assault rifle almost overnight, and has proven immensely popular since. Chambered in 5.56mm."
	fire_sound = 'modular_panda/sound/weapons/gun/rifle/cm82.ogg'
	icon_state = "nt82"
	inhand_icon_state = "nt82"
	special_mags = TRUE
	tac_reloads = FALSE
	accepted_magazine_type = /obj/item/ammo_box/magazine/p16
	spread = 2
	load_sound = 'modular_panda/sound/weapons/gun/rifle/cm82_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/rifle/cm82_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/rifle/cm82_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/rifle/cm82_unload.ogg'

/obj/item/gun/modular/ballistic/automatic/assault/nt82/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)

/obj/item/gun/modular/ballistic/automatic/assault/nt82/add_deep_lore()
	AddElement(/datum/element/examine_lore, \
		lore_hint = span_notice("You can [EXAMINE_HINT("look closer")] to learn a little more about [src]."), \
		lore = "The NT-82 represents the culmination of Nanotrasen's efforts to modernize its conventional infantry armaments. \
		Developed as the successor to the aging NT-24 service rifle, the platform was designed around the increasingly \
		common requirements of corporate security: reliability, ease of maintenance, and the ability to equip entire \
		facilities without incurring the costs associated with specialized military hardware.<br>\
		<br>\
		The rifle's adoption was, by all accounts, remarkably swift. Nanotrasen's procurement divisions negotiated \
		extensive manufacturing contracts ahead of its official rollout, ensuring that the NT-82 would be available \
		in sufficient quantities to replace existing inventories before competing manufacturers could respond. \
		Within a few years, the rifle had become the standard issue firearm for numerous Nanotrasen security \
		formations, with its success frequently cited in internal reports as an example of efficient corporate \
		standardization.<br>\
		<br>\
		Not everyone was pleased with the transition. Veteran security officers accustomed to the heavier NT-24 \
		criticized the newer rifle for its lighter cartridge, arguing that Nanotrasen had prioritized logistics \
		and cost savings over stopping power. The weapons division dismissed these concerns as resistance to \
		modernization, pointing to improved handling and the reduced burden of ammunition transport as justification \
		for the change.<br>\
		<br>\
		Whether the NT-82 is truly superior to its predecessor remains a matter of considerable debate among \
		small-arms enthusiasts. What cannot be disputed is that Nanotrasen has made the rifle so ubiquitous that \
		finding an alternative has become considerably more difficult than finding another NT-82." \
	)
