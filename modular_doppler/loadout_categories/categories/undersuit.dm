/datum/loadout_category/undersuit
	category_name = "Undersuit"
	category_ui_icon = FA_ICON_SHIRT
	type_to_generate = /datum/loadout_item/undersuit
	tab_order = /datum/loadout_category/suit::tab_order + 1

/*
*	LOADOUT ITEM DATUMS FOR THE UNDERSUIT SLOT
*/

/datum/loadout_item/undersuit
	abstract_type = /datum/loadout_item/undersuit

/datum/loadout_item/undersuit/pre_equip_item(datum/outfit/outfit, datum/outfit/outfit_important_for_life, mob/living/carbon/human/equipper, visuals_only = FALSE) // don't bother storing in backpack, can't fit
	if(initial(outfit_important_for_life.uniform))
		return TRUE

/datum/loadout_item/undersuit/insert_path_into_outfit(datum/outfit/outfit, mob/living/carbon/human/equipper, visuals_only = FALSE, override_items = LOADOUT_OVERRIDE_BACKPACK)
	if(override_items == LOADOUT_OVERRIDE_BACKPACK && !visuals_only)
		if(outfit.uniform)
			if(equipper.jumpsuit_style == PREF_SKIRT)
				outfit.uniform = "[outfit.uniform]/skirt"
				if(!text2path(outfit.uniform))
					outfit.uniform = initial(outfit.uniform)
				LAZYADD(outfit.backpack_contents, outfit.uniform)
			else
				LAZYADD(outfit.backpack_contents, outfit.uniform)
		outfit.uniform = item_path
	else
		outfit.uniform = item_path

/*
*	DOPPLER STANDARD UNIFORM OPTIONS
*/

/datum/loadout_item/undersuit/doppler_uniform
	name = "Doppler Uniform"
	item_path = /obj/item/clothing/under/misc/doppler_uniform/standard

/datum/loadout_item/undersuit/doppler_uniform/overalls
	name = "Doppler Uniform w/ Overalls"
	item_path = /obj/item/clothing/under/misc/doppler_uniform/standard/overalls

/datum/loadout_item/undersuit/doppler_uniform/cozy
	name = "Cozy Doppler Uniform"
	item_path = /obj/item/clothing/under/misc/doppler_uniform/standard/cozy

/datum/loadout_item/undersuit/doppler_uniform/cozy/overalls
	name = "Cozy Doppler Uniform w/ Overalls"
	item_path = /obj/item/clothing/under/misc/doppler_uniform/standard/cozy/overalls

/datum/loadout_item/undersuit/doppler_uniform/suit
	name = "Doppler Suit"
	item_path = /obj/item/clothing/under/misc/doppler_uniform/standard/suit

/datum/loadout_item/undersuit/doppler_uniform/suit/overalls
	name = "Doppler Suit w/ Overalls"
	item_path = /obj/item/clothing/under/misc/doppler_uniform/standard/suit/overalls

/datum/loadout_item/undersuit/doppler_uniform/suit/overalls/random
	name = "Random Doppler Suit w/ Overalls"
	item_path = /obj/item/clothing/under/misc/doppler_uniform/standard/suit/overalls/colored

/*
*	FANCYPANTS
*/

/datum/loadout_item/undersuit/pants
	name = "Pants"
	item_path = /obj/item/clothing/under/pants

/datum/loadout_item/undersuit/pants/shorts
	name = "Shorts"
	item_path = /obj/item/clothing/under/shorts

/datum/loadout_item/undersuit/pants/shorts/shorter
	name = "Short Shorts"
	item_path = /obj/item/clothing/under/shorts/shorter

/datum/loadout_item/undersuit/pants/shorts/shorter/shortest
	name = "Shortest Shorts"
	item_path = /obj/item/clothing/under/shorts/shorter/shortest

/datum/loadout_item/undersuit/pants/slacks
	name = "Slacks"
	item_path = /obj/item/clothing/under/pants/slacks

/datum/loadout_item/undersuit/pants/jeans
	name = "Jeans"
	item_path = /obj/item/clothing/under/pants/jeans

/datum/loadout_item/undersuit/pants/moto
	name = "Moto Pants"
	item_path = /obj/item/clothing/under/moto_leggings

/datum/loadout_item/undersuit/pants/jeans/shorts
	name = "Jean Shorts"
	item_path = /obj/item/clothing/under/shorts/jeanshorts

/datum/loadout_item/undersuit/pants/jeans/shorts/shorter
	name = "Short Jean Shorts"
	item_path = /obj/item/clothing/under/shorts/shorter/jeans

/datum/loadout_item/undersuit/pants/jeans/shorts/shorter/shortest
	name = "Shortest Jean Shorts"
	item_path = /obj/item/clothing/under/shorts/shorter/jeans/shortest

/datum/loadout_item/undersuit/pants/track
	name = "Track Pants"
	item_path = /obj/item/clothing/under/pants/track

/datum/loadout_item/undersuit/pants/camo
	name = "Camo Pants"
	item_path = /obj/item/clothing/under/pants/camo

/datum/loadout_item/undersuit/pants/big_pants
	name = "JUNCO megacargo pants"
	item_path = /obj/item/clothing/under/pants/big_pants

/datum/loadout_item/undersuit/pants/skirt
	name = "Simple Skirt"
	item_path = /obj/item/clothing/under/shorts/shorter/skirt

/datum/loadout_item/undersuit/pants/skirt/medium
	name = "Medium Skirt"
	item_path = /obj/item/clothing/under/dress/skirt/medium

/datum/loadout_item/undersuit/pants/skirt/long
	name = "Long Skirt"
	item_path = /obj/item/clothing/under/dress/skirt/long

/datum/loadout_item/undersuit/pants/skirt/loincloth
	name = "Loincloth"
	item_path = /obj/item/clothing/under/dress/skirt/loincloth

/datum/loadout_item/undersuit/pants/skirt/loincloth/alt
	name = "Loincloth, Alt"
	item_path = /obj/item/clothing/under/dress/skirt/loincloth/loincloth_alt

/datum/loadout_item/undersuit/formal
	name = "Pencilskirt with Shirt"
	item_path = /obj/item/clothing/under/suit/pencil

/datum/loadout_item/undersuit/formal/pencil
	name = "Pencilskirt"
	item_path = /obj/item/clothing/under/suit/pencil/noshirt

/datum/loadout_item/undersuit/formal/pencil/black_really
	name = "Executive Pencilskirt"
	item_path = /obj/item/clothing/under/suit/pencil/black_really

/datum/loadout_item/undersuit/formal/pencil/charcoal
	name = "Charcoal Pencilskirt"
	item_path = /obj/item/clothing/under/suit/pencil/charcoal

/datum/loadout_item/undersuit/formal/pencil/navy
	name = "Navy Pencilskirt"
	item_path = /obj/item/clothing/under/suit/pencil/navy

/datum/loadout_item/undersuit/formal/pencil/burgandy
	name = "Burgandy Pencilskirt"
	item_path = /obj/item/clothing/under/suit/pencil/burgandy

/datum/loadout_item/undersuit/formal/pencil/checkered
	name = "Checkered Pencilskirt with Shirt"
	item_path = /obj/item/clothing/under/suit/pencil/checkered

/datum/loadout_item/undersuit/formal/pencil/checkered/noshirt
	name = "Checkered Pencilskirt"
	item_path = /obj/item/clothing/under/suit/pencil/checkered/noshirt

/datum/loadout_item/undersuit/formal/pencil/tan
	name = "Tan Pencilskirt"
	item_path = /obj/item/clothing/under/suit/pencil/tan

/datum/loadout_item/undersuit/formal/pencil/green
	name = "Green Pencilskirt"
	item_path = /obj/item/clothing/under/suit/pencil/green

/datum/loadout_item/undersuit/formal/cowl_neck
	name = "Cowl Neck Shirt & Trousers"
	item_path = /obj/item/clothing/under/collared_shirt

/datum/loadout_item/undersuit/formal/collared_shirt
	name = "Collared Shirt & Trousers"
	item_path = /obj/item/clothing/under/collared_shirt

/*
*	BUTTONDOWNS
*/

/datum/loadout_item/undersuit/buttondown
	name = "Buttondown"
	item_path = /obj/item/clothing/under/costume/buttondown

/datum/loadout_item/undersuit/buttondown/slacks
	name = "Buttondown w/ Slacks"
	item_path = /obj/item/clothing/under/costume/buttondown/slacks

/datum/loadout_item/undersuit/buttondown/shorts
	name = "Buttondown w/ Shorts"
	item_path = /obj/item/clothing/under/costume/buttondown/shorts

/datum/loadout_item/undersuit/buttondown/skirt
	name = "Buttondown w/ Skirt"
	item_path = /obj/item/clothing/under/costume/buttondown/skirt


/*
*	DRESSES
*/

/datum/loadout_item/undersuit/dress
	name = "Dress"
	item_path = /obj/item/clothing/under/dress

/datum/loadout_item/undersuit/dress/giantscarf
	name = "Giant Scarf"
	item_path = /obj/item/clothing/under/dress/doppler/giant_scarf

/datum/loadout_item/undersuit/dress/evening
	name = "Evening Dress"
	item_path = /obj/item/clothing/under/dress/eveninggown

/datum/loadout_item/undersuit/dress/sun
	name = "Sun Dress"
	item_path = /obj/item/clothing/under/dress/sundress

/datum/loadout_item/undersuit/dress/striped
	name = "Striped Dress"
	item_path = /obj/item/clothing/under/dress/striped

/datum/loadout_item/undersuit/dress/tango
	name = "Tango Dress"
	item_path = /obj/item/clothing/under/dress/tango

/datum/loadout_item/undersuit/dress/skirt
	name = "Skirt Dress"
	item_path = /obj/item/clothing/under/dress/skirt

/datum/loadout_item/undersuit/dress/skirt/plaid
	name = "Plaid Skirt Dress"
	item_path = /obj/item/clothing/under/dress/skirt/plaid

/datum/loadout_item/undersuit/dress/skirt/turtle
	name = "Turtle-Skirt Dress"
	item_path = /obj/item/clothing/under/dress/skirt/turtleskirt

/datum/loadout_item/undersuit/dress/sailor
	name = "Heretical Dress"
	item_path = /obj/item/clothing/under/dress/sailor

/datum/loadout_item/undersuit/dress/tutu
	name = "Pink Tutu"
	item_path = /obj/item/clothing/under/dress/doppler/pinktutu

/datum/loadout_item/undersuit/dress/flower
	name = "Flower Dress"
	item_path = /obj/item/clothing/under/dress/doppler/flower

/datum/loadout_item/undersuit/dress/penta
	name = "Pentagram Dress"
	item_path = /obj/item/clothing/under/dress/doppler/pentagram

/datum/loadout_item/undersuit/dress/strapless
	name = "Strapless Dress"
	item_path = /obj/item/clothing/under/dress/doppler/strapless

/datum/loadout_item/undersuit/dress/maid
	name = "Maid Outfit"
	item_path = /obj/item/clothing/under/maid_costume

/// JAPANESE/LUNAR BREAKER

/datum/loadout_item/undersuit/dress/qipao
	name = "Qipao"
	item_path = /obj/item/clothing/under/dress/doppler/qipao

/datum/loadout_item/undersuit/dress/qipao/customtrim
	name = "Qipao (Custom Trim)"
	item_path = /obj/item/clothing/under/dress/doppler/qipao/customtrim

/datum/loadout_item/undersuit/dress/cheongsam
	name = "Cheongsam"
	item_path = /obj/item/clothing/under/dress/doppler/cheongsam

/datum/loadout_item/undersuit/dress/cheongsam/customtrim
	name = "Cheongsam (Custom Trim)"
	item_path = /obj/item/clothing/under/dress/doppler/cheongsam/customtrim

/datum/loadout_item/undersuit/dress/yukata
	name = "Basic Yukata"
	item_path = /obj/item/clothing/under/dress/doppler/yukata

/datum/loadout_item/undersuit/dress/yukata/tg
	name = "Yukata"
	item_path = /obj/item/clothing/under/costume/yukata

/datum/loadout_item/undersuit/dress/yukata/tg/greyscale
	name = "Custom Yukata"
	item_path = /obj/item/clothing/under/costume/yukata/greyscale

/datum/loadout_item/undersuit/dress/yukata/tg/green
	name = "Aqua Yukata"
	item_path = /obj/item/clothing/under/costume/yukata/green

/datum/loadout_item/undersuit/dress/yukata/tg/green/greyscale
	name = "Custom Floral Yukata"
	item_path = /obj/item/clothing/under/costume/yukata/green/greyscale

/datum/loadout_item/undersuit/dress/yukata/tg/white
	name = "White Yukata"
	item_path = /obj/item/clothing/under/costume/yukata/white

/datum/loadout_item/undersuit/dress/yukata/tg/white/greyscale
	name = "Custom Snowy Yukata"
	item_path = /obj/item/clothing/under/costume/yukata/white/greyscale

/datum/loadout_item/undersuit/dress/kimono
	name = "Kimono"
	item_path = /obj/item/clothing/under/costume/kimono

/datum/loadout_item/undersuit/dress/kimono/greyscale
	name = "Custom Kimono"
	item_path = /obj/item/clothing/under/costume/kimono/greyscale

/datum/loadout_item/undersuit/dress/kimono/red
	name = "Red Kimono"
	item_path = /obj/item/clothing/under/costume/kimono/red

/datum/loadout_item/undersuit/dress/kimono/purple
	name = "Purple Kimono"
	item_path = /obj/item/clothing/under/costume/kimono/purple

/*
*	MISCELLANEOUS
*/

/datum/loadout_item/undersuit/gear_harness
	name = "Gear Harness"
	item_path = /obj/item/clothing/under/misc/gear_harness

/datum/loadout_item/undersuit/jumpsuit
	name = "Colorable Jumpsuit"
	item_path = /obj/item/clothing/under/color

/datum/loadout_item/undersuit/jumpskirt
	name = "Colorable Jumpskirt"
	item_path = /obj/item/clothing/under/color/jumpskirt

/datum/loadout_item/undersuit/jumpsuit/frontier
	name = "Frontier Jumpsuit"
	item_path = /obj/item/clothing/under/frontier_colonist

/datum/loadout_item/undersuit/bunnysuit
	name = "Bunny Suit"
	item_path = /obj/item/clothing/under/costume/bunnysuit
