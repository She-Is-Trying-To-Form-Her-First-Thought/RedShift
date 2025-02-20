// Trappiste high caliber pistol in .585

/obj/item/gun/ballistic/automatic/pistol/trappiste
	name = "\improper Skild Pistol"
	desc = "A somewhat rare to see Trappiste pistol firing the high caliber .585 developed by the same company. \
		Sees rare use mainly due to its tendency to cause severe wrist discomfort."
	icon = 'modular_lethal_doppler/paxilweapons_real/icons/pistol_32.dmi'
	icon_state = "skild"
	fire_sound = 'modular_lethal_doppler/paxilweapons_real/sound/pistol/pistol_heavy.ogg'
	suppressed_sound = 'modular_lethal_doppler/paxilweapons_real/sound/doesnt_miss/suppressed_heavy.ogg'
	w_class = WEIGHT_CLASS_NORMAL
	accepted_magazine_type = /obj/item/ammo_box/magazine/c585trappiste_pistol
	suppressor_x_offset = 8
	suppressor_y_offset = 0
	fire_delay = 1 SECONDS
	recoil = 2
	pickup_sound = 'modular_lethal_doppler/paxilweapons_real/sound/pickup_sounds/drop_lightgun.wav'
	drop_sound = 'modular_lethal_doppler/paxilweapons_real/sound/pickup_sounds/drop_lightgun.wav'
	gunshot_animation_information = list(
		"pixel_x" = 18, \
		"pixel_y" = 3, \
		"inactive_wben_suppressed" = TRUE, \
	)
	recoil_animation_information = list(
		"recoil_angle_upper" = -15, \
		"recoil_angle_lower" = -30, \
		"recoil_burst_speed" = 0.5, \
		"return_burst_speed" = 0.5, \
	)

/obj/item/gun/ballistic/automatic/pistol/trappiste/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_TRAPPISTE)

/obj/item/gun/ballistic/automatic/pistol/sol/examine(mob/user)
	. = ..()
	. += span_notice("You can <b>examine closer</b> to learn a little more about this weapon.")

/obj/item/gun/ballistic/automatic/pistol/trappiste/examine_more(mob/user)
	. = ..()
	. += "The Skild only exists due to a widely known event that SolFed's military \
		would prefer wasn't anywhere near as popular. A general, name unknown as of now, \
		was recorded complaining about the lack of capability the Wespe provided to the \
		military, alongside several statements comparing the Wespe's lack of masculinity \
		to the, quote, 'unique lack of testosterone those NRI mongrels field'. While the \
		identities of both the general and people responsible for the leaking of the recording \
		are still classified, many high ranking SolFed military staff suspiciously have stopped \
		appearing in public, unlike the Skild. A lot of several thousand pistols, the first \
		of the weapons to ever exist, were not so silently shipped to SolFed's Plutonian \
		shipping hub from TRAPPIST. SolFed military command refuses to answer any \
		further questions about the incident to this day."
	return .

/obj/item/gun/ballistic/automatic/pistol/trappiste/no_mag
	spawnwithmagazine = FALSE
