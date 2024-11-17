// Razorwire implant, long reach whip made of extremely thin wire, ouch!

/obj/item/melee/razorwire
	name = "implanted razorwire"
	desc = "A long length of monomolecular filament, built into the back of your hand. \
		Impossibly thin and flawlessly sharp, it should slice through organic materials with no trouble; \
		even from a few steps away. However, results against anything more durable will heavily vary."
	icon = 'modular_lethal_doppler/cool_implants/icons/implants.dmi'
	icon_state = "razorwire_weapon"
	righthand_file = 'modular_lethal_doppler/cool_implants/icons/inhands/lefthand.dmi'
	lefthand_file = 'modular_lethal_doppler/cool_implants/icons/inhands/righthand.dmi'
	inhand_icon_state = "razorwire"
	w_class = WEIGHT_CLASS_BULKY
	sharpness = SHARP_EDGED
	force = 20
	demolition_mod = 0.25 // This thing sucks at destroying stuff
	wound_bonus = 10
	bare_wound_bonus = 20
	weak_against_armour = TRUE
	reach = 2
	hitsound = 'sound/items/weapons/whip.ogg'
	attack_verb_continuous = list("slashes", "whips", "lashes", "lacerates")
	attack_verb_simple = list("slash", "whip", "lash", "lacerate")
	obj_flags = UNIQUE_RENAME | INFINITE_RESKIN
	uses_advanced_reskins = TRUE
	unique_reskin = list(
		"Evil Red" = list(
			RESKIN_ICON_STATE = "razorwire_weapon",
			RESKIN_INHAND_STATE = "razorwire"
		),
		"Teal I Think?" = list(
			RESKIN_ICON_STATE = "razorwire_weapon_teal",
			RESKIN_INHAND_STATE = "razorwire_teal"
		),
		"Yellow" = list(
			RESKIN_ICON_STATE = "razorwire_weapon_yellow",
			RESKIN_INHAND_STATE = "razorwire_yellow"
		),
		"Ourple" = list(
			RESKIN_ICON_STATE = "razorwire_weapon_ourple",
			RESKIN_INHAND_STATE = "razorwire_ourple"
		),
		"Green" = list(
			RESKIN_ICON_STATE = "razorwire_weapon_green",
			RESKIN_INHAND_STATE = "razorwire_green"
		),
	)

/obj/item/organ/cyberimp/arm/razorwire
	name = "razorwire spool implant"
	desc = "An integrated spool of razorwire, capable of being used as a weapon when whipped at your foes. \
		Built into the back of your hand, try your best to not get it tangled."
	items_to_create = list(/obj/item/melee/razorwire)
	icon = 'modular_lethal_doppler/cool_implants/icons/implants.dmi'
	icon_state = "razorwire"

/obj/item/autosurgeon/syndicate/razorwire
	name = "razorwire autosurgeon"
	starting_organ = /obj/item/organ/cyberimp/arm/razorwire

// Shell launch system, an arm mounted single-shot shotgun/.980 grenade launcher that comes out of your arm

/obj/item/gun/ballistic/shotgun/shell_launcher
	name = "shell launch system"
	desc = "A mounted cannon seated comfortably in a forearm compartment. This humanitarian device is capable in normal \
		mode of firing essentially any shotgun shell, and can be wrenched to a .980 Tydhouer grenade mode, \
		shells famously seen in the 'Kiboko' launcher."
	icon = 'modular_lethal_doppler/cool_implants/icons/implants.dmi'
	icon_state = "shell_cannon_weapon"
	righthand_file = 'modular_lethal_doppler/cool_implants/icons/inhands/lefthand.dmi'
	lefthand_file = 'modular_lethal_doppler/cool_implants/icons/inhands/righthand.dmi'
	inhand_icon_state = "shell_cannon"
	worn_icon = 'icons/mob/clothing/belt.dmi'
	worn_icon_state = "gun"
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_LIGHT
	force = 10
	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/shot/shell_cannon
	obj_flags = UNIQUE_RENAME
	rack_sound = 'modular_lethal_doppler/paxilweapons_real/sound/doesnt_miss/shotgun_rack.ogg'
	semi_auto = TRUE
	bolt_type = BOLT_TYPE_NO_BOLT
	can_be_sawn_off = FALSE
	pb_knockback = 2
	can_modify_ammo = TRUE
	initial_caliber = CALIBER_SHOTGUN
	alternative_caliber = CALIBER_980TYDHOUER
	recoil = 4
	inhand_x_dimension = 32
	inhand_y_dimension = 32
	trigger_guard = TRIGGER_GUARD_ALLOW_ALL

/obj/item/ammo_box/magazine/internal/shot/shell_cannon
	name = "shell launch system internal magazine"
	ammo_type = /obj/item/ammo_casing/shotgun/beanbag
	caliber = CALIBER_SHOTGUN
	max_ammo = 1
	multiload = FALSE

/obj/item/organ/cyberimp/arm/shell_launcher
	name = "shell launch system implant"
	desc = "A mounted, single-shot housing for a shell launch cannon; capable of firing either twelve gauge shotgun shells, or .980 Tydhouer grenades."
	items_to_create = list(/obj/item/gun/ballistic/shotgun/shell_launcher)
	icon = 'modular_lethal_doppler/cool_implants/icons/implants.dmi'
	icon_state = "shell_cannon"

/obj/item/autosurgeon/syndicate/shell_launcher
	name = "shell launcher autosurgeon"
	starting_organ = /obj/item/organ/cyberimp/arm/shell_launcher
