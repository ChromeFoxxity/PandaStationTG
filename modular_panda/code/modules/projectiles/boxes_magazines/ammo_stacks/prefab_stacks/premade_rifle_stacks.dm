// 8x50mmR (Illestren Hunting Rifle)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a8_50r
	ammo_type = /obj/item/shiptest_ammo_casing/a8_50r
	max_ammo = 10

/obj/item/storage/box/ammo/a8_50r
	name = "box of 8x50mmR ammo"
	desc = "A box of standard 8x50mm ammo."
	icon_state = "8x50mmbox"

/obj/item/storage/box/ammo/a8_50r/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a8_50r = 4)
	generate_items_inside(items_inside,src)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a8_50r/hp
	ammo_type = /obj/item/shiptest_ammo_casing/a8_50r/hp

/obj/item/storage/box/ammo/a8_50r/hp
	name = "box of hollow-point 8x50mmR ammo"
	desc = "A box of hollow-point 8x50mm ammo, designed to cause massive damage at the cost of armor penetration."
	icon_state = "8x50mmbox-hp"

/obj/item/storage/box/ammo/a8_50r/hp/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a8_50r/hp = 4)
	generate_items_inside(items_inside,src)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a8_50r/match
	ammo_type = /obj/item/shiptest_ammo_casing/a8_50r/match
	max_ammo = 10

/obj/item/storage/box/ammo/a8_50r/match
	name = "box of 8x50mmR match ammo"
	desc = "A box of match-grade 8x50mmR ammo."
	icon_state = "8x50mmbox-match"

/obj/item/storage/box/ammo/a8_50r/match/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a8_50r/match = 4)
	generate_items_inside(items_inside,src)

// 5.56x42mm (CM82, Hydra variants)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a556_42
	ammo_type = /obj/item/shiptest_ammo_casing/a556_42
	max_ammo = 15

/obj/item/storage/box/ammo/a556_42
	name = "box of 5.56x42mm ammo"
	desc = "A box of standard 5.56x42mm ammo."
	icon_state = "a556_42box_big"

/obj/item/storage/box/ammo/a556_42/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a556_42 = 4)
	generate_items_inside(items_inside,src)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a556_42/hp
	ammo_type = /obj/item/shiptest_ammo_casing/a556_42/hp
	max_ammo = 15

/obj/item/storage/box/ammo/a556_42/hp
	name = "box of hollow-point 5.56x42mm ammo"
	desc = "A box of 5.56x42mm hollow-point ammo."
	icon_state = "a556_42box_big-hp"

/obj/item/storage/box/ammo/a556_42/hp/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a556_42/hp = 4)
	generate_items_inside(items_inside,src)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a556_42/ap
	ammo_type = /obj/item/shiptest_ammo_casing/a556_42/ap
	max_ammo = 15

/obj/item/storage/box/ammo/a556_42/ap
	name = "box of armor-piercing 5.56x42mm ammo"
	desc = "A box of standard 5.56x42mm armor-piercing ammo."
	icon_state = "a556_42box_big-ap"

/obj/item/storage/box/ammo/a556_42/ap/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a556_42/ap = 4)
	generate_items_inside(items_inside,src)

// 7.62x40mm (SKM Rifles)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a762_40
	ammo_type = /obj/item/shiptest_ammo_casing/a762_40
	max_ammo = 15

/obj/item/storage/box/ammo/a762_40
	name = "box of 7.62x40mm ammo"
	desc = "A box of standard 7.62x40mm ammo."
	icon_state = "a762_40box"

/obj/item/storage/box/ammo/a762_40/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a762_40 = 4)
	generate_items_inside(items_inside,src)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a762_40/hp
	ammo_type = /obj/item/shiptest_ammo_casing/a762_40/hp
	max_ammo = 15

/obj/item/storage/box/ammo/a762_40/hp
	name = "box of hollow-point 7.62x40mm ammo"
	desc = "A box of standard 7.62x40mm hollow-point ammo."
	icon_state = "a762_40box-hp"

/obj/item/storage/box/ammo/a762_40/hp/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a762_40/hp = 4)
	generate_items_inside(items_inside,src)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a762_40/ap
	ammo_type = /obj/item/shiptest_ammo_casing/a762_40/ap
	max_ammo = 15

/obj/item/storage/box/ammo/a762_40/ap
	name = "box of armor-piercing 7.62x40mm  ammo"
	desc = "A box of standard 7.62x40mm armor-piercing ammo."
	icon_state = "a762_40box-ap"

/obj/item/storage/box/ammo/a762_40/ap/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a762_40/ap = 4)
	generate_items_inside(items_inside,src)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a762_40/rubber
	ammo_type = /obj/item/shiptest_ammo_casing/a762_40/rubber
	max_ammo = 15

/obj/item/storage/box/ammo/a762_40/rubber
	name = "box of rubber 7.62x40mm ammo"
	desc = "A box of standard 7.62x40mm rubber ammo."
	icon_state = "a762_40box-rubbershot"

/obj/item/storage/box/ammo/a762_40/rubber/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a762_40/rubber = 4)
	generate_items_inside(items_inside,src)

//.308 (M514 EBR & CM-GAL-S)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a308
	ammo_type = /obj/item/shiptest_ammo_casing/a308
	max_ammo = 10

/obj/item/storage/box/ammo/a308
	name = "box of .308 ammo"
	desc = "A box of standard .308 ammo."
	icon_state = "a308box"

/obj/item/storage/box/ammo/a308/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a308 = 4)
	generate_items_inside(items_inside,src)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a308/hp
	ammo_type = /obj/item/shiptest_ammo_casing/a308/hp
	max_ammo = 10

/obj/item/storage/box/ammo/a308/hp
	name = "box of hollow-point .308 ammo"
	desc = "A box of .308 hollow-point ammo."
	icon_state = "a308box-hp"

/obj/item/storage/box/ammo/a308/hp/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a308/hp = 4)
	generate_items_inside(items_inside,src)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a308/ap
	ammo_type = /obj/item/shiptest_ammo_casing/a308/ap
	max_ammo = 10

/obj/item/storage/box/ammo/a308/ap
	name = "box of armor-piercing .308 ammo"
	desc = "A box of .308 armor-piercing ammo."
	icon_state = "a308box-ap"

/obj/item/storage/box/ammo/a308/ap/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a308/ap = 4)
	generate_items_inside(items_inside,src)

/obj/item/storage/box/ammo/a308/nt
	icon_state = "a308box_nt"

/obj/item/storage/box/ammo/a308/hp/nt
	icon_state = "a308box_nt-hp"

/obj/item/storage/box/ammo/a308/ap/nt
	icon_state = "a308box_nt-ap"

