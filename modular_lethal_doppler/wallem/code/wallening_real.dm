/turf
	vis_flags = VIS_INHERIT_PLANE

/turf/closed
	plane = GAME_PLANE

/turf/closed/Initialize(mapload)
	. = ..()
	add_overlay(mutable_appearance('modular_lethal_doppler/wallem/icons/wall_blackness.dmi', "wall_background", CLOSED_TURF_LAYER, src, WALL_PLANE))
	AddComponent(/datum/component/seethrough, get_seethrough_map())

///Return a see_through_map, examples in seethrough.dm
/turf/closed/proc/get_seethrough_map()
	return SEE_THROUGH_MAP_TALL_WALLS
