// .50 BMG (Sniper)

/obj/item/storage/box/ammo/a50box
	name = "box of .50BMG ammo"
	desc = "A box of standard .50BMG ammo."
	icon_state = "a50box"

/obj/item/storage/box/ammo/a50box/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/p50 = 4)
	generate_items_inside(items_inside,src)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/p50
	ammo_type = /obj/item/shiptest_ammo_casing/p50
	max_ammo = 5

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/p50/soporific
	ammo_type = /obj/item/shiptest_ammo_casing/p50/soporific

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/p50/penetrator
	ammo_type = /obj/item/shiptest_ammo_casing/p50/penetrator

// 8x58mm Caseless (SSG-669C)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a858
	ammo_type = /obj/item/shiptest_ammo_casing/caseless/a858
	max_ammo = 5

/obj/item/storage/box/ammo/a858
	name = "box of 8x58mm caseless ammo"
	desc = "A box of 8x58mm caseless rounds."
	icon_state = "8x58mmbox"

/obj/item/storage/box/ammo/a858/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a858 = 4)
	generate_items_inside(items_inside,src)

// .300 Magnum (Smile Rifle)

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a300
	ammo_type = /obj/item/shiptest_ammo_casing/a300
	max_ammo = 5

/obj/item/storage/box/ammo/a300
	name = "box of .300 magnum ammo"
	desc = "A box of standard .300 Magnum ammo."
	icon_state = "300box"

/obj/item/storage/box/ammo/a300/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a300 = 4)
	generate_items_inside(items_inside,src)

//6.5mm

/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a65
	ammo_type = /obj/item/shiptest_ammo_casing/a65
	max_ammo = 5

/obj/item/storage/box/ammo/a65
	name = "box of 6.5mm ammo"
	desc = "A box of standard 6.5mm ammo."
	icon_state = "65box"

/obj/item/storage/box/ammo/a65/PopulateContents()
	var/static/items_inside = list(
		/obj/item/shiptest_ammo_box/magazine/ammo_stack/prefilled/a65 = 4)
	generate_items_inside(items_inside,src)
