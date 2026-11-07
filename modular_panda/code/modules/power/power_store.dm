/obj/item/stock_parts/power_store
	/// If TRUE, this cell behaves like a Shiptest rigged cell when power is used or supplied.
	var/rigged = FALSE

/obj/item/stock_parts/power_store/proc/legacy_rigged_explode()
	var/range_heavy = round(sqrt(charge) / 60)
	var/range_light = round(sqrt(charge) / 30)

	if(!range_light)
		corrupt()
		return FALSE

	explosion(
		src,
		devastation_range = -1,
		heavy_impact_range = range_heavy,
		light_impact_range = range_light,
		flash_range = range_light
	)

	qdel(src)
	return TRUE

/obj/item/stock_parts/power_store/cell/gun
	name = "weapon power cell"
	desc = "A rechargeable weapon cell developed by Nanotrasen. While originally intended for a specific laser weapon, these are compatible with various other manufacturers' designs, intentionally or not."
	icon = 'modular_panda/icons/obj/cells.dmi'
	icon_state = "g-cell"
	maxcharge = 10000
	chargerate = 1500
	rating = 0 // Keeps weapon cells incompatible with RPED.
	charge_light_type = null

/obj/item/stock_parts/power_store/cell/gun/Initialize(mapload, override_maxcharge)
	. = ..()
	rating = initial(rating)
	update_appearance()

/obj/item/stock_parts/power_store/cell/gun/update_overlays()
	. = ..()

	if(charge < 0.1)
		return

	if(charge / maxcharge >= 0.995)
		. += "[initial(icon_state)]-o4"
	else if(charge / maxcharge >= 0.745)
		. += "[initial(icon_state)]-o3"
	else if(charge / maxcharge >= 0.495)
		. += "[initial(icon_state)]-o2"
	else if(charge / maxcharge >= 0.145)
		. += "[initial(icon_state)]-o1"

	/* Standard weapon cells */

/obj/item/stock_parts/power_store/cell/gun/empty
	empty = TRUE

/obj/item/stock_parts/power_store/cell/gun/upgraded
	name = "high-capacity weapon power cell"
	desc = "A rechargeable high-capacity weapon cell developed by Nanotrasen. Intended for use in heavy weapons and the odd piece of personal gear."
	icon_state = "ug-cell"
	maxcharge = 15000
	chargerate = 2000

/obj/item/stock_parts/power_store/cell/gun/upgraded/empty
	empty = TRUE

/obj/item/stock_parts/power_store/cell/gun/mini
	name = "miniature weapon power cell"
	desc = "A rechargeable high-capacity weapon cell developed by Nanotrasen. This thing is so friggin' tiny!"
	icon_state = "mg-cell"
	maxcharge = 5000
	chargerate = 1000
	w_class = WEIGHT_CLASS_TINY

/obj/item/stock_parts/power_store/cell/gun/mini/empty
	empty = TRUE

/obj/item/stock_parts/power_store/cell/gun/large
	name = "super-capacity weapon power cell"
	desc = "A rechargeable super-capacity weapon cell developed by Nanotrasen. This thing is truly a marvel of art."
	icon_state = "bg-cell"
	maxcharge = 50000
	chargerate = 5000
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/stock_parts/power_store/cell/gun/large/empty
	empty = TRUE

/* Heavy Aegis Dynamicss cells */

/obj/item/stock_parts/power_store/cell/gun/heavy
	name = "heavy weapon power power cell"
	icon_state = "e-cell-heavy"
	desc = "A rechargeable weapon cell, derived from the Nanotrasen models, designed by Aegis Dynamics. Used mainly for weapons that are truly heavy-duty."
	maxcharge = 20000

/obj/item/stock_parts/power_store/cell/gun/heavy/empty
	empty = TRUE

/obj/item/stock_parts/power_store/cell/gun/heavy/upgraded
	name = "heavy high-capacity weapon power cell"
	icon_state = "e-class2-heavy"
	desc = "A rechargeable high-capacity weapon cell, derived from the Nanotrasen models, designed by Aegis Dynamics. Used mainly for weapons that are truly heavy-duty"
	maxcharge = 30000

/obj/item/stock_parts/power_store/cell/gun/heavy/upgraded/empty
	empty = TRUE

/* Aegis cells */

/obj/item/stock_parts/power_store/cell/gun/ewc5
	name = "Aegis EWC-5"
	desc = "Brought to you by Aegis Dynamics, proudly based within TerraGov, is the EWC-5, an energy cell compatible with any Aegis Dynamics energy weapons."
	icon_state = "kalix-cell"
	maxcharge = 12750
	chargerate = 1750

/obj/item/stock_parts/power_store/cell/gun/ewc5/empty
	empty = TRUE

/obj/item/stock_parts/power_store/cell/gun/ewc6
	name = "Aegis EWC-6m"
	desc = "Exclusive only to the TerraGov military, the EWC-6m is an Aegis Dynamics energy weapon cell designed for military-grade use, including expanded capacity and output."
	icon_state = "pgf-cell"
	maxcharge = 20000
	chargerate = 2000

/obj/item/stock_parts/power_store/cell/gun/ewc6/empty
	empty = TRUE

/* Sharplite cells */

/obj/item/stock_parts/power_store/cell/gun/sharplite
	name = "Sharplite power cell"
	desc = "A proprietary power cell primarily used by Sharplite weaponry. Makosso-Warra's large market share has forced some weapon developers to include adapters for these cells."
	icon = 'modular_panda/icons/obj/cells.dmi'
	icon_state = "warra-cell"

/obj/item/stock_parts/power_store/cell/gun/sharplite/empty
	empty = TRUE

/obj/item/stock_parts/power_store/cell/gun/sharplite/plus
	name = "Sharplite Plus power cell"
	desc = "A high-capacity weapon cell used exclusively by Sharplite weaponry. They are a great improvement over the stock cell, and are frequently sought after by collectors, soldiers, and operators of heavy lasers alike."
	icon_state = "warra_plus-cell"
	maxcharge = 20000
	chargerate = 2000

/obj/item/stock_parts/power_store/cell/gun/sharplite/plus/empty
	empty = TRUE

/obj/item/stock_parts/power_store/cell/gun/sharplite/mini
	name = "Sharplite Compact power cell"
	desc = "A compact weapon cell used exclusively by Sharplite weaponry. It holds less charge and is intended for usage in energy handguns."
	icon_state = "warra_mini-cell"
	maxcharge = 7000
	chargerate = 1000
	w_class = WEIGHT_CLASS_TINY

/obj/item/stock_parts/power_store/cell/gun/sharplite/mini/empty
	empty = TRUE

/obj/item/stock_parts/power_store/cell/gun/sharplite/heavy
	name = "Sharplite heavy power cell"
	desc = "A large power cell primarily used by Sharplite weaponry. It holds significant charge and is designed for use in Sharplite's heavier weapons."
	icon_state = "warra-heavy-cell"
	maxcharge = 20000
	chargerate = 2000

/obj/item/stock_parts/power_store/cell/gun/sharplite/heavy/empty
	empty = TRUE

/obj/item/stock_parts/power_store/cell/gun/sharplite/heavy/plus
	name = "Sharplite Super heavy power cell"
	desc = "An exceptionally high-energy weapon cell used exclusively by Sharplite weaponry. These hold exceptional amounts of charge for use in Sharplite's heaviest weapons, and should not be handled without proper protective clothing."
	icon_state = "warra_super-heavy-cell"
	maxcharge = 30000
	chargerate = 3000

/obj/item/stock_parts/power_store/cell/gun/sharplite/heavy/plus/empty
	empty = TRUE

/* Cybersun cells */

/obj/item/stock_parts/power_store/cell/gun/cybersun
	name = "\improper Cybersun plasma cell"
	desc = "A proprietary power cell primarily used by Cybersun Industries weaponry. Contains stabilized plasma maintained at high temperature within a containment field, as well as a material catalyst to generate more. Understandably volatile."
	icon = 'modular_panda/icons/obj/cells.dmi'
	icon_state = "cybersun-cell"
	maxcharge = 15000
	rating = 2
	w_class = WEIGHT_CLASS_SMALL

/obj/item/stock_parts/power_store/cell/gun/cybersun/empty
	empty = TRUE

/obj/item/stock_parts/power_store/cell/gun/cybersun/heavy
	name = "\improper heavy Cybersun plasma cell"
	desc = "A large proprietary power cell primarily used by Cybersun Industries weaponry. Contains stabilized plasma maintained at high temperature within a containment field, as well as a material catalyst to generate more. Understandably very volatile."
	icon_state = "cybersun-heavy"
	maxcharge = 30000
	rating = 3
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/stock_parts/power_store/cell/gun/cybersun/heavy/empty
	empty = TRUE

/obj/item/stock_parts/power_store/cell/gun/cybersun/mini
	name = "\improper micro Cybersun plasma cell"
	desc = "A small plasma power cell sealed within a casing for safe-keeping. Contains a magnetic catalyst for plasma rejuvenation during charging."
	icon_state = "cybersun-mini"
	maxcharge = 7000
	chargerate = 1000
	w_class = WEIGHT_CLASS_TINY

/obj/item/stock_parts/power_store/cell/gun/cybersun/mini/empty
	empty = TRUE
