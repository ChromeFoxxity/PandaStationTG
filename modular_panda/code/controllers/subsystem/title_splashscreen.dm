/datum/controller/subsystem/title/Initialize()
	file_path = 'modular_panda/icons/ui_icons/title_screen/default.png'
	icon = new(file_path)
	previous_icon = icon

	if(splash_turf)
		splash_turf.icon = icon
		splash_turf.handle_generic_titlescreen_sizes()

	return SS_INIT_SUCCESS
