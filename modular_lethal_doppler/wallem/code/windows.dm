/obj/structure/window/fulltile
	change_layer_on_rotation = FALSE
	icon = 'icons/icon_cutter_deez/windows/window.dmi'

/obj/structure/window/reinforced/fulltile
	icon = 'icons/icon_cutter_deez/windows/reinforced_window.dmi'

/obj/structure/window/plasma/fulltile
	icon = 'icons/icon_cutter_deez/windows/plasma_window.dmi'

/obj/structure/window/reinforced/plasma/fulltile
	icon = 'icons/icon_cutter_deez/windows/rplasma_window.dmi'

/obj/structure/grille/window
	name = "window grille"
	desc = "A simple, fragile grille that protects windows."
	icon = 'icons/icon_cutter_deez/windows/grille_window.dmi'
	icon_state = "grille_window-0"
	base_icon_state = "grille_window"
	plane = GAME_PLANE
	layer = ABOVE_OBJ_LAYER + 0.01
	smoothing_flags = SMOOTH_BITMASK
	smoothing_groups = SMOOTH_GROUP_GRILLE_WINDOWS
	canSmoothWith = SMOOTH_GROUP_GRILLE_WINDOWS
	looks_when_damaged = FALSE

/obj/structure/grille/window/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/seethrough, get_seethrough_map())

/obj/structure/grille/window/proc/get_seethrough_map()
	return SEE_THROUGH_MAP_TALL_WALLS

/obj/structure/grille
	/// Do we have different icon states for being damaged?
	var/looks_when_damaged = TRUE

/// WAR ULTRAKILL

/obj/structure/window
	alpha = 200
	base_icon_state = "window"
	icon = 'modular_lethal_doppler/wallem/icons/normal_thindow.dmi'
	layer = 3.3
	smoothing_flags = SMOOTH_BITMASK|SMOOTH_BORDER_OBJECT|SMOOTH_OBJ
	canSmoothWith = SMOOTH_GROUP_WINDOW_DIRECIONAL
	smoothing_groups = SMOOTH_GROUP_WINDOW_DIRECIONAL + SMOOTH_GROUP_CLOSED_TURFS
	base_pixel_y = 16
	base_pixel_z = -16
	/// Do we change layer based on rotation?
	var/change_layer_on_rotation = TRUE

/obj/structure/window/Initialize(mapload)
	. = ..()
	if(change_layer_on_rotation)
		RegisterSignal(src, COMSIG_ATOM_DIR_CHANGE, PROC_REF(on_change_layer))
		adjust_dir_layer(dir)

/// Reads if the window has rotated
/obj/structure/window/proc/on_change_layer(datum/source, old_dir, new_dir)
	SIGNAL_HANDLER
	adjust_dir_layer(new_dir)

/// Changes the window's layer based on rotation
/obj/structure/window/proc/adjust_dir_layer(direction)
	layer = (direction & NORTH) ? TABLE_LAYER : initial(layer)

/obj/structure/window/update_icon_state()
	. = ..()
	if(!fulltile)
		switch(dir)
			if(NORTH)
				icon_state = "body-t"
			if(SOUTH)
				icon_state = "body-b"
			if(EAST)
				icon_state = "body-r"
			if(WEST)
				icon_state = "body-l"

/obj/structure/window/update_overlays(updates=ALL)
	. = ..()
	if(QDELETED(src))
		return

	if((updates & UPDATE_SMOOTHING) && (smoothing_flags & USES_SMOOTHING))
		QUEUE_SMOOTH(src)

	var/list/states_to_apply = list()
	var/handled_junctions = NONE
	if(smoothing_junction & NORTHEAST_JUNCTION && smoothing_junction & SOUTHEAST_JUNCTION && smoothing_junction & EAST_JUNCTION)
		handled_junctions |= NORTHEAST_JUNCTION | SOUTHEAST_JUNCTION | EAST_JUNCTION
		switch(dir)
			if(NORTH)
				states_to_apply += "quad-tr"
			if(SOUTH)
				states_to_apply += "quad-br"
	if(smoothing_junction & NORTHWEST_JUNCTION && smoothing_junction & SOUTHWEST_JUNCTION && smoothing_junction & WEST_JUNCTION)
		handled_junctions |= NORTHWEST_JUNCTION | SOUTHWEST_JUNCTION | WEST_JUNCTION
		switch(dir)
			if(NORTH)
				states_to_apply += "quad-tl"
			if(SOUTH)
				states_to_apply += "quad-bl"
	if(smoothing_junction & SOUTHWEST_JUNCTION && smoothing_junction & SOUTHEAST_JUNCTION && smoothing_junction & SOUTH_JUNCTION)
		handled_junctions |= SOUTHWEST_JUNCTION | SOUTHEAST_JUNCTION | SOUTH_JUNCTION
	if(smoothing_junction & NORTHWEST_JUNCTION && smoothing_junction & NORTHEAST_JUNCTION && smoothing_junction & NORTH_JUNCTION)
		handled_junctions |= NORTHWEST_JUNCTION | NORTHEAST_JUNCTION | NORTH_JUNCTION

	if(smoothing_junction & NORTHWEST_JUNCTION && smoothing_junction & WEST_JUNCTION && !(handled_junctions & (NORTHWEST_JUNCTION|WEST_JUNCTION)))
		switch(dir)
			if(SOUTH)
				handled_junctions |= NORTHWEST_JUNCTION | WEST_JUNCTION
				states_to_apply += "up-triple-bl"
	if(smoothing_junction & NORTHEAST_JUNCTION && smoothing_junction & EAST_JUNCTION && !(handled_junctions & (NORTHEAST_JUNCTION|EAST_JUNCTION)))
		switch(dir)
			if(SOUTH)
				handled_junctions |= NORTHEAST_JUNCTION | EAST_JUNCTION
				states_to_apply += "up-triple-br"
	if(smoothing_junction & SOUTHWEST_JUNCTION && smoothing_junction & WEST_JUNCTION && !(handled_junctions & (SOUTHWEST_JUNCTION|WEST_JUNCTION)))
		switch(dir)
			if(NORTH)
				handled_junctions |= SOUTHWEST_JUNCTION | WEST_JUNCTION
				states_to_apply += "down-triple-tl"
	if(smoothing_junction & SOUTHEAST_JUNCTION && smoothing_junction & EAST_JUNCTION && !(handled_junctions & (SOUTHEAST_JUNCTION|EAST_JUNCTION)))
		switch(dir)
			if(NORTH)
				handled_junctions |= SOUTHEAST_JUNCTION | EAST_JUNCTION
				states_to_apply += "down-triple-tr"

	if(smoothing_junction & SOUTHEAST_JUNCTION && smoothing_junction & SOUTH_JUNCTION && !(handled_junctions & (SOUTHEAST_JUNCTION|SOUTH_JUNCTION)))
		switch(dir)
			if(WEST)
				handled_junctions |= SOUTHEAST_JUNCTION | SOUTH_JUNCTION | EAST_JUNCTION
				states_to_apply += "right-triple-bl"
	if(smoothing_junction & SOUTHWEST_JUNCTION && smoothing_junction & SOUTH_JUNCTION && !(handled_junctions & (SOUTHWEST_JUNCTION|SOUTH_JUNCTION)))
		switch(dir)
			if(EAST)
				handled_junctions |= SOUTHWEST_JUNCTION | SOUTH_JUNCTION | WEST_JUNCTION
				states_to_apply += "left-triple-br"

	if(smoothing_junction & NORTHEAST_JUNCTION && smoothing_junction & NORTH_JUNCTION && !(handled_junctions & (NORTHEAST_JUNCTION|NORTH_JUNCTION)))
		switch(dir)
			if(WEST)
				handled_junctions |= NORTHEAST_JUNCTION | NORTH_JUNCTION | EAST_JUNCTION
				states_to_apply += "right-triple-tl"
	if(smoothing_junction & NORTHWEST_JUNCTION && smoothing_junction & NORTH_JUNCTION && !(handled_junctions & (NORTHWEST_JUNCTION|NORTH_JUNCTION)))
		switch(dir)
			if(EAST)
				handled_junctions |= NORTHWEST_JUNCTION | NORTH_JUNCTION | WEST_JUNCTION
				states_to_apply += "left-triple-tr"

	// These cases exist JUST to eat diagonal smooths for NORTH/SOUTH windows
	if(smoothing_junction & SOUTHWEST_JUNCTION && smoothing_junction & NORTHWEST_JUNCTION)
		switch(dir)
			if(NORTH, SOUTH)
				handled_junctions |= SOUTHWEST_JUNCTION | NORTHWEST_JUNCTION | WEST_JUNCTION | NORTH_JUNCTION | SOUTH_JUNCTION
	if(smoothing_junction & SOUTHEAST_JUNCTION && smoothing_junction & NORTHEAST_JUNCTION)
		switch(dir)
			if(NORTH, SOUTH)
				handled_junctions |= SOUTHEAST_JUNCTION | NORTHEAST_JUNCTION | EAST_JUNCTION | NORTH_JUNCTION | SOUTH_JUNCTION

	// filter out everything on the tile opposing us
	handled_junctions |= dir_to_all_junctions(dir)

	if(smoothing_junction & NORTHWEST_JUNCTION && !(handled_junctions & NORTHWEST_JUNCTION))
		handled_junctions |= NORTH_JUNCTION | WEST_JUNCTION
		// Only gonna define dirs that allow a body to exist sanely
		// So South is acceptable
		// Also want to avoid double application
		// hhhh
		switch(dir)
			if(SOUTH)
				states_to_apply += "up-right-corner-bl"
	if(smoothing_junction & NORTHEAST_JUNCTION && !(handled_junctions & NORTHEAST_JUNCTION))
		handled_junctions |= NORTH_JUNCTION | EAST_JUNCTION
		switch(dir)
			if(SOUTH)
				states_to_apply += "up-left-corner-br"
	if(smoothing_junction & SOUTHWEST_JUNCTION && !(handled_junctions & SOUTHWEST_JUNCTION))
		handled_junctions |= SOUTH_JUNCTION | WEST_JUNCTION
		switch(dir)
			if(NORTH)
				states_to_apply += "down-right-corner-tl"
	if(smoothing_junction & SOUTHEAST_JUNCTION && !(handled_junctions & SOUTHEAST_JUNCTION))
		handled_junctions |= SOUTH_JUNCTION | EAST_JUNCTION
		switch(dir)
			if(NORTH)
				states_to_apply += "down-left-corner-tr"

	if(!(handled_junctions & WEST_JUNCTION))
		if(smoothing_junction & WEST_JUNCTION)
			switch(dir)
				if(NORTH)
					states_to_apply += "horizontal-cont-tl"
				if(SOUTH)
					states_to_apply += "horizontal-cont-bl"
		else
			switch(dir)
				if(NORTH)
					states_to_apply += "horizontal-edge-tl"
				if(SOUTH)
					states_to_apply += "horizontal-edge-bl"

	if(!(handled_junctions & EAST_JUNCTION))
		if(smoothing_junction & EAST_JUNCTION)
			switch(dir)
				if(NORTH)
					states_to_apply += "horizontal-cont-tr"
				if(SOUTH)
					states_to_apply += "horizontal-cont-br"
		else
			switch(dir)
				if(NORTH)
					states_to_apply += "horizontal-edge-tr"
				if(SOUTH)
					states_to_apply += "horizontal-edge-br"

	if(!(handled_junctions & SOUTH_JUNCTION))
		if(smoothing_junction & SOUTH_JUNCTION)
			switch(dir)
				if(EAST)
					states_to_apply += "vertical-cont-br"
				if(WEST)
					states_to_apply += "vertical-cont-bl"
		else
			switch(dir)
				if(EAST)
					states_to_apply += "vertical-edge-br"
				if(WEST)
					states_to_apply += "vertical-edge-bl"

	if(!(handled_junctions & NORTH_JUNCTION))
		if(smoothing_junction & NORTH_JUNCTION)
			switch(dir)
				if(EAST)
					states_to_apply += "vertical-cont-tr"
				if(WEST)
					states_to_apply += "vertical-cont-tl"
		else
			switch(dir)
				if(EAST)
					states_to_apply += "vertical-edge-tr"
				if(WEST)
					states_to_apply += "vertical-edge-tl"

	for(var/window_state in states_to_apply)
		. += mutable_appearance(icon, window_state)

	// We can't use typical emissive blocking because of the pixel offset, remove when that's fixed please
	var/list/states_to_block = states_to_apply + icon_state
	for(var/blocked_state in states_to_block)
		// Cancels out the pixel offset we apply to the parent
		// (Which is needed because render_target is bugged)
		var/mutable_appearance/blocker = emissive_blocker(icon, blocked_state, offset_spokesman = src)
		blocker.pixel_z = -pixel_z
		. += blocker

/obj/structure/window/set_smoothed_icon_state(new_junction)
	if(fulltile)
		return ..()
	smoothing_junction = new_junction

/obj/structure/window/plasma
	icon = 'icons/obj/structures.dmi'

/obj/structure/window/reinforced
	icon = 'icons/obj/structures.dmi'
