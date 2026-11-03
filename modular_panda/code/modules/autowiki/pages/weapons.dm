// not a page, helpers for weapons this is why this blank datum exists
/datum/autowiki/weapons

/datum/autowiki/weapons/proc/manufacturer_name(raw)
	var/static/list/names = list(
		MANUFACTURER_SHARPLITE_NEW = "Makosso-Warra-Sharplite",
		MANUFACTURER_HUNTERSPRIDE = "Hunter's Pride",
		MANUFACTURER_SOLARARMORIES = "Solarbundswaffenkammer",
		MANUFACTURER_SCARBOROUGH = "Scarborough Arms",
		MANUFACTURER_EOEHOMA = "Eoehoma Firearms",
		MANUFACTURER_VIGILITAS = "Makosso-Warra Advantage",
		MANUFACTURER_INTEQ = "Inteq Risk Management Group",
		MANUFACTURER_MINUTEMAN = "Lanchester City Firearms Plant",
		MANUFACTURER_MINUTEMAN_LASER = "Clover Photonics",
		MANUFACTURER_PGF = "Etherbor Industries",
		MANUFACTURER_IMPORT = "Lanchester Import Co.",
		MANUFACTURER_SERENE = "Serene Outdoors",
		MANUFACTURER_CYBERSUN = "Tadeusz Armory",
	)

	if (!raw)
		return "Unbranded"

	return names[raw] || raw

/datum/autowiki/weapons/proc/firemode_summary(obj/item/gun/modular/gun)
	var/static/list/labels = list(
		FIREMODE_SEMIAUTO = "Semi-auto",
		FIREMODE_BURST = "Burst",
		FIREMODE_FULLAUTO = "Full-auto",
		FIREMODE_AIMED = "Aimed",
		FIREMODE_OTHER = "Other",
		FIREMODE_OTHER_TWO = "Other 2",
	)

	var/static/list/stock_names
	if (!stock_names)
		var/obj/item/gun/modular/reference = new
		stock_names = reference.gun_firenames.Copy()
		qdel(reference)

	var/list/modes = list()
	for (var/mode in gun.gun_firemodes)
		var/named = gun.gun_firenames[mode]

		//special case handling for weapons with special fire modes like e40
		var/label = (named && named != stock_names[mode]) ? capitalize(named) : (labels[mode] || mode)

		// guns that require manual racking or hammer manipulation per shot are still listed as semi-auto in gun_firemodes
		// but the actual behaviour is set by an extra semi_auto var in the type
		if (mode == FIREMODE_SEMIAUTO && istype(gun, /obj/item/gun/modular/ballistic))
			var/obj/item/gun/modular/ballistic/ballistic = gun
			if (!ballistic.semi_auto)
				label = "Manual"

		if (mode == FIREMODE_BURST && gun.burst_size > 1)
			label += " ([gun.burst_size])"
		modes += label

	return length(modes) ? modes.Join(", ") : "N/A"

// some weapons (pml9 rocket launcher) have a desc that changes at runtime. get the desc only so that it doesnt regen every push
/datum/autowiki/weapons/proc/description(atom/thing)
	var/declared = initial(thing.desc)
	return (declared && findtextEx(thing.desc, declared) == 1) ? declared : thing.desc

// autowiki icon file name handling to deal with nonsense around weapons/ammo
/datum/autowiki/weapons/proc/icon_name(atom_path)
	var/trimmed = replacetext("[atom_path]", "[/obj/item]/", "")
	return SANITIZE_FILENAME(replacetext(trimmed, "/", "_"))

/datum/autowiki/weapons/proc/stack(list/items)
	if (!length(items))
		return null

	var/list/wrapped = list()
	for (var/item in items)
		wrapped += "<div style='margin:0.2em 0;'>[item]</div>"

	return wrapped.Join("")

// Looks in the supply packs to find the actual gun or attachment
/datum/autowiki/weapons/proc/items_in(item_path)
	if (ispath(item_path, /obj/item/gun/modular) || ispath(item_path))
		return list(item_path)

	if (!ispath(item_path, /obj/item/storage))
		return list()

	var/list/found = list()

	return found

// jam spread and recoil into a single cell
/datum/autowiki/weapons/proc/stance_cell(spread, recoil)
	if (!recoil)
		return "[spread] spread"

	return stack(list("[spread] spread", "[recoil] recoil"))
