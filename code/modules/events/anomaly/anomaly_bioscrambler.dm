/datum/round_event_control/anomaly/anomaly_bioscrambler
	name = "Anomaly: Bioscrambler"
	typepath = /datum/round_event/anomaly/anomaly_bioscrambler

	min_players = 256 // DOPPLER EDIT: functionally disable bioscramblers
	max_occurrences = 0 // DOPPLER EDIT: functionally disable bioscramblers
	weight = 20
	description = "This anomaly replaces the limbs of nearby people."
	min_wizard_trigger_potency = 0 // DOPPLER EDIT: functionally disable bioscramblers
	max_wizard_trigger_potency = 0

/datum/round_event/anomaly/anomaly_bioscrambler
	start_when = ANOMALY_START_MEDIUM_TIME
	announce_when = ANOMALY_ANNOUNCE_MEDIUM_TIME
	anomaly_path = /obj/effect/anomaly/bioscrambler

/datum/round_event/anomaly/anomaly_bioscrambler/announce(fake)
	if(isnull(impact_area))
		impact_area = placer.findValidArea()
	priority_announce("Biologic limb swapping agent detected on [ANOMALY_ANNOUNCE_MEDIUM_TEXT] [impact_area.name]. Wear biosuits or other protective gear to counter the effects.", "Anomaly Alert")
