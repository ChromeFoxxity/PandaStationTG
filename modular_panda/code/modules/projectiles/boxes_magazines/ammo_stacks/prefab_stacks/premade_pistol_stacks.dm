// 10mm (Stechkin)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c10mm
	ammo_type = /obj/item/shiptest_ammo_casing/c10mm
	max_ammo = 15

/obj/item/storage/box/ammo/c10mm
	name = "box of 10mm ammo"
	desc = "A box of standard 10mm ammo."
	icon_state = "10mmbox"

/obj/item/storage/box/ammo/c10mm/PopulateContents()
	..()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c10mm = 4)
	generate_items_inside(items_inside,src)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c10mm/surplus
	ammo_type = /obj/item/shiptest_ammo_casing/c10mm/surplus
	custom_materials = list(/datum/material/iron = 4000)

/obj/item/storage/box/ammo/c10mm/surplus
	name = "box of surplus 10mm ammo"
	desc = "A box of low-quality 10mm ammo."
	icon_state = "10mmbox-surplus"

/obj/item/storage/box/ammo/c10mm/surplus/PopulateContents()
	..()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c10mm = 4)
	generate_items_inside(items_inside,src)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c10mm/ap
	ammo_type = /obj/item/shiptest_ammo_casing/c10mm/ap

/obj/item/storage/box/ammo/c10mm/ap
	name = "box of armor-piercing 10mm ammo"
	desc = "A box of 10mm armor-piercing ammo, designed to penetrate through armor at the cost of total damage."
	icon_state = "10mmbox-ap"

/obj/item/storage/box/ammo/c10mm/ap/PopulateContents()
	..()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c10mm/ap = 4)
	generate_items_inside(items_inside,src)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c10mm/hp
	ammo_type = /obj/item/shiptest_ammo_casing/c10mm/hp

/obj/item/storage/box/ammo/c10mm/hp
	name = "box of hollow-point 10mm ammo"
	desc = "A box of 10mm hollow-point ammo, designed to cause massive tissue damage at the cost of armor penetration."
	icon_state = "10mmbox-hp"

/obj/item/storage/box/ammo/c10mm/hp/PopulateContents()
	..()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c10mm/hp = 4)
	generate_items_inside(items_inside,src)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c10mm/rubber
	ammo_type = /obj/item/shiptest_ammo_casing/c10mm/rubber

/obj/item/storage/box/ammo/c10mm/rubber
	name = "box of rubber 10mm ammo"
	desc = "A box of 10mm rubbershot ammo, designed to disable targets without causing serious damage."
	icon_state = "10mmbox-rubbershot"

/obj/item/storage/box/ammo/c10mm/rubber/PopulateContents()
	..()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c10mm/rubber = 4)
	generate_items_inside(items_inside,src)

/obj/item/storage/box/ammo/c10mm/nt
	icon_state = "10mmbox_nt"

/obj/item/storage/box/ammo/c10mm/ap/nt
	icon_state = "10mmbox_nt-ap"

/obj/item/storage/box/ammo/c10mm/hp/nt
	icon_state = "10mmbox_nt-hp"

/obj/item/storage/box/ammo/c10mm/rubber/nt
	icon_state = "10mmbox_nt-rubbershot"

// 9mm (Commander + SABR)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c9mm
	ammo_type = /obj/item/shiptest_ammo_casing/c9mm
	max_ammo = 15

/obj/item/storage/box/ammo/c9mm
	name = "box of 9mm ammo"
	desc = "A box of standard 9mm ammo."
	icon_state = "9mmbox"

/obj/item/storage/box/ammo/c9mm/PopulateContents()
	..()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c9mm = 4)
	generate_items_inside(items_inside,src)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c9mm/surplus
	ammo_type = /obj/item/shiptest_ammo_casing/c9mm/surplus
	custom_materials = list(/datum/material/iron = 4000)

/obj/item/storage/box/ammo/c9mm/surplus
	name = "box of surplus 9mm ammo"
	desc = "A box of low-quality 9mm ammo."
	icon_state = "9mmbox-surplus"

/obj/item/storage/box/ammo/c9mm/surplus/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c9mm/surplus = 4)
	generate_items_inside(items_inside,src)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c9mm/ap
	ammo_type = /obj/item/shiptest_ammo_casing/c9mm/ap

/obj/item/storage/box/ammo/c9mm/ap
	name = "box of armor-piercing 9mm ammo"
	desc = "A box of 9mm armor-piercing ammo, designed to penetrate through armor at the cost of total damage."
	icon_state = "9mmbox-ap"

/obj/item/storage/box/ammo/c9mm/ap/PopulateContents()
	..()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c9mm/ap = 4)
	generate_items_inside(items_inside,src)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c9mm/hp
	ammo_type = /obj/item/shiptest_ammo_casing/c9mm/hp

/obj/item/storage/box/ammo/c9mm/hp
	name = "box of hollow-point 9mm ammo"
	desc = "A box of 9mm hollow-point ammo, designed to cause massive tissue damage at the cost of armor penetration."
	icon_state = "9mmbox-hp"

/obj/item/storage/box/ammo/c9mm/hp/PopulateContents()
	..()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c9mm/hp = 4)
	generate_items_inside(items_inside,src)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c9mm/rubber
	ammo_type = /obj/item/shiptest_ammo_casing/c9mm/rubber

/obj/item/storage/box/ammo/c9mm/rubber
	name = "box of rubber 9mm ammo"
	desc = "A box of 9mm rubbershot ammo, designed to disable targets without causing serious damage."
	icon_state = "9mmbox-rubbershot"

/obj/item/storage/box/ammo/c9mm/rubber/PopulateContents()
	..()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c9mm/rubber = 4)
	generate_items_inside(items_inside,src)

/obj/item/storage/box/ammo/c9mm/nt
	icon_state = "9mmbox_nt"

/obj/item/storage/box/ammo/c9mm/ap/nt
	icon_state = "9mmbox_nt-ap"

/obj/item/storage/box/ammo/c9mm/hp/nt
	icon_state = "9mmbox_nt-hp"

/obj/item/storage/box/ammo/c9mm/rubber/nt
	icon_state = "9mmbox_nt-rubbershot"

// .22 LR (Himehabu, Pounder)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c22lr
	ammo_type = /obj/item/shiptest_ammo_casing/c22lr
	max_ammo = 25

/obj/item/storage/box/ammo/c22lr
	name = "box of .22 LR ammo"
	desc = "A box of standard .22 LR ammo."
	icon_state = "22lrbox"

/obj/item/storage/box/ammo/c22lr/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c22lr = 4)
	generate_items_inside(items_inside,src)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c22lr/surplus
	ammo_type = /obj/item/shiptest_ammo_casing/c22lr/surplus
	max_ammo = 25
	custom_materials = list(/datum/material/iron = 4000)

/obj/item/storage/box/ammo/c22lr/surplus
	name = "box of surplus .22 LR ammo"
	desc = "A box of low-quality .22 LR ammo."
	icon_state = "22lrbox-surplus"

/obj/item/storage/box/ammo/c22lr/surplus/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c22lr/surplus = 4)
	generate_items_inside(items_inside,src)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c22lr/ap
	ammo_type = /obj/item/shiptest_ammo_casing/c22lr/ap
	max_ammo = 25

/obj/item/storage/box/ammo/c22lr/ap
	name = "box of armor-piercing .22 LR  ammo"
	desc = "A box of .22 LR armor-piercing ammo, designed to penetrate through armor at the cost of total damage."
	icon_state = "22lrbox-ap"

/obj/item/storage/box/ammo/c22lr/ap/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c22lr/ap = 4)
	generate_items_inside(items_inside,src)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c22lr/hp
	ammo_type = /obj/item/shiptest_ammo_casing/c22lr/hp
	max_ammo = 25

/obj/item/storage/box/ammo/c22lr/hp
	name = "box of hollow-point .22 LR ammo"
	desc = "A box of .22 LR hollow-point ammo, designed to cause massive tissue damage at the cost of armor penetration."
	icon_state = "22lrbox-hp"

/obj/item/storage/box/ammo/c22lr/hp/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c22lr/hp = 4)
	generate_items_inside(items_inside,src)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c22lr/rubber
	ammo_type = /obj/item/shiptest_ammo_casing/c22lr/rubber
	max_ammo = 25

/obj/item/storage/box/ammo/c22lr/rubber
	name = "box of .22 LR rubber ammo"
	desc = "A box of .22 LR rubber ammo."
	icon_state = "22lrbox-rubbershot"

/obj/item/storage/box/ammo/c22lr/rubber/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c22lr/rubber = 4)
	generate_items_inside(items_inside,src)

// .357

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a357
	ammo_type = /obj/item/shiptest_ammo_casing/a357

/obj/item/storage/box/ammo/a357
	name = "box of .357 ammo"
	desc = "A box of standard .357 ammo."
	icon_state = "357box"

/obj/item/storage/box/ammo/a357/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a357 = 4)
	generate_items_inside(items_inside,src)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a357/match
	ammo_type = /obj/item/shiptest_ammo_casing/a357/match

/obj/item/storage/box/ammo/a357/match
	name = "box of match .357 ammo"
	desc = "A box of match-grade .357 ammo."
	icon_state = "357box-match"

/obj/item/storage/box/ammo/a357/match/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a357/match = 4)
	generate_items_inside(items_inside,src)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a357/hp
	ammo_type = /obj/item/shiptest_ammo_casing/a357/hp

/obj/item/storage/box/ammo/a357/hp
	name = "box of hollow-point .357 ammo"
	desc = "A box of .357 hollow-point ammo."
	icon_state = "357box-hp"

/obj/item/storage/box/ammo/a357/hp/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a357/hp = 4)
	generate_items_inside(items_inside,src)

/obj/item/storage/box/ammo/a357/nt
	icon_state = "357box_nt"

/obj/item/storage/box/ammo/a357/match/nt
	icon_state = "357box_nt-match"

/obj/item/storage/box/ammo/a357/hp/nt
	icon_state = "357box_nt-hp"

/obj/item/storage/box/ammo/a357/sa
	icon_state = "357box_sa"

/obj/item/storage/box/ammo/a357/match/sa
	icon_state = "357box_sa-match"

/obj/item/storage/box/ammo/a357/hp/sa
	icon_state = "357box_sa-hp"

// .45-70 (Hunting Revolver, Beacon)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a4570
	ammo_type = /obj/item/shiptest_ammo_casing/a4570
	max_ammo = 6

/obj/item/storage/box/ammo/a4570
	name = "box of .45-70 ammo"
	desc = "A box of top grade .45-70 ammo. These rounds do significant damage with average performance against armor."
	icon_state = "4570"

/obj/item/storage/box/ammo/a4570/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a4570 = 4)
	generate_items_inside(items_inside,src)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a4570/match
	ammo_type = /obj/item/shiptest_ammo_casing/a4570/match

/obj/item/storage/box/ammo/a4570/match
	name = "box of match .45-70 ammo"
	desc = "A 12-round ammo box for .45-70 revolvers. These match rounds travel faster, perform better against armor, and can ricochet off targets."
	icon_state = "4570-match"

/obj/item/storage/box/ammo/a4570/match/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a4570/match = 4)
	generate_items_inside(items_inside,src)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a4570/hp
	ammo_type = /obj/item/shiptest_ammo_casing/a4570/hp

/obj/item/storage/box/ammo/a4570/hp
	name = "box of hollow-point .45-70 ammo"
	desc = "A 12-round ammo box for .45-70 revolvers. These hollow point rounds do legendary damage against soft targets, but are nearly ineffective against armored ones."
	icon_state = "4570-hp"

/obj/item/storage/box/ammo/a4570/hp/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a4570/hp = 4)
	generate_items_inside(items_inside,src)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a4570/explosive
	ammo_type = /obj/item/shiptest_ammo_casing/a4570/explosive

/obj/item/storage/box/ammo/a4570/explosive
	name = "box of explosive .45-70 ammo"
	desc = "A 12-round ammo box for .45-70 revolvers. These explosive rounds contain a small explosive charge that detonates on impact, creating large wounds and potentially removing limbs."
	icon_state = "4570-explosive"

/obj/item/storage/box/ammo/a4570/explosive/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a4570/explosive = 4)
	generate_items_inside(items_inside,src)

// .38 Special

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c38
	ammo_type = /obj/item/shiptest_ammo_casing/c38
	max_ammo = 15

/obj/item/storage/box/ammo/c38
	name = "box of .38 ammo"
	desc = "A box of standard .38 Special ammo."
	icon_state = "38box"

/obj/item/storage/box/ammo/c38/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c38 = 4)
	generate_items_inside(items_inside,src)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c38/surplus
	ammo_type = /obj/item/shiptest_ammo_casing/c38/surplus
	custom_materials = list(/datum/material/iron = 4000)

/obj/item/storage/box/ammo/c38/surplus
	name = "box of surplus .38 ammo"
	desc = "A box of low-quality .38 Special ammo."
	icon_state = "38box-surplus"

/obj/item/storage/box/ammo/c38/surplus/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c38/surplus = 4)
	generate_items_inside(items_inside,src)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c38/trac
	ammo_type = /obj/item/shiptest_ammo_casing/c38/trac

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c38/match
	ammo_type = /obj/item/shiptest_ammo_casing/c38/match

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c38/bouncy
	ammo_type = /obj/item/shiptest_ammo_casing/c38/match/bouncy

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c38/dumdum
	ammo_type = /obj/item/shiptest_ammo_casing/c38/dumdum

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c38/hotshot
	ammo_type = /obj/item/shiptest_ammo_casing/c38/hotshot

/obj/item/storage/box/ammo/c38/hotshot
	name = "box of .38 hearth ammo"
	desc = "An unorthodox .38 Special cartridge infused with hearthflame. Catches the target on fire."
	icon_state = "38hotshot"

/obj/item/storage/box/ammo/c38/hotshot/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c38/hotshot = 4)
	generate_items_inside(items_inside,src)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c38/iceblox
	ammo_type = /obj/item/shiptest_ammo_casing/c38/iceblox

/obj/item/storage/box/ammo/c38/iceblox
	name = "box of .38 chilled ammo"
	desc = "An unorthodox .38 Special cartridge infused with wine of ice. Chills the target, slowing them down."
	icon_state = "38iceblox"

/obj/item/storage/box/ammo/c38/iceblox/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/c38/iceblox = 4)
	generate_items_inside(items_inside,src)

// 44 Solarian

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a44sol
	ammo_type = /obj/item/shiptest_ammo_casing/a44sol
	max_ammo = 12

/obj/item/storage/box/ammo/a44sol
	name = "box of .44 solarian ammo"
	desc = "A box of standard .44 solarian ammo."
	icon_state = "a44sol"

/obj/item/storage/box/ammo/a44sol/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a44sol = 4)
	generate_items_inside(items_inside,src)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a44sol/rubber
	ammo_type = /obj/item/shiptest_ammo_casing/a44sol/rubber

/obj/item/storage/box/ammo/a44sol/rubber
	name = "box of rubber .44 solarian ammo"
	desc = "A box of .44 solarian rubbershot ammo, designed to disable targets without causing serious damage."
	icon_state = "a44sol-rubber"

/obj/item/storage/box/ammo/a44sol/rubber/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a44sol/rubber = 4)
	generate_items_inside(items_inside,src)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a44sol/hp
	ammo_type = /obj/item/shiptest_ammo_casing/a44sol/hp

/obj/item/storage/box/ammo/a44sol/hp
	name = "box of hollow-point .44 solarian ammo"
	desc = "A box of .44 solarian hollow-point ammo, designed to disable targets without causing serious damage."
	icon_state = "a44sol-hp"

/obj/item/storage/box/ammo/a44sol/hp/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a44sol/hp = 4)
	generate_items_inside(items_inside,src)
