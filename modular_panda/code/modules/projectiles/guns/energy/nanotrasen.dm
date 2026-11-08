/obj/item/shiptest_gun/energy/nanotrasen
	name = "nanotrasen gun master type"
	desc = ""

	w_class = WEIGHT_CLASS_NORMAL

	abstract_type = /obj/item/shiptest_gun/energy/nanotrasen

/obj/item/shiptest_gun/energy/nanotrasen/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)

/obj/item/shiptest_gun/energy/nanotrasen/rubus
	name = "NT-6 \"Rubus\""
	desc = "Aegis Dynamics' modern reinterpretation of the original NT-1 laser weapon, commissioned by Nanotrasen to commemorate and modernize its first service weapon. The NT-6 retains much of the original's distinctive design while incorporating updated internal components, improved energy regulation, and modern manufacturing standards. Despite its improvements, the Rubus has struggled to find a place in Nanotrasen's modern arsenal, with its antiquated design philosophy and relatively specialized production making it an impractical choice for widespread issue. Most examples are instead reserved for ceremonial duties, historical collections, and particularly enthusiastic collectors."
	icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/onmob.dmi'
	w_class = WEIGHT_CLASS_BULKY

	modifystate = TRUE

	fire_delay = 0.16 SECONDS

	spread = 3

	icon_state = "cm6"
	inhand_icon_state = "cm6"

	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_SEMIAUTO

	default_ammo_type = /obj/item/stock_parts/power_store/cell/gun/ewc5
	allowed_ammo_types = list(
		/obj/item/stock_parts/power_store/cell/gun/ewc5,
		/obj/item/stock_parts/power_store/cell/gun/ewc6,
		/obj/item/stock_parts/power_store/cell/gun/ewc5/empty,
		/obj/item/stock_parts/power_store/cell/gun/ewc6/empty,
	)
	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/kalix/nt, /obj/item/shiptest_ammo_casing/energy/disabler/hitscan)

	load_sound = 'modular_panda/sound/weapons/gun/gauss/pistol_reload.ogg'

/obj/item/shiptest_gun/energy/nanotrasen/rubus/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_AEGIS)

/obj/item/shiptest_gun/energy/nanotrasen/rubus/old
	name = "NT-1 \"Pioneer\""
	desc = "An exceptionally rare example of Nanotrasen's earliest commissioned laser weaponry, originally manufactured by Aegis Dynamics during the corporation's colonial expansion. The NT-1 was issued to the first generation of Nanotrasen Security, serving as one of the company's earliest standardized energy weapons. Now over a century old, surviving examples are increasingly difficult to maintain, with replacement components being scarce and often prohibitively expensive. Despite its age, the NT-1 remains a functional and formidable weapon. Most surviving units are preserved for ceremonial purposes at Central Command, though a select few have been presented to particularly distinguished members of Nanotrasen's military divisions."

	icon_state = "cm1"
	inhand_icon_state = "cm1"

	fire_delay = 0.3 SECONDS

	gun_firemodes = list(FIREMODE_SEMIAUTO)
	default_firemode = FIREMODE_SEMIAUTO

	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/kalix)

/obj/item/shiptest_gun/energy/nanotrasen/sparrow
	name = "NTC-10 \"Sparrow\""
	desc = "A civilian-oriented pulsed-energy submachine gun designed with affordability, simplicity, and reliability in mind. Its lightweight construction and economical design have made it a popular choice for personal protection and underfunded private security. Uses Nanotrasen cells."

	icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/onmob.dmi'

	icon_state = "pl12"
	inhand_icon_state = "pl12"

	default_ammo_type = /obj/item/stock_parts/power_store/cell/gun
	allowed_ammo_types = list(
		/obj/item/stock_parts/power_store/cell/gun,
		/obj/item/stock_parts/power_store/cell/gun/empty,
		/obj/item/stock_parts/power_store/cell/gun/upgraded,
		/obj/item/stock_parts/power_store/cell/gun/upgraded/empty,
	)

	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/laser/clover/smg, /obj/item/shiptest_ammo_casing/energy/disabler/clover/smg)

	modifystate = TRUE

	weapon_weight = WEAPON_MEDIUM

	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE

	recoil = 0.6

	fire_delay = 0.4 SECONDS

	w_class = WEIGHT_CLASS_BULKY

	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_SEMIAUTO

	muzzleflash_iconstate = "muzzle_flash_pulse"

/obj/item/shiptest_gun/energy/nanotrasen/sparrow/hawthorn
	name = "NT-12 \"Hawthorn\""
	desc = "A modernized successor to the civilian NTC-10 energy SMG, redesigned for professional use by Nanotrasen personnel. The NT-12 retains the original's compact design while incorporating improved energy output, and offering greater firepower at the cost of overall ammunition capacity. Uses Nanotrasen cells."

	icon_state = "ecm12"
	inhand_icon_state = "ecm12"

	recoil = 0.7

	fire_delay = 0.3 SECONDS

	default_ammo_type = /obj/item/stock_parts/power_store/cell/gun/upgraded

	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_SEMIAUTO

/obj/item/shiptest_gun/energy/nanotrasen/nettle
	name = "NTC-7 \"Nettle\""
	desc = "A lightweight, compact energy pistol designed around a reliable two-round burst firing system. Originally developed as an affordable personal-defense weapon, the Nettle has since found widespread adoption among civilian security contractors, law enforcement agencies, and private citizens alike. Its straightforward design, manageable size, and dependable performance have made it a popular choice for those seeking an economical alternative to more specialized sidearms. Uses Nanotrasen Mini cells."
	icon_state = "pl7"
	inhand_icon_state = "clover_generic_civ"

	icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/onmob.dmi'

	burst_size = 2
	burst_delay = 0.2 SECONDS
	fire_delay = 0.45 SECONDS

	modifystate = TRUE

	spread = 6
	recoil = 0.3

	w_class = WEIGHT_CLASS_SMALL

	default_ammo_type = /obj/item/stock_parts/power_store/cell/gun/mini
	allowed_ammo_types = list(
		/obj/item/stock_parts/power_store/cell/gun/mini,
		/obj/item/stock_parts/power_store/cell/gun/mini/empty,
	)

	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_BURST)
	default_firemode = FIREMODE_SEMIAUTO

	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/laser/clover, /obj/item/shiptest_ammo_casing/energy/disabler/clover)

	muzzleflash_iconstate = "muzzle_flash_pulse"

/obj/item/shiptest_gun/energy/nanotrasen/nettle/bramble
	name = "NT-9 \"Bramble\""
	desc = "A professional-grade refinement of the civilian NTC-7 Nettle, redesigned to meet the demands of Nanotrasen's emergency response personnel. The NT-9 retains the original's compact frame and reliable burst firing system while incorporating improved energy regulation, reinforced internal components, three-round burst support, and greater overall durability. Its lightweight construction and simplified cell logistics have made it a favored sidearm among Nanotrasen emergency response teams and corporate security personnel. Uses Nanotrasen Mini cells."
	icon_state = "ecm7"
	inhand_icon_state = "clover_generic"

	burst_size = 3
	burst_delay = 0.15 SECONDS
	fire_delay = 0.35 SECONDS

	spread = 4
	recoil = 0.5

/obj/item/shiptest_gun/energy/nanotrasen/nettle/stinging
	name = "xNTC-7 \"Stinging Nettle\""
	desc = "An illicitly modified derivative of Nanotrasen's NTC-7 Nettle, commonly encountered through black-market arms dealers and underground weaponsmiths. Its original energy regulation and safety systems have been heavily altered, replacing the standard firing mechanism with an electropulse gas recycler that allows for fully automatic fire. The non-lethal disable setting has been removed entirely, leaving the weapon configured exclusively for lethal applications. Finished in an unmarked black coating, with its original serial numbers deliberately ground away, the Stinging Nettle is a popular choice among criminals and other individuals looking to get more out of a cheaply acquired civilian sidearm. Uses Nanotrasen Mini cells."
	icon_state = "stinging_nettle"

	spread = 10
	recoil = 0.7

	fire_delay = 0.1 SECONDS

	gun_firemodes = list(FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_FULLAUTO

	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/laser/clover/auto)

/obj/item/shiptest_gun/energy/nanotrasen/nettle/stinging/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_PIRATE)

/obj/item/shiptest_gun/energy/nanotrasen/burdock
	name = "NTC-8 \"Burdock\""
	desc = "A midweight civilian energy handgun designed to deliver considerable armor-penetrating power in a relatively compact package. The Burdock trades manageable recoil and ammunition efficiency for improved penetration, making it a popular, if somewhat controversial, choice among private security contractors and civilian firearms enthusiasts. Its notoriously sharp recoil has earned it an unfortunate reputation on firing ranges, with its frequent appearances in 'firing range fail' compilations doing little to discourage curious prospective buyers. Uses Nanotrasen Mini cells."
	icon_state = "pl9"

	icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/onmob.dmi'

	fire_delay = 0.5 SECONDS

	modifystate = TRUE

	spread = 3
	recoil = 1

	w_class = WEIGHT_CLASS_NORMAL

	default_ammo_type = /obj/item/stock_parts/power_store/cell/gun/mini
	allowed_ammo_types = list(
		/obj/item/stock_parts/power_store/cell/gun/mini,
		/obj/item/stock_parts/power_store/cell/gun/mini/empty,
	)

	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/laser/clover/magnum, /obj/item/shiptest_ammo_casing/energy/disabler/clover/magnum)

	gun_firemodes = list(FIREMODE_SEMIAUTO)
	default_firemode = FIREMODE_SEMIAUTO

	muzzleflash_iconstate = "muzzle_flash_pulse"

/obj/item/shiptest_gun/energy/nanotrasen/burdock/ironwood
	name = "NT-14 \"Ironwood\""
	desc = "A professional-grade armor-piercing energy handgun developed as a successor to the civilian NTC-8 platform. The Ironwood incorporates a redesigned energy focusing assembly, improved recoil management, and reinforced internal components, allowing it to deliver consistent armor penetration without the unwieldy handling of its predecessor. Its specialized firing characteristics make it particularly effective against armored targets, earning it a place among Nanotrasen security teams and contracted private security forces. Uses Nanotrasen Mini cells."
	icon_state = "ecm9"
	inhand_icon_state = "ecm9"

	fire_delay = 0.4 SECONDS

	recoil = 0.7
	spread = 2

/obj/item/shiptest_gun/energy/nanotrasen/faveleira
	name = "NTC-24 \"Faveleira\""
	desc = "A civilian-market energy scattergun developed by Nanotrasen for personal defense and private security applications. Utilizing five independently firing energy lenses, the NTC-24 produces a broad spread of plasma projectiles, making it particularly effective at close range. Its straightforward firing system and relatively uncomplicated maintenance have made it a popular choice among private security contractors and civilian firearms enthusiasts, though its limited effective range leaves much to be desired. The Faveleira would eventually serve as the foundation for the more advanced NT-25 platform. Uses Nanotrasen Heavy cells."
	icon_state = "pl25"
	inhand_icon_state = "pl25"

	icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/onmob.dmi'

	default_ammo_type = /obj/item/stock_parts/power_store/cell/gun/heavy
	allowed_ammo_types = list(
		/obj/item/stock_parts/power_store/cell/gun/heavy,
		/obj/item/stock_parts/power_store/cell/gun/heavy/empty,
		/obj/item/stock_parts/power_store/cell/gun/heavy/upgraded,
		/obj/item/stock_parts/power_store/cell/gun/heavy/upgraded/empty,
	)

	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/laser/clover/shotgun)

	modifystate = FALSE

	w_class = WEIGHT_CLASS_BULKY

	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE

	spread = 2
	recoil = 4

	fire_delay = 0.85 SECONDS

	w_class = WEIGHT_CLASS_BULKY

	gun_firemodes = list(FIREMODE_SEMIAUTO)
	default_firemode = FIREMODE_SEMIAUTO

	muzzleflash_iconstate = "muzzle_flash_pulse"

/obj/item/shiptest_gun/energy/nanotrasen/faveleira/firethorn
	name = "NT-25 \"Firethorn\""
	desc = "Nanotrasen's modernized successor to the NT-24 energy scattergun, the NT-25 introduces an advanced synchronized focusing assembly that significantly expands the weapon's versatility. Its five energy lenses can operate independently to produce a wide scattershot, or synchronize their output into a single concentrated discharge, releasing a high-velocity plasma bolt capable of delivering considerable impact against a focused target. This improved flexibility has made the Firethorn a popular choice among Nanotrasen security divisions requiring a dependable close-quarters weapon without sacrificing effectiveness at greater distances. Uses Nanotrasen Heavy cells."
	icon_state = "ecm25"
	inhand_icon_state = "ecm25"

	spread = 1
	recoil = 3

	fire_delay = 0.65 SECONDS

	w_class = WEIGHT_CLASS_BULKY

	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/laser/clover/shotgun, /obj/item/shiptest_ammo_casing/energy/laser/clover/beam)

/obj/item/shiptest_gun/energy/nanotrasen/maguey
	name = "NTC-20 \"Maguey\""
	desc = "An unusually powerful civilian-market pulsed-energy rifle developed using technology originally intended for Nanotrasen's experimental NT-40 hybrid rifle program. The NT-40 was an ambitious military development project that was ultimately abandoned before a finalized weapon could be produced, leaving behind a collection of unfinished designs and experimental components. Nanotrasen later repurposed elements of this research into the NTC-20, producing a commercially available energy repeater with considerably more modest capabilities than its military predecessor. Classified and marketed as an 'Energy Repeater' to circumvent automatic firearm sales restrictions in several jurisdictions, the Maguey remains an uncommon and particularly sought-after civilian weapon. Uses Nanotrasen cells."
	icon_state = "pl20"
	inhand_icon_state = "pl20"

	icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/48x32.dmi'
	lefthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/lefthand.dmi'
	righthand_file = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/righthand.dmi'
	worn_icon = 'modular_panda/icons/obj/guns/manufacturer/nanotrasen/onmob.dmi'

	default_ammo_type = /obj/item/stock_parts/power_store/cell/gun/heavy
	allowed_ammo_types = list(
		/obj/item/stock_parts/power_store/cell/gun/heavy,
		/obj/item/stock_parts/power_store/cell/gun/heavy/empty,
		/obj/item/stock_parts/power_store/cell/gun/heavy/upgraded,
		/obj/item/stock_parts/power_store/cell/gun/heavy/upgraded/empty,
	)

	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/laser/clover/highpower)

	modifystate = TRUE

	weapon_weight = WEAPON_MEDIUM

	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE

	fire_delay = 0.4 SECONDS
	spread = 4
	recoil = 0.9

	w_class = WEIGHT_CLASS_BULKY

	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_SEMIAUTO

	muzzleflash_iconstate = "muzzle_flash_pulse"

/obj/item/shiptest_gun/energy/nanotrasen/maguey/agave
	name = "NT-30 \"Agave\""
	desc = "A rare, original production-model energy rifle developed by Nanotrasen as a potential replacement for its existing standard-issue service weapons. Building upon the NTC-20 platform, the NT-30 features improved electroplasma focusing, a faster energy recycling assembly, and considerably greater overall output. Its most notable feature is an experimental explosive-bolt firing mode, capable of delivering devastating energy discharges at the expense of considerable collateral damage. Despite performing exceptionally well during trials, concerns surrounding its excessive lethality and suitability for routine security operations ultimately prevented its adoption into standard service. Only a limited production run was completed for evaluation, making surviving examples highly sought after by collectors and particularly distinguished Nanotrasen personnel. Uses Nanotrasen cells."
	icon_state = "ecm20"
	inhand_icon_state = "ecm20"

	fire_delay = 0.3 SECONDS
	spread = 2
	recoil = 0.8

	ammo_type = list(/obj/item/shiptest_ammo_casing/energy/laser/clover/highpower, /obj/item/shiptest_ammo_casing/energy/laser/clover/overcharge)
