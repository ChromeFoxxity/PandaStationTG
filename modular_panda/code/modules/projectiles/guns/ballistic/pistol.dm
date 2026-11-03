//########### PISTOLS ###########//
/obj/item/gun/modular/ballistic/automatic/pistol
	abstract_type = /obj/item/gun/modular/ballistic/automatic/pistol
	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/back.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_righthand.dmi'
	bolt_type = BOLT_TYPE_LOCKING
	w_class = WEIGHT_CLASS_NORMAL
	vary_fire_sound = FALSE
	fire_sound_volume = 90
	bolt_wording = "slide"
	burst_size = 1
	fire_delay = 0 SECONDS
	actions_types = list()
	weapon_weight = WEAPON_LIGHT
	pickup_sound =  'modular_panda/sound/handling/gun_pickup.ogg'
	recoil_backtime_multiplier = 1
	spread = 5

/obj/item/gun/modular/ballistic/automatic/pistol/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/ammo_hud)

/obj/item/gun/modular/ballistic/automatic/pistol/candor
	name = "\improper Candor"
	desc = "A classic semi-automatic handgun, widely popular throughout the Spinward Sector. An engraving on the slide marks it as a product of Bastion Armaments. Chambered in .45 ACP."
	icon_state = "candor"
	inhand_icon_state = "sa_generic"
	accepted_magazine_type = /obj/item/ammo_box/magazine/m45
	fire_sound = 'modular_panda/sound/weapons/gun/pistol/candor.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/pistol/candor_cocked.ogg'
	lock_back_sound = 'modular_panda/sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/pistol/candor_cocked.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/pistol/candor_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/pistol/candor_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/pistol/candor_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/pistol/candor_unload.ogg'

/obj/item/gun/modular/ballistic/automatic/pistol/candor/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_BASTION)

/obj/item/gun/modular/ballistic/automatic/pistol/candor/add_deep_lore()
	AddElement(/datum/element/examine_lore, \
		lore_hint = span_notice("You can [EXAMINE_HINT("look closer")] to learn a little more about [src]."), \
		lore = "The Candor is one of Bastion Armaments' most recognizable commercial firearms, a conventional \
		semi-automatic handgun whose reputation has endured through generations of competing designs. \
		Chambered in .45 ACP, it occupies a market segment that has remained surprisingly resilient despite \
		the proliferation of lighter cartridges, compact handguns, and specialized corporate security weapons.<br>\
		<br>\
		Bastion Armaments has traditionally marketed the Candor as a practical firearm for customers who \
		value familiarity over novelty. Its conventional design makes it recognizable to civilian owners, \
		independent gunsmiths, and law enforcement personnel alike, while the company's established commercial \
		network has helped keep the weapon available long after newer competitors entered the market.<br>\
		<br>\
		The Candor's engraved slide has become a particularly recognizable feature. Bastion has resisted \
		removing the marking from standard production models, arguing that the manufacturer's name is a \
		sign of accountability and quality assurance. Critics have suggested that the engraving is simply \
		an inexpensive means of ensuring that every photograph of the weapon also advertises the company.<br>\
		<br>\
		Although the Candor has never been universally adopted as a corporate service pistol, it has remained \
		popular among civilian owners, independent security personnel, and organizations that prefer to \
		purchase their own equipment rather than accept standardized corporate issue. Its continued commercial \
		success has allowed Bastion to maintain production without relying exclusively on large institutional \
		contracts.<br>\
		<br>\
		The company has periodically introduced updated finishes and minor production revisions, but the \
		fundamental design has remained recognizable. Bastion's marketing division describes this continuity \
		as proof that the Candor was designed correctly from the beginning.<br>\
		<br>\
		Competitors have offered a less flattering interpretation: the Candor is an old design that has \
		benefited from exceptionally effective advertising. Bastion Armaments considers this criticism \
		irrelevant, particularly given that its sales figures continue to justify production." \
	)

/obj/item/gun/modular/ballistic/automatic/pistol/ringneck
	name = "PC-76 \"Ringneck\""
	desc = "A compact handgun used by most Syndicate-affiliated groups. Small enough to conceal in most pockets, making it popular for covert elements and simply as a compact defensive weapon. Chambered in 10mm."
	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/back.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_righthand.dmi'
	icon_state = "ringneck"
	inhand_icon_state = "sa_generic"
	w_class = WEIGHT_CLASS_SMALL
	accepted_magazine_type = /obj/item/ammo_box/magazine/m10mm_ringneck
	fire_sound = 'modular_panda/sound/weapons/gun/pistol/shot.ogg'
	dry_fire_sound = 'modular_panda/sound/weapons/gun/pistol/dry_fire.ogg'
	suppressed_sound = 'modular_panda/sound/weapons/gun/pistol/shot_suppressed.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert_alt.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert_alt.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release_alt.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release_alt.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/pistol/rack_small.ogg'
	lock_back_sound = 'modular_panda/sound/weapons/gun/pistol/lock_small.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/pistol/drop_small.ogg'

	spread = 6 //becuase its compact, spread is slightly worse

/obj/item/gun/modular/ballistic/automatic/pistol/ringneck/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/gun/modular/ballistic/automatic/pistol/ringneck/add_deep_lore()
	AddElement(/datum/element/examine_lore, \
		lore_hint = span_notice("You can [EXAMINE_HINT("look closer")] to learn a little more about [src]."), \
		lore = "The PC-76 'Ringneck' is a compact 10mm handgun manufactured by Scarborough Arms. Its \
		design offers a compromise between the concealability of a smaller pistol and the substantial \
		cartridge favored by users who want more than a conventional lightweight sidearm can provide. \
		The result is a practical, unpretentious firearm intended for customers who consider portability \
		and stopping power equally important.<br>\
		<br>\
		Scarborough Arms developed the PC-76 for a market that extends well beyond formal military \
		procurement. Independent security contractors, private operators, and personnel working in \
		environments where a full-sized sidearm is inconvenient have all found uses for compact handguns \
		of its general class. Its 10mm chambering gives the PC-76 a reputation for considerable power \
		relative to its size, although the associated recoil and ammunition demands make it less forgiving \
		than smaller-caliber alternatives.<br>\
		<br>\
		The PC-76 is also widely encountered among Syndicate-affiliated organizations. Its dimensions \
		make it suitable for personnel who need to carry a sidearm without allowing it to dominate their \
		equipment loadout, while its cartridge offers a useful balance of power and availability. The \
		pistol's presence in Syndicate inventories has made it familiar to corporate security teams, \
		though its use is by no means limited to those groups.<br>\
		<br>\
		The Ringneck's commercial success has produced a complicated relationship between Scarborough \
		Arms and the many organizations that purchase or acquire its products. The company benefits from \
		a broad market for practical handguns, but widespread circulation inevitably means that its \
		firearms turn up in circumstances that do little to improve their public reputation. Scarborough \
		Arms generally responds to such concerns by emphasizing that the PC-76 is a commercially sold \
		firearm, not a declaration of allegiance.<br>\
		<br>\
		The PC-76's reputation rests on a simple proposition: a compact handgun does not need to be \
		exotic to be useful. It only needs to be small enough to carry, powerful enough to command respect, \
		and common enough that its owner can find ammunition when it matters." \
	)

/obj/item/gun/modular/ballistic/automatic/pistol/ringneck/indie
	name = "Ringneck-76"
	desc = "A service handgun popular among law enforcement, mercenaries, and independent spacers with discerning tastes. Chambered in 10mm."
	icon_state = "ringneck76"
	inhand_icon_state = "sa_indie"
	w_class = WEIGHT_CLASS_NORMAL
	spread = 5 //this one is normal sized, thus in theory its better, in theory at least

/obj/item/gun/modular/ballistic/automatic/pistol/ringneck/indie/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_REMOVED)

/obj/item/gun/modular/ballistic/automatic/pistol/ringneck/indie/add_deep_lore()
	AddElement(/datum/element/examine_lore, \
		lore_hint = span_notice("You can [EXAMINE_HINT("look closer")] to learn a little more about [src]."), \
		lore = "The Ringneck-76 is an independently produced service handgun occupying much the same \
		market niche as Scarborough Arms' PC-76 'Ringneck'. Chambered in 10mm, it offers the same broad \
		appeal that made compact, hard-hitting handguns popular among law enforcement officers, \
		mercenaries, and independent spacers: a manageable frame paired with a cartridge capable of \
		delivering substantial power.<br>\
		<br>\
		Despite the similarity in name and general purpose, the Ringneck-76 is not simply another \
		designation for Scarborough Arms' PC-76. It belongs to the independent side of the firearms \
		market, where smaller manufacturers and regional suppliers compete by offering alternatives \
		to established commercial platforms. The precise relationship between the two designs is a \
		frequent subject of speculation, although their shared market niche does not, by itself, establish \
		common manufacture or corporate ownership.<br>\
		<br>\
		Independent firearms such as the Ringneck-76 fill an important role in regions where access to \
		major manufacturers is inconsistent, procurement budgets are limited, or customers prefer not \
		to depend on a single supplier. Law enforcement agencies may appreciate a weapon that can be \
		acquired outside the usual corporate purchasing channels, while mercenaries and independent \
		spacers often prioritize availability and maintainability over the prestige of a recognized brand.<br>\
		<br>\
		The Ringneck-76's broad circulation has given it a reputation that is distinct from, but inevitably \
		compared with, that of the PC-76. Both appeal to users who want a compact 10mm handgun, yet the \
		independent model's place in the market is defined by its availability outside Scarborough Arms' \
		direct commercial ecosystem. Its presence in an armory does not necessarily indicate an affiliation \
		with any particular corporation or faction.<br>\
		<br>\
		In an industry dominated by enormous manufacturers and carefully negotiated procurement contracts, \
		independent firearms occupy a persistent niche. They are purchased when the major suppliers are \
		too expensive, too restrictive, too distant, or simply not an option. The Ringneck-76 is a product \
		of that market: a practical handgun whose identity is defined less by corporate branding than by \
		the customers who continue to find a use for it." \
	)

/obj/item/gun/modular/ballistic/automatic/pistol/asp
	name = "BC-81 \"Asp\""
	desc = "An armor-piercing combat handgun used by Syndicate strike teams, now primarily used by operatives of the Gorlex Marauders. Chambered in 5.7x39mm."
	icon = 'modular_panda/icons/obj/weapons/guns/48x32.dmi'
	worn_icon = 'modular_panda/icons/mob/clothing/back.dmi'
	lefthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'modular_panda/icons/mob/inhands/weapons/guns_righthand.dmi'
	icon_state = "asp"
	inhand_icon_state = "sa_generic"
	accepted_magazine_type = /obj/item/ammo_box/magazine/m57_39_asp
	fire_sound = 'modular_panda/sound/weapons/gun/pistol/asp.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/pistol/rack.ogg'
	lock_back_sound = 'modular_panda/sound/weapons/gun/pistol/lock_small.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/pistol/drop_small.ogg'
	recoil = 0.8
	spread = 6

/obj/item/gun/modular/ballistic/automatic/pistol/asp/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/gun/modular/ballistic/automatic/pistol/asp/add_deep_lore()
	AddElement(/datum/element/examine_lore, \
		lore_hint = span_notice("You can [EXAMINE_HINT("look closer")] to learn a little more about [src]."), \
		lore = "The BC-81 'Asp' is a Scarborough Arms combat handgun chambered in 5.7x39mm, developed \
		around a requirement that ordinary service pistols often struggle to satisfy: the ability to \
		threaten personnel wearing protective equipment. Its unusual cartridge and specialized role \
		distinguish it from the company's more conventional sidearms, placing the Asp firmly in the \
		market for customers who expect their opponents to be armed, armored, and thoroughly uncooperative.<br>\
		<br>\
		The BC-81 was never intended to be an inexpensive general-purpose handgun. Its ammunition and \
		specialized design make it a more deliberate procurement choice than a conventional service \
		pistol. For most civilian users, the capabilities offered by the Asp are unnecessary. For \
		specialized security units and military personnel expecting close-quarters engagements against \
		armored opposition, those same capabilities can justify the additional expense.<br>\
		<br>\
		The Asp's most notorious users have been Syndicate strike teams, particularly elements of the \
		Gorlex Marauders. In their hands, the BC-81 became associated with aggressive boarding actions \
		and operations in which defeating an opponent's protective equipment could be more important \
		than carrying a larger primary weapon. Its association with the Marauders has since overshadowed \
		its commercial origins, leading some observers to assume that Scarborough Arms designed the \
		pistol specifically for Syndicate service.<br>\
		<br>\
		Scarborough Arms has never needed to make such a claim. The BC-81's specialized capabilities \
		already provide a clear commercial justification for its existence, and the market for weapons \
		capable of challenging modern protective equipment extends well beyond any single organization. \
		Whether a customer is a licensed security contractor, a mercenary outfit, or a faction whose \
		procurement practices are best left unexamined is, officially, a matter for the relevant authorities.<br>\
		<br>\
		In practice, the Asp's reputation follows it wherever it goes. To its intended users, it is a \
		compact answer to an increasingly armored battlefield. To the people who find one pointed at them, \
		the distinction between a commercial product and a factional weapon is unlikely to be reassuring." \
	)

/obj/item/gun/modular/ballistic/automatic/pistol/rattlesnake
	name = "MP-84 \"Rattlesnake\""
	desc = "A machine pistol, used by Syndicate infiltrators and special forces back then, nowadays it's used as a weapon to be a reliable sidearm for combative personnel. Chambered in 9mm."
	icon_state = "rattlesnake"
	inhand_icon_state = "rattlesnake"
	accepted_magazine_type = /obj/item/ammo_box/magazine/m9mm_rattlesnake
	fire_sound = 'modular_panda/sound/weapons/gun/pistol/rattlesnake.ogg'
	dry_fire_sound = 'modular_panda/sound/weapons/gun/pistol/dry_fire.ogg'
	suppressed_sound = 'modular_panda/sound/weapons/gun/pistol/shot_suppressed.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert_alt.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert_alt.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release_alt.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release_alt.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/pistol/rack_small.ogg'
	lock_back_sound = 'modular_panda/sound/weapons/gun/pistol/lock_small.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/pistol/drop_small.ogg'
	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_BURST, FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_SEMIAUTO
	recoil = 0.5
	burst_size = 3
	burst_delay = 2
	fire_delay = 2
	spread = 8

/obj/item/gun/modular/ballistic/automatic/pistol/rattlesnake/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/gun/modular/ballistic/automatic/pistol/rattlesnake/add_deep_lore()
	AddElement(/datum/element/examine_lore, \
		lore_hint = span_notice("You can [EXAMINE_HINT("look closer")] to learn a little more about [src]."), \
		lore = "The MP-84m 'Cottonmouth' is a modified variant of Scarborough Arms' MP-84 machine pistol, \
		adapted to accommodate the larger 10mm cartridge. While the original Rattlesnake was designed \
		around the comparatively manageable 9mm round, the Cottonmouth reflects a different set of \
		priorities: greater projectile mass and increased stopping power, even at the expense of the \
		platform's original balance.<br>\
		<br>\
		The Cottonmouth's development is closely associated with the reuse and modification of existing \
		MP-84 stockpiles. Rather than replace an established weapon system outright, the modified design \
		offered a way to repurpose available firearms for users who preferred a more substantial cartridge. \
		Such conversions were particularly appealing to organizations with existing inventories of \
		Rattlesnakes, established maintenance infrastructure, and limited interest in purchasing an \
		entirely new weapon platform.<br>\
		<br>\
		The larger cartridge introduces its own complications. The Cottonmouth's magazine capacity is \
		reduced, and its handling characteristics differ from those of the original 9mm weapon. Although \
		the additional power is attractive in close-quarters engagements, it does not come without tradeoffs. \
		The resulting firearm is a specialized alternative to the Rattlesnake, not an uncomplicated \
		improvement upon it.<br>\
		<br>\
		The MP-84m became especially associated with Syndicate-affiliated personnel and other armed groups \
		that had access to surplus MP-84 weapons or the technical expertise required to modify them. Its \
		circulation through these networks helped establish the Cottonmouth as a recognizable variant \
		in its own right. Scarborough Arms' original platform proved flexible enough to support the \
		conversion, even if the resulting weapon departed from the original design's intended balance.<br>\
		<br>\
		The Cottonmouth illustrates a recurring principle in the arms trade: an established weapon does \
		not need to be perfect for every task if it can be adapted to meet a customer's immediate needs. \
		Scarborough Arms may have designed the original MP-84, but its long afterlife has been shaped \
		just as much by the organizations that continued to modify, repurpose, and distribute it." \
	)

/obj/item/gun/modular/ballistic/automatic/pistol/rattlesnake/cottonmouth
	name = "MP-84m Cottonmouth"
	desc = "A machine pistol obtained from Marauder stockpiles and heavily modified to accept a larger calibre, with a few largely-ignored drawbacks of 2-round burst and magazine capacity. Chambered in 10mm."
	icon_state = "cottonmouth"
	inhand_icon_state = "cottonmouth"
	fire_sound = 'modular_panda/sound/weapons/gun/pistol/asp.ogg'
	accepted_magazine_type = /obj/item/ammo_box/magazine/m10mm_cottonmouth
	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_BURST)
	recoil = 1
	burst_size = 2
	burst_delay = 2.5
	fire_delay = 2.5
	spread = 10

/obj/item/gun/modular/ballistic/automatic/pistol/rattlesnake/cottonmouth/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_REMOVED)

/obj/item/gun/modular/ballistic/automatic/pistol/rattlesnake/cottonmouth/add_deep_lore()
	AddElement(/datum/element/examine_lore, \
		lore_hint = span_notice("You can [EXAMINE_HINT("look closer")] to learn a little more about [src]."), \
		lore = "The MP-84m 'Cottonmouth' is an independently manufactured machine pistol developed as an \
		alternative to Scarborough Arms' MP-84 'Rattlesnake'. While the two weapons share a recognizable \
		design philosophy, the Cottonmouth distinguishes itself through its adoption of the larger 10mm \
		cartridge. This change reflects a different set of priorities: greater stopping power at the \
		expense of magazine capacity, ammunition economy, and some of the original platform's \
		handling characteristics.<br>\
		<br>\
		The Rattlesnake established a considerable presence throughout the sector, particularly among \
		private security contractors, mercenaries, and Syndicate-affiliated personnel. Its combination \
		of compact dimensions and automatic fire made it an attractive option for close-quarters work. \
		That success created an obvious opportunity for independent manufacturers: produce a comparable \
		weapon, adapt it to a different cartridge, and offer customers an alternative to purchasing \
		directly from Scarborough Arms or relying on its established supply networks.<br>\
		<br>\
		The Cottonmouth's 10mm chambering is its most significant departure from the Rattlesnake. The \
		heavier cartridge offers greater individual-shot power, appealing to users who consider the \
		original MP-84 insufficiently forceful for their requirements. However, the increased ammunition \
		demands impose their own limitations. The Cottonmouth carries fewer rounds, and its heavier \
		chambering makes it a specialized alternative rather than a straightforward improvement upon \
		the original design.<br>\
		<br>\
		Like many independently produced firearms, the Cottonmouth has circulated through a variety of \
		commercial and unofficial supply channels. Its practical design and compatibility with the \
		preferences of certain Syndicate-affiliated groups have helped it find an audience among \
		personnel who favor a compact automatic weapon with a more substantial cartridge. Its presence \
		in such inventories should not be mistaken for evidence of Scarborough Arms' involvement, however. \
		The Cottonmouth belongs to a separate manufacturing lineage, even if its inspiration is readily \
		apparent.<br>\
		<br>\
		Scarborough Arms has little incentive to publicly acknowledge every independent firearm that \
		resembles one of its successful designs. Independent manufacturers, meanwhile, have every reason \
		to emphasize the differences between their products and those of their larger competitors. The \
		result is an industry full of weapons that occupy similar niches while maintaining separate \
		corporate histories.<br>\
		<br>\
		The Cottonmouth is a product of that competition. Where the Rattlesnake represents Scarborough \
		Arms' established approach to the compact machine pistol, the Cottonmouth offers an independent \
		interpretation of the same concept, trading some of the original's capacity and convenience for \
		the greater force of a heavier cartridge. Whether that trade is worthwhile depends largely on \
		the person holding it." \
	)

/obj/item/gun/modular/ballistic/automatic/pistol/himehabu
	name = "PC-81 \"Himehabu\""
	desc = "An astonishingly compact machine pistol firing ultra-light projectiles, designed to be as small and concealable as possible while remaining a credible threat at very close range. Armor penetration is practically non-existent. Chambered in .22."
	icon_state = "himehabu"
	inhand_icon_state = "sa_generic"
	w_class = WEIGHT_CLASS_TINY
	accepted_magazine_type = /obj/item/ammo_box/magazine/m22lr_himehabu
	fire_sound = 'modular_panda/sound/weapons/gun/pistol/himehabu.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert_alt.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_insert_alt.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release_alt.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/pistol/mag_release_alt.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/pistol/rack_small.ogg'
	lock_back_sound = 'modular_panda/sound/weapons/gun/pistol/lock_small.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/pistol/drop_small.ogg'
	spread = 3
	recoil = 0.5

/obj/item/gun/modular/ballistic/automatic/pistol/himehabu/rubber
	spawn_magazine_type = /obj/item/ammo_box/magazine/m22lr_himehabu/rubber

/obj/item/gun/modular/ballistic/automatic/pistol/himehabu/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/gun/modular/ballistic/automatic/pistol/himehabu/add_deep_lore()
	AddElement(/datum/element/examine_lore, \
		lore_hint = span_notice("You can [EXAMINE_HINT("look closer")] to learn a little more about [src]."), \
		lore = "The PC-81 'Himehabu' is a Scarborough Arms compact machine pistol developed for customers \
		who considered a conventional sidearm too conspicuous, too cumbersome, or simply too much of a \
		commitment. Its astonishingly small frame and lightweight .22 projectiles were deliberate design \
		choices, allowing the weapon to be carried in circumstances where a larger firearm would be \
		inconvenient or immediately noticed.<br>\
		<br>\
		Scarborough Arms never intended the Himehabu to compete with full-sized service pistols. Its \
		diminutive ammunition offers little in the way of armor penetration, and the weapon's limited \
		practical stopping power makes it a poor choice for anyone expecting a prolonged firefight. \
		Instead, the PC-81 occupies a narrower market: concealed personal defense, discreet security work, \
		and operations where the ability to carry a weapon unnoticed is considered more important than \
		its performance against a properly equipped opponent.<br>\
		<br>\
		The Himehabu's reputation changed considerably after its adoption by Syndicate-affiliated \
		personnel. Its size made it particularly attractive to infiltrators and undercover operatives, \
		who valued a weapon that could be concealed beneath ordinary clothing with minimal difficulty. \
		Its appearance in clandestine operations eventually became so common that some security agencies \
		began treating the possession of one as suspicious in its own right, much to the annoyance of \
		legitimate civilian owners.<br>\
		<br>\
		Scarborough Arms has consistently maintained that the PC-81 is a commercial product and that \
		the behavior of its customers is beyond the manufacturer's control. The company has also declined \
		to comment on allegations that the Himehabu's design specifications were revised after feedback \
		from customers operating in environments where conventional firearms were difficult to carry. \
		Its official position remains that concealability is a legitimate consumer preference.<br>\
		<br>\
		The Himehabu is not a particularly impressive weapon when measured by conventional ballistic \
		standards. It is, however, a reminder that a firearm does not need to win a firefight to be useful \
		to someone who was never supposed to be armed in the first place." \
	)

/obj/item/gun/modular/ballistic/automatic/pistol/derringer
	name = "BA Spark"
	desc = "An easily concealable derringer. Its simple design and modest demand make the Spark a common project for trainee Bastion Armaments gunsmiths. Chambered in .38."
	icon_state = "derringer"
	inhand_icon_state = "hp_generic"
	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/derr38
	fire_sound = 'modular_panda/sound/weapons/gun/revolver/shot.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/revolver/load_bullet.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/revolver/empty.ogg'
	fire_sound_volume = 60
	dry_fire_sound = 'modular_panda/sound/weapons/gun/revolver/dry_fire.ogg'
	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_BURST)
	casing_ejector = FALSE
	internal_magazine = TRUE
	bolt_type = BOLT_TYPE_NO_BOLT
	tac_reloads = FALSE
	w_class = WEIGHT_CLASS_TINY

/obj/item/gun/modular/ballistic/automatic/pistol/derringer/get_ammo(countchambered = FALSE, countempties = TRUE)
	var/boolets = 0 //legacy var name maturity
	if (chambered && countchambered)
		boolets++
	if (magazine)
		boolets += magazine.ammo_count(countempties)
	return boolets

/obj/item/gun/modular/ballistic/automatic/pistol/derringer/examine(mob/user)
	. = ..()
	var/live_ammo = get_ammo(FALSE, FALSE)
	. += "[live_ammo ? live_ammo : "None"] of those are live rounds."

/obj/item/gun/modular/ballistic/automatic/pistol/derringer/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_BASTION)

/obj/item/gun/modular/ballistic/automatic/pistol/derringer/add_deep_lore()
	AddElement(/datum/element/examine_lore, \
		lore_hint = span_notice("You can [EXAMINE_HINT("look closer")] to learn a little more about [src]."), \
		lore = "The BA Spark occupies an unusual position in Bastion Armaments' product catalogue. It is neither \
		the company's flagship firearm nor a particularly ambitious engineering achievement. Instead, it \
		serves as one of the most enduring examples of Bastion's apprenticeship program, under which trainee \
		gunsmiths are permitted to assemble and finish simple commercial firearms under the supervision \
		of experienced technicians.<br>\
		<br>\
		The Spark's uncomplicated construction, modest material requirements, and limited commercial demand \
		make it particularly suitable for this purpose. New employees gain experience with machining, fitting, \
		and quality control without risking expensive components or delaying production of the company's \
		more commercially significant firearms. Each completed weapon is inspected before being accepted \
		into the company's inventory, although the precise amount of work performed by an individual trainee \
		varies considerably between production batches.<br>\
		<br>\
		The design itself has changed little over the years. Chambered in .38, the Spark offers a basic \
		defensive capability in an extremely compact package. Its limitations are well understood, and \
		Bastion makes little effort to market it as anything more than a simple, inexpensive firearm.<br>\
		<br>\
		Despite its humble origins, the Spark has developed a small following among civilian owners who \
		appreciate uncomplicated equipment. Some collectors also seek examples bearing the markings of \
		particularly old production batches, especially those manufactured during the company's earlier \
		apprenticeship programs.<br>\
		<br>\
		Bastion Armaments has occasionally been accused of using the Spark's continued commercial availability \
		as an excuse to keep its trainees occupied with low-margin work. The company maintains that the \
		program provides invaluable practical experience and that all apprentices must begin somewhere.<br>\
		<br>\
		An internal training document reportedly describes the Spark as 'an inexpensive opportunity to learn \
		from mistakes that would be considerably more expensive on a premium production line.' Bastion has \
		never confirmed the document's authenticity." \
	)

/obj/item/gun/modular/ballistic/automatic/pistol/derringer/gold
	name = "golden derringer"
	desc = "The golden sheen is somewhat counter-intuitive on a holdout weapon, but it looks cool. Uses .357 ammo."
	icon_state = "derringer_gold"
	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/derr357

/obj/item/gun/modular/ballistic/automatic/pistol/derringer/temblor
	name = "D-9 \"Temblor\""
	desc = "An easily concealable derriger. It was rarely used as an alternative to the PC-81 \"Himehabu\" during covert operations, but nowadays is just issued to civilian-station heads of staff for self-defense. Chambered in .357."
	icon_state = "derringer_syndie"
	inhand_icon_state = "sa_generic"
	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/derr357
	fire_sound_volume = 50 //Tactical stealth firing

/obj/item/gun/modular/ballistic/automatic/pistol/derringer/temblor/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SCARBOROUGH)

/obj/item/gun/modular/ballistic/automatic/pistol/derringer/temblor/add_deep_lore()
	AddElement(/datum/element/examine_lore, \
		lore_hint = span_notice("You can [EXAMINE_HINT("look closer")] to learn a little more about [src]."), \
		lore = "The D-9 'Temblor' is a compact derringer manufactured by Scarborough Arms, originally marketed \
		as a discreet personal-defense weapon for civilians who preferred something smaller than a conventional \
		handgun. Its simple construction and powerful .357 cartridge have made it a distinctive, if somewhat \
		unconventional, entry in the company's commercial catalogue.<br>\
		<br>\
		Despite its civilian origins, the Temblor found an unexpected audience among covert operatives. Its \
		diminutive size made it easy to conceal during assignments where carrying a conventional sidearm \
		would attract unwanted attention. For a time, it was considered alongside the PC-81 'Himehabu' as \
		an alternative backup weapon, although the two firearms served rather different purposes. The \
		Himehabu offered greater capacity, while the Temblor relied on the considerable power of its \
		individual shots. Neither was particularly forgiving of mistakes.<br>\
		<br>\
		The Temblor's association with covert operations eventually faded as specialized equipment improved \
		and its limitations became harder to overlook. Its extremely limited capacity made it unsuitable \
		for prolonged engagements, and its heavy cartridge was arguably excessive for a weapon intended \
		to be carried discreetly. Scarborough Arms, for its part, never officially marketed the D-9 as a \
		military or intelligence-service weapon, preferring to emphasize its civilian defensive applications.<br>\
		<br>\
		The derringer found a second life through procurement contracts for civilian-class Syndicate stations. \
		Heads of staff stationed at smaller facilities are not always accompanied by dedicated protective \
		details, and the Temblor's compact dimensions made it an appealing option for administrators \
		requiring a personal defensive weapon without carrying a full-sized pistol. Its subsequent appearance \
		in station armories has occasionally led to speculation that the D-9 was designed specifically for \
		corporate personnel, a claim Scarborough Arms has repeatedly denied.<br>\
		<br>\
		The company's position is that the Temblor is simply a commercial firearm whose customers have found \
		a variety of uses for it. Given the number of its products that have turned up in places their \
		designers presumably never intended, Scarborough Arms is unlikely to find this distinction difficult \
		to defend." \
	)

/obj/item/gun/modular/ballistic/automatic/pistol/nt23
	name = "\improper NT-23"
	desc = "Nanotrasen's standard service pistol. 10 rounds of 10mm ammunition make the NT-23 deadlier than many other service pistols, but its weight and bulk have made it unpopular as a sidearm. It has largely been phased out outside of security officers on Nanotrasen civilian-class stations in the Spinward Sector. Chambered in 10mm."
	icon_state = "nt23"
	inhand_icon_state = "nt_generic"
	w_class = WEIGHT_CLASS_NORMAL
	accepted_magazine_type = /obj/item/ammo_box/magazine/nt23
	fire_sound = 'modular_panda/sound/weapons/gun/pistol/cm23.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/pistol/candor_cocked.ogg'
	lock_back_sound = 'modular_panda/sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/pistol/slide_drop.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/pistol/candor_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/pistol/candor_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/pistol/candor_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/pistol/candor_unload.ogg'

/obj/item/gun/modular/ballistic/automatic/pistol/nt23/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)

/obj/item/gun/modular/ballistic/automatic/pistol/nt23/add_deep_lore()
	AddElement(/datum/element/examine_lore, \
		lore_hint = span_notice("You can [EXAMINE_HINT("look closer")] to learn a little more about [src]."), \
		lore = "For much of its service life, the NT-23 was the standard sidearm issued to Nanotrasen security \
		personnel. Chambered in 10mm, it was designed around a philosophy that favored substantial ammunition \
		and robust construction over the lightweight handling characteristics increasingly expected of modern \
		service pistols.<br>\
		<br>\
		The design reflected an earlier period in Nanotrasen's security policy, when the possibility of armed \
		Syndicate incursions influenced even the most mundane equipment decisions. A service pistol was expected \
		to provide a meaningful defensive capability against hostile personnel, rather than simply serve as \
		a weapon of last resort. The NT-23 consequently acquired a reputation for hitting considerably harder \
		than many of its contemporaries, although its bulk and weight made it unpopular among officers required \
		to carry it throughout an entire shift.<br>\
		<br>\
		As Nanotrasen's security apparatus expanded, the disadvantages of the NT-23 became increasingly \
		difficult to ignore. Lightweight alternatives offered better handling for routine patrols, while newer \
		weapon designs allowed the corporation to simplify procurement and reduce the burden of carrying \
		additional equipment. The NT-23 gradually disappeared from frontline inventories, surviving primarily \
		where replacement programs were delayed or local administrators preferred familiar equipment.<br>\
		<br>\
		Its continued presence aboard civilian-class stations in the Spinward Sector is a particularly \
		well-documented example of Nanotrasen's uneven modernization. These facilities often operate under \
		tighter equipment budgets than major research installations, and their security departments are \
		not always considered a priority for new procurement contracts.<br>\
		<br>\
		Some officers regard the NT-23 as an outdated but dependable piece of equipment. Others consider it \
		an unnecessarily heavy reminder of an era when Nanotrasen attempted to solve nearly every security \
		problem by issuing its employees a larger cartridge.<br>\
		<br>\
		The weapons division has declined to comment on suggestions that the NT-23's retirement schedule \
		has been extended more than once to accommodate existing ammunition contracts." \
	)

/obj/item/gun/modular/ballistic/automatic/pistol/nt70
	name = "NT-70 machine pistol"
	desc = "A compact machine pistol designed to rapidly fire 9mm ammo. Popular with officers and certain specialized units, the NT-70 is incredibly dangerous at close range. Chambered in 9mm."
	icon_state = "nt70"
	inhand_icon_state = "nt_generic"
	accepted_magazine_type = /obj/item/ammo_box/magazine/m9mm_nt70
	burst_size = 3
	burst_delay = 1
	fire_delay = 1
	gun_firemodes = list(FIREMODE_SEMIAUTO, FIREMODE_FULLAUTO)
	default_firemode = FIREMODE_SEMIAUTO
	recoil = 0.8
	spread = 8
	fire_sound = 'modular_panda/sound/weapons/gun/pistol/cm70.ogg'

/obj/item/gun/modular/ballistic/automatic/pistol/nt70/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.2 SECONDS)

/obj/item/gun/modular/ballistic/automatic/pistol/nt70/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)

/obj/item/gun/modular/ballistic/automatic/pistol/nt70/add_deep_lore()
	AddElement(/datum/element/examine_lore, \
		lore_hint = span_notice("You can [EXAMINE_HINT("look closer")] to learn a little more about [src]."), \
		lore = "The NT-70 was developed to address a persistent problem in Nanotrasen's security doctrine: \
		not every armed employee is a conventional security officer, and not every dangerous encounter takes \
		place at a comfortable distance. Boarding teams, executive protection details, and specialized response \
		units frequently operate in environments where a full-sized firearm is cumbersome and a conventional \
		sidearm offers limited capacity for sustained defensive fire.<br>\
		<br>\
		Nanotrasen's answer was a compact machine pistol chambered in 9mm. The NT-70 sacrifices the handling \
		characteristics of a conventional service pistol in exchange for a substantially higher volume of fire \
		at close range. Its small dimensions make it easier to carry alongside other equipment, although its \
		controllability and ammunition consumption have remained subjects of debate since its introduction.<br>\
		<br>\
		The weapon has enjoyed particular success among specialized security units, whose personnel receive \
		training and equipment budgets unavailable to ordinary station officers. Certain senior administrators \
		have also developed an enthusiasm for the NT-70, though training records suggest that this enthusiasm \
		does not always correspond to the amount of time spent practicing with it.<br>\
		<br>\
		Official Nanotrasen documentation describes the NT-70 as a specialized defensive weapon intended for \
		qualified personnel. The company's legal department has been careful to emphasize that its issuance \
		does not constitute an endorsement of automatic weapons for routine workplace security.<br>\
		<br>\
		This clarification has appeared in several revisions of the NT-70's training documentation, generally \
		following incidents in which someone interpreted the word 'compact' as meaning 'appropriate for everyone.'" \
	)

/obj/item/gun/modular/ballistic/automatic/pistol/nt357
	name = "\improper NT-357"
	desc = "A powerful semi-automatic handgun designed for Nanotrasen's security for megafauna removal, as standard handguns had proven ineffective as backup weapons. The heft and power of the weapon have made it a status symbol among the few Nanotrasen officers able to requisition one. Chambered in .357."
	icon_state = "nt357"
	inhand_icon_state = "nt_generic"
	w_class = WEIGHT_CLASS_NORMAL
	accepted_magazine_type = /obj/item/ammo_box/magazine/nt357
	fire_sound = 'modular_panda/sound/weapons/gun/pistol/deagle.ogg'
	rack_sound = 'modular_panda/sound/weapons/gun/pistol/candor_cocked.ogg'
	lock_back_sound = 'modular_panda/sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'modular_panda/sound/weapons/gun/pistol/slide_drop.ogg'
	load_sound = 'modular_panda/sound/weapons/gun/pistol/candor_reload.ogg'
	load_empty_sound = 'modular_panda/sound/weapons/gun/pistol/candor_reload.ogg'
	eject_sound = 'modular_panda/sound/weapons/gun/pistol/candor_unload.ogg'
	eject_empty_sound = 'modular_panda/sound/weapons/gun/pistol/candor_unload.ogg'
	recoil = 0.5

/obj/item/gun/modular/ballistic/automatic/pistol/nt357/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_NANOTRASEN)

/obj/item/gun/modular/ballistic/automatic/pistol/nt357/add_deep_lore()
	AddElement(/datum/element/examine_lore, \
		lore_hint = span_notice("You can [EXAMINE_HINT("look closer")] to learn a little more about [src]."), \
		lore = "The NT-357 was developed following a series of incidents in which conventional security sidearms \
		proved insufficient against large, aggressive fauna encountered during Nanotrasen's frontier expansion. \
		While standard service pistols were considered adequate for personnel security and routine law enforcement, \
		the corporation's safety division found itself repeatedly requisitioning specialized firearms for the \
		removal of dangerous wildlife from mining installations, research outposts, and newly established facilities.<br>\
		<br>\
		The NT-357 was intended to bridge the gap between a conventional sidearm and a dedicated hunting weapon. \
		Its powerful cartridge and substantial construction provided considerably more stopping power than \
		Nanotrasen's standard pistols, while its semi-automatic action allowed for faster follow-up shots than \
		many comparable heavy handguns. The result was a weapon that fulfilled its original purpose admirably, \
		although its weight and ammunition requirements made it an impractical choice for routine security duties.<br>\
		<br>\
		Despite these limitations, the NT-357 acquired an unexpected reputation among Nanotrasen's security \
		establishment. Requisitions for the weapon gradually expanded beyond wildlife-control teams, with senior \
		officers and specialized response personnel arguing that the same characteristics which made it effective \
		against dangerous fauna also made it a valuable contingency weapon against heavily armed intruders.<br>\
		<br>\
		Nanotrasen's procurement division has repeatedly attempted to discourage unnecessary requisitions, \
		citing the weapon's expense and the limited circumstances in which its capabilities are required. \
		These efforts have been only partially successful. In some security departments, possession of an \
		NT-357 has become an informal indicator of seniority, operational experience, or simply an officer's \
		ability to convince a departmental administrator that a particularly expensive handgun is an essential \
		workplace safety requirement.<br>\
		<br>\
		The weapons division maintains that the NT-357 is a specialized tool, not a status symbol. Its internal \
		correspondence suggests that this distinction has become increasingly difficult to enforce." \
	)
