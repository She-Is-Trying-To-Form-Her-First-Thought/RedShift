/datum/lazy_template/deathmatch/underground_thunderdome
	name = "Sector Nine Simulation"
	desc = "A simulated section of sector nine, used by many gakster companies for training before cache raids."
	max_players = 13
	allowed_loadouts = list(
		/datum/outfit/deathmatch_loadout/gakster,
	)
	map_name = "arena_lethal"
	key = "arena_lethal"

/datum/outfit/deathmatch_loadout/gakster
	name = "Deathmatch: Gakster"
	display_name = "Gakster"
	desc = "A gakster, exactly as the media around the system depicts them."
	glasses = /obj/item/clothing/glasses/heat
	mask = /obj/item/clothing/mask/neck_gaiter
	uniform = /obj/item/clothing/under/frontier_colonist
	shoes = /obj/item/clothing/shoes/jackboots/frontier_colonist
	gloves = /obj/item/clothing/gloves/frontier_colonist
	back = /obj/item/storage/backpack/industrial/frontier_colonist

/obj/structure/mystery_box
	base_pixel_y = 0
	pixel_y = 0
