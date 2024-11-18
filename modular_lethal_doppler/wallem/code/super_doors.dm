/obj/structure/mineral_door
	/// Do we have a bottom overlay bit for mobs to walk past?
	var/has_bottom_bit = FALSE

/obj/structure/mineral_door/update_overlays()
	. = ..()
	if(!has_bottom_bit)
		return
	if(!density)
		// If we're open we layer the bit below us "above" any mobs so they can walk through
		. += mutable_appearance(icon, "[initial(icon_state)]_open_bottom", ABOVE_MOB_LAYER, appearance_flags = KEEP_APART)
		. += emissive_blocker(icon, "[initial(icon_state)]_open_bottom", src, ABOVE_MOB_LAYER)

/// Actual door types
/obj/structure/mineral_door/lethal
	icon = 'modular_lethal_doppler/wallem/icons/mineral_doors.dmi'
	icon_state = "standard"
	layer = ABOVE_WINDOW_LAYER + 0.01
	has_bottom_bit = TRUE
	close_delay = 30 SECONDS
	openSound = 'modular_lethal_doppler/wallem/sounds/door_open.ogg'
	closeSound = 'modular_lethal_doppler/wallem/sounds/door_close.ogg'
	/// Sound we make when someone kicks the door but fucks up
	var/kick_fail_sound = 'modular_lethal_doppler/wallem/sounds/door_kick_fail.ogg'
	/// Sound we make when someone kicks the door and gets it right
	var/kick_success_sound = 'modular_lethal_doppler/wallem/sounds/door_kick_w.ogg'
	/// What chance do you have to kick this door open every attempt?
	var/door_kick_chance = 60

/obj/structure/mineral_door/lethal/examine(mob/user)
	. = ..()
	. += span_notice("You can <b>Right-Click</b> to kick the door open, which is typically quicker than opening it like normal.")

/obj/structure/mineral_door/lethal/attack_hand_secondary(mob/user, list/modifiers)
	. = ..()
	if(.)
		return
	if(door_opened)
		return
	if(!do_after(user, 0.5 SECONDS, src))
		return
	if(!rand(door_kick_chance))
		playsound(src, kick_fail_sound, 100, TRUE, 3)
	else
		Open(TRUE)

/obj/structure/mineral_door/lethal/TryToSwitchState(atom/user)
	if(isliving(user))
		var/mob/living/matters = user
		if(!can_interact(user))
			return
		if(!do_after(user, 3 SECONDS, src))
			return
		SwitchState()
	else if(ismecha(user))
		SwitchState()

/obj/structure/mineral_door/lethal/Open(kicked)
	if(!kicked)
		playsound(src, openSound, 50, TRUE)
	else
		playsound(src, kick_success_sound, 100, TRUE, 3)
	set_opacity(FALSE)
	set_density(FALSE)
	door_opened = TRUE
	layer = OPEN_DOOR_LAYER
	air_update_turf(TRUE, FALSE)
	update_appearance()
	if(close_delay != -1)
		addtimer(CALLBACK(src, PROC_REF(Close)), close_delay)

/obj/structure/mineral_door/lethal/Close()
	if(!door_opened)
		return
	var/turf/T = get_turf(src)
	for(var/mob/living/L in T)
		return
	playsound(src, closeSound, 50, TRUE)
	set_density(TRUE)
	set_opacity(TRUE)
	door_opened = FALSE
	layer = initial(layer)
	air_update_turf(TRUE, TRUE)
	update_appearance()

/obj/structure/mineral_door/lethal/standard
	name = "door"
	desc = "A door standard to many places like this. Simple metal sheeting with extra bump plates along the bottom to protect from your boots."
	icon_state = "standard"

/obj/structure/mineral_door/lethal/industrial
	name = "industrial door"
	desc = "A heavy metal plate door with visible rivets for high-test areas."
	icon_state = "industrial"
	door_kick_chance = 30

/obj/structure/mineral_door/lethal/office
	name = "office door"
	desc = "A simple door clad in polymer sheeting, with metal bump plates along the bottom to protect from your boots."
	icon_state = "office"
	door_kick_chance = 70
