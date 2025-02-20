// Rapid firing submachinegun firing .27-54 Cesarzowa

/obj/item/gun/ballistic/automatic/miecz
	name = "\improper Miecz Submachine Gun"
	desc = "A short barrel, further compacted conversion of the 'Lanca' rifle to fire pistol caliber .27-54 cartridges. \
		Due to the intended purpose of the weapon, and less than optimal ranged performance of the projectile, it has \
		nothing more than basic glow-sights as opposed to the ranged scope Lanca users might be used to."
	icon = 'modular_lethal_doppler/paxilweapons_real/icons/smg_48.dmi'
	icon_state = "miecz"
	worn_icon = 'modular_lethal_doppler/paxilweapons_real/icons/onmob/guns_worn.dmi'
	worn_icon_state = "miecz"
	lefthand_file = 'modular_lethal_doppler/paxilweapons_real/icons/onmob/guns_inhand_left.dmi'
	righthand_file = 'modular_lethal_doppler/paxilweapons_real/icons/onmob/guns_inhand_right.dmi'
	inhand_icon_state = "miecz"
	SET_BASE_PIXEL(-8, 0)
	special_mags = FALSE
	bolt_type = BOLT_TYPE_STANDARD
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_MEDIUM
	slot_flags = ITEM_SLOT_BELT
	accepted_magazine_type = /obj/item/ammo_box/magazine/miecz
	fire_sound = 'modular_lethal_doppler/paxilweapons_real/sound/seiba/seiba.wav'
	can_suppress = TRUE
	suppressor_x_offset = 0
	suppressor_y_offset = 0
	burst_size = 1
	fire_delay = 0.2 SECONDS
	actions_types = list()
	spread = 5
	recoil = 0.25
	pickup_sound = 'modular_lethal_doppler/paxilweapons_real/sound/pickup_sounds/drop_mediumgun.wav'
	drop_sound = 'modular_lethal_doppler/paxilweapons_real/sound/pickup_sounds/drop_mediumgun.wav'
	gunshot_animation_information = list(
		"pixel_x" = 28, \
		"pixel_y" = 0, \
		"inactive_wben_suppressed" = TRUE, \
	)
	recoil_animation_information = list(
		"recoil_angle_upper" = -10, \
		"recoil_angle_lower" = -20, \
		"recoil_burst_speed" = 0.5, \
		"return_burst_speed" = 0.5, \
	)

/obj/item/gun/ballistic/automatic/miecz/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/automatic_fire, fire_delay)

/obj/item/gun/ballistic/automatic/miecz/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_SZOT)

/obj/item/gun/ballistic/automatic/miecz/examine(mob/user)
	. = ..()
	. += span_notice("You can <b>examine closer</b> to learn a little more about this weapon.")

/obj/item/gun/ballistic/automatic/miecz/examine_more(mob/user)
	. = ..()
	. += "The Miecz is one of the newest weapons to come out of CIN member state hands and \
		into the wild, typically the frontier. It was built alongside the round it fires, the \
		.27-54 Cesarzawa pistol round. Based on the proven Lanca design, it seeks to bring that \
		same reliable weapon design into the factor of a submachinegun. While it is significantly \
		larger than many comparable weapons in SolFed use, it more than makes up for it with ease \
		of control and significant firerate."
	return .

/obj/item/gun/ballistic/automatic/miecz/no_mag
	spawnwithmagazine = FALSE
