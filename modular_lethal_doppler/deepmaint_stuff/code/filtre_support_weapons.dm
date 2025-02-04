/obj/item/choice_beacon/filtre
	desc = "A single use beacon for the drop-pod delivery of special equipment. Cannot be used within the RLOS Relicten."
	icon_state = "remote_security_emergency"
	inhand_icon_state = "signaler"
	company_source = "RLOS Relicten Requisitons"
	company_message = span_bold("Support weapon incoming, keep clear of landing zone.")

/obj/item/choice_beacon/filtre/spawn_option(obj/choice_path, mob/living/user)
	podspawn(list(
		"target" = get_turf(src),
		"style" = /datum/pod_style/missile,
		"spawn" = choice_path,
		"delays" = list(POD_TRANSIT = 0, POD_FALLING = (15 SECONDS), POD_OPENING = (5 SECONDS), POD_LEAVING = 0),
		"explosionSize" = list(0,0,1,2)
	))

/obj/item/choice_beacon/filtre/can_use_beacon(mob/living/user)
	if(istype(get_area(src), /area/gakster_location/filtre_spawn))
		say("Req guy here, yeah hey. We can't drop pod stuff into our own ship. That's where we launch the pods from.")
		playsound(src, 'sound/machines/buzz/buzz-sigh.ogg', 40, TRUE)
		return FALSE
	if(user.can_perform_action(src, FORBID_TELEKINESIS_REACH))
		return TRUE

	playsound(src, 'sound/machines/buzz/buzz-sigh.ogg', 40, TRUE)
	return FALSE

/obj/item/choice_beacon/filtre/rocket
	name = "explosive support weapon beacon"

/obj/item/choice_beacon/filtre/rocket/generate_display_names()
	var/static/list/selectable_gun_types = list(
		"Anti-Mech Launcher" = /obj/item/gun/ballistic/rocketlauncher/unrestricted/filtre_anti_mech,
		"Demolition Launcher" = /obj/item/gun/ballistic/rocketlauncher/unrestricted,
		"Soft Targets Launcher" = /obj/item/storage/toolbox/guncase/doppla/filtre_rocket_launcher,
	)
	return selectable_gun_types

/obj/item/choice_beacon/filtre/turret
	name = "point defense weapon beacon"

/obj/item/choice_beacon/filtre/turret/generate_display_names()
	var/static/list/selectable_gun_types = list(
		"Point Defense Turret" = /obj/item/storage/toolbox/emergency/turret/filtre,
	)
	return selectable_gun_types

/obj/item/choice_beacon/filtre/breaching
	name = "breaching weapon beacon"

/obj/item/choice_beacon/filtre/breaching/generate_display_names()
	var/static/list/selectable_gun_types = list(
		"Ramu 6 GA Shotgun" = /obj/item/storage/toolbox/guncase/doppla/super_shotgun,
		"Nomi Repeating Shotgun" = /obj/item/storage/toolbox/guncase/doppla/nomi_shotgun,
		"Kiboko Grenade Launcher" = /obj/item/storage/toolbox/guncase/doppla/carwo_large_case/thunderdome_kiboko/evil,
	)
	return selectable_gun_types

/obj/item/choice_beacon/filtre/medical
	name = "medical support beacon"
	icon_state = "remote_med_emergency"

/obj/item/choice_beacon/filtre/medical/generate_display_names()
	var/static/list/selectable_gun_types = list(
		"Surgical Equipment" = /obj/item/storage/backpack/duffelbag/deforest_surgical/stocked,
		"Defibrilator" = /obj/item/defibrillator/loaded,
	)
	return selectable_gun_types

/obj/item/choice_beacon/filtre/grenade
	name = "consumable weapon beacon"

/obj/item/choice_beacon/filtre/grenade/generate_display_names()
	var/static/list/selectable_gun_types = list(
		"Impact Grenades" = /obj/item/storage/epic_loot_grenade_case/fun_and_games,
		"General Purpose Explosives" = /obj/item/storage/epic_loot_grenade_case/big_bombs,
	)
	return selectable_gun_types

// Filtre point defense turret

/obj/item/storage/toolbox/emergency/turret/filtre

/obj/item/storage/toolbox/emergency/turret/filtre/set_faction(obj/machinery/porta_turret/turret, mob/user)
	turret.faction = list(FACTION_NANOTRASEN_PRIVATE)

// Pile of impact grenades

/obj/item/storage/epic_loot_grenade_case/fun_and_games

/obj/item/storage/epic_loot_grenade_case/fun_and_games/PopulateContents()
	new /obj/item/grenade/frag/impact(src)
	new /obj/item/grenade/frag/impact(src)
	new /obj/item/grenade/frag/impact(src)
	new /obj/item/grenade/frag/impact(src)
	new /obj/item/grenade/syndieminibomb/concussion/impact(src)
	new /obj/item/grenade/syndieminibomb/concussion/impact(src)
	new /obj/item/grenade/syndieminibomb/concussion/impact(src)
	new /obj/item/grenade/syndieminibomb/concussion/impact(src)

/obj/item/storage/epic_loot_grenade_case/big_bombs

/obj/item/storage/epic_loot_grenade_case/big_bombs/PopulateContents()
	new /obj/item/grenade/frag(src)
	new /obj/item/grenade/frag(src)
	new /obj/item/grenade/frag(src)
	new /obj/item/grenade/frag(src)
	new /obj/item/grenade/syndieminibomb(src)
	new /obj/item/grenade/syndieminibomb(src)
	new /obj/item/grenade/syndieminibomb/concussion(src)
	new /obj/item/grenade/syndieminibomb/concussion(src)
