/obj/structure/wall_cladding
	name = "wall cladding"
	desc = "Sheets of metal-polymer alloys that protect the bare metal of the walls behind them from everyday activities."
	icon = 'modular_lethal_doppler/wallem/icons/cladding.dmi'
	icon_state = "basic_big"
	SET_BASE_PIXEL(0, 22)
	layer = TABLE_LAYER
	anchored = TRUE
	density = FALSE
	max_integrity = 200

/obj/structure/wall_cladding/Initialize(mapload)
	. = ..()
	find_and_hang_on_wall()

/obj/structure/wall_cladding/basic
	icon_state = "basic_big"

/obj/structure/wall_cladding/basic/security
	icon_state = "security_big"

/obj/structure/wall_cladding/basic/medical
	icon_state = "medical_big"

/obj/structure/wall_cladding/tiled
	icon_state = "basic_tiled"

/obj/structure/wall_cladding/tiled/security
	icon_state = "security_tiled"

/obj/structure/wall_cladding/tiled/medical
	icon_state = "medical_tiled"

/obj/structure/wall_cladding/service_panel
	icon_state = "basic_service"

/obj/structure/wall_cladding/service_panel/security
	icon_state = "security_service"

/obj/structure/wall_cladding/service_panel/medical
	icon_state = "medical_service"
