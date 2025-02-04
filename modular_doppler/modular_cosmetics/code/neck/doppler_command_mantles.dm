/obj/item/clothing/neck/doppler_mantle
	name = "hazard mantle"
	desc = "A command mantle made of fire and acid proof materials to protect the wearer."
	icon = 'modular_doppler/modular_cosmetics/icons/obj/neck/doppler_mantles.dmi'
	worn_icon = 'modular_doppler/modular_cosmetics/icons/mob/neck/doppler_mantles.dmi'
	icon_state = "dark"
	inhand_icon_state = null
	w_class = WEIGHT_CLASS_SMALL
	body_parts_covered = CHEST|ARMS
	resistance_flags = FIRE_PROOF | ACID_PROOF
	/// Does this have the reflective colored strip on it?
	var/has_shiny = FALSE

/obj/item/clothing/neck/doppler_mantle/worn_overlays(mutable_appearance/standing, isinhands, icon_file)
	. = ..()
	if(!isinhands && has_shiny)
		. += emissive_appearance(icon_file, "mantle-emissive", src, alpha = src.alpha)

/obj/item/clothing/neck/doppler_mantle/light
	icon_state = "light"

/obj/item/clothing/neck/doppler_mantle/medical
	name = "medical command mantle"
	icon_state = "doppler_med"
	has_shiny = TRUE

/obj/item/clothing/neck/doppler_mantle/science
	name = "science command mantle"
	icon_state = "doppler_sci"
	has_shiny = TRUE

/obj/item/clothing/neck/doppler_mantle/engineering
	name = "engineering command mantle"
	icon_state = "doppler_eng"
	has_shiny = TRUE

/obj/item/clothing/neck/doppler_mantle/cargo
	name = "supply command mantle"
	icon_state = "doppler_cargo"
	has_shiny = TRUE

/obj/item/clothing/neck/doppler_mantle/command
	name = "command mantle"
	icon_state = "doppler_cmd"
	has_shiny = TRUE

/obj/item/clothing/neck/doppler_mantle/security
	name = "security command mantle"
	icon_state = "doppler_sec"
	has_shiny = TRUE
