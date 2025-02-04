// Combat surgeon kit, except specifically for stealing organs from people

/obj/item/storage/medkit/combat_surgeon/organ
	name = "organ extraction toolkit"
	desc = "A folding kit that is ideally filled with surgical tools for obtaining those sweet, sweet organs. Comes with hooks to attach to your pockets."
	icon = 'modular_lethal_doppler/medical_stuff/icons/storage.dmi'
	icon_state = "organ_romania"
	equip_sound = 'sound/items/equip/toolbelt_equip.ogg'
	slot_flags = ITEM_SLOT_POCKETS

/obj/item/storage/medkit/combat_surgeon/organ/stocked

/obj/item/storage/medkit/combat_surgeon/organ/stocked/PopulateContents()
	var/static/items_inside = list(
		/obj/item/scalpel/cruel = 1,
		/obj/item/retractor/cruel = 1,
		/obj/item/hemostat/cruel = 1,
		/obj/item/cautery/cruel = 1,
		/obj/item/circular_saw = 1,
		/obj/item/surgical_drapes = 1,
		/obj/item/shears = 1,
	)
	generate_items_inside(items_inside,src)
