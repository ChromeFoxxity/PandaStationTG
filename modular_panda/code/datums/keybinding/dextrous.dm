/datum/keybinding/dextrous/secondary_action
	hotkey_keys = list("ShiftSpace")
	name = "secondary_action"
	full_name = "Perform secondary action"
	description = ""
	keybind_signal = COMSIG_KB_MOB_SECONDARY_ACTION

/datum/keybinding/dextrous/secondary_action/down(client/user)
	. = ..()
	if(.)
		return
	var/mob/M = user.mob
	M.secondary_action()
	return TRUE
