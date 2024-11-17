/obj/structure/window/fulltile
	icon = 'icons/icon_cutter_deez/windows/window.dmi'

/obj/structure/window/fulltile/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/seethrough, get_seethrough_map())

/obj/structure/window/fulltile/proc/get_seethrough_map()
	return SEE_THROUGH_MAP_TALL_WALLS

/obj/structure/window/reinforced/fulltile
	icon = 'icons/icon_cutter_deez/windows/reinforced_window.dmi'

/obj/structure/window/reinforced/fulltile/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/seethrough, get_seethrough_map())

/obj/structure/window/reinforced/fulltile/proc/get_seethrough_map()
	return SEE_THROUGH_MAP_TALL_WALLS

/obj/structure/window/plasma/fulltile
	icon = 'icons/icon_cutter_deez/windows/plasma_window.dmi'

/obj/structure/window/plasma/fulltile/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/seethrough, get_seethrough_map())

/obj/structure/window/plasma/fulltile/proc/get_seethrough_map()
	return SEE_THROUGH_MAP_TALL_WALLS

/obj/structure/window/reinforced/plasma/fulltile
	icon = 'icons/icon_cutter_deez/windows/rplasma_window.dmi'

/obj/structure/window/reinforced/plasma/fulltile/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/seethrough, get_seethrough_map())

/obj/structure/window/reinforced/plasma/fulltile/proc/get_seethrough_map()
	return SEE_THROUGH_MAP_TALL_WALLS

/obj/structure/grille/window
	name = "window grille"
	desc = "A simple, fragile grille that protects windows."
	icon = 'icons/icon_cutter_deez/windows/grille_window.dmi'
	icon_state = "grille_window-0"
	base_icon_state = "grille_window"
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
