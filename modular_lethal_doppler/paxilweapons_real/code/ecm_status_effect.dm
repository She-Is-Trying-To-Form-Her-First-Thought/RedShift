/atom/movable/screen/alert/status_effect/ecm_jammed
	name = "ECM Jammed"
	desc = "Something is causing interference with your BCI, distrupting your vision."
	icon = 'icons/hud/implants.dmi'
	icon_state = "lighting_bolt"

/datum/status_effect/ecm_jammed
	id = "ecm_jammed"
	duration = 10 SECONDS
	alert_type = /atom/movable/screen/alert/status_effect/ecm_jammed
	remove_on_fullheal = TRUE

/datum/status_effect/ecm_jammed/on_apply()
	to_chat(owner, span_userdanger("Something is causing electronic interference with your vision!"))
	owner.overlay_fullscreen("jamming", /atom/movable/screen/fullscreen/ecm_static)
	owner.overlay_fullscreen("jamming_vignette", /atom/movable/screen/fullscreen/crit/vision, 6)
	return ..()

/datum/status_effect/ecm_jammed/on_remove()
	to_chat(owner, span_notice("The interference in your vision clears up."))
	owner.clear_fullscreen("jamming", 5 SECONDS)
	owner.clear_fullscreen("jamming_vignette", 5 SECONDS)
	return ..()

/atom/movable/screen/fullscreen/ecm_static
	icon = 'icons/hud/screen_gen.dmi'
	screen_loc = "WEST,SOUTH to EAST,NORTH"
	icon_state = "noise"
	alpha = 120
