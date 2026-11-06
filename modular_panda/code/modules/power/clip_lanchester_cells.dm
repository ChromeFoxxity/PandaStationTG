// Adapted from Shiptest's clip_lanchester weapon assets and definitions.

/obj/item/stock_parts/power_store/cell/clip_lanchester
	name = "Nanotrasen energy weapon power cell"
	desc = "A rechargeable power cell designed for Nanotrasen energy weapons."
	maxcharge = STANDARD_CELL_CHARGE
	chargerate = STANDARD_CELL_RATE

/obj/item/stock_parts/power_store/cell/clip_lanchester/empty
	empty = TRUE

/obj/item/stock_parts/power_store/cell/clip_lanchester/mini
	name = "Nanotrasen compact energy weapon power cell"
	maxcharge = STANDARD_CELL_CHARGE * 0.5
	chargerate = STANDARD_CELL_RATE * 0.5

/obj/item/stock_parts/power_store/cell/clip_lanchester/mini/empty
	empty = TRUE

/obj/item/stock_parts/power_store/cell/clip_lanchester/heavy
	name = "Nanotrasen heavy energy weapon power cell"
	maxcharge = STANDARD_CELL_CHARGE * 2
	chargerate = STANDARD_CELL_RATE

/obj/item/stock_parts/power_store/cell/clip_lanchester/heavy/empty
	empty = TRUE

/obj/item/stock_parts/power_store/cell/clip_lanchester/ewc5
	name = "Nanotrasen EWC-5 power cell"
	desc = "A high-output cell designed for Nanotrasen's ECM-6 energy weapon."
	maxcharge = STANDARD_CELL_CHARGE * 1.275
	chargerate = STANDARD_CELL_RATE * 0.875

/obj/item/stock_parts/power_store/cell/clip_lanchester/ewc5/empty
	empty = TRUE

/obj/item/stock_parts/power_store/cell/clip_lanchester/ewc6
	name = "Nanotrasen EWC-6 power cell"
	desc = "An expanded-capacity cell designed for Nanotrasen military energy weapons."
	maxcharge = STANDARD_CELL_CHARGE * 2
	chargerate = STANDARD_CELL_RATE

/obj/item/stock_parts/power_store/cell/clip_lanchester/ewc6/empty
	empty = TRUE
