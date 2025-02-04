/obj/machinery/vending/wallmed/epic_loot/evil/inborn
	name = "\improper SuperSupply Premium ™"
	desc = "Wall-mounted dispenser filled with bullets and medical supplies."
	flags_1 = NO_DEBRIS_AFTER_DECONSTRUCTION
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
	product_categories = list(
		list(
			"name" = "Medical",
			"icon" = "suitcase-medical",
			"products" = list(
				/obj/item/healthanalyzer/simple = INFINITY,
				/obj/item/stack/medical/bandage = INFINITY,
				/obj/item/stack/medical/gauze = INFINITY,
				/obj/item/stack/medical/gauze/sterilized = INFINITY,
				/obj/item/stack/medical/bruise_pack = INFINITY,
				/obj/item/stack/medical/suture/coagulant = INFINITY,
				/obj/item/stack/medical/suture/bloody = INFINITY,
				/obj/item/stack/medical/suture/medicated = INFINITY,
				/obj/item/stack/medical/ointment/red_sun = INFINITY,
				/obj/item/stack/medical/mesh/bloody = INFINITY,
				/obj/item/stack/medical/mesh/advanced = INFINITY,
				/obj/item/reagent_containers/pill/robotic_patch/synth_repair = INFINITY,
				/obj/item/reagent_containers/hypospray/medipen/deforest/morpital = INFINITY,
				/obj/item/reagent_containers/hypospray/medipen/deforest/lipital = INFINITY,
				/obj/item/reagent_containers/hypospray/medipen/deforest/lepoturi = INFINITY,
				/obj/item/reagent_containers/hypospray/medipen/deforest/pentibinin = INFINITY,
				/obj/item/reagent_containers/hypospray/medipen/deforest/coagulants = INFINITY,
				/obj/item/reagent_containers/hypospray/medipen/deforest/calopine = INFINITY,
				/obj/item/reagent_containers/hypospray/medipen/deforest/meridine = INFINITY,
				/obj/item/reagent_containers/hypospray/medipen/deforest/halobinin = INFINITY,
				/obj/item/reagent_containers/hypospray/medipen/glucose = INFINITY,
				/obj/item/reagent_containers/hypospray/medipen/glucose/synth_charger = INFINITY,
				/obj/item/reagent_containers/hypospray/medipen/deforest/robot_system_cleaner = INFINITY,
				/obj/item/storage/medkit/frontier/stocked = INFINITY,
				/obj/item/storage/medkit/combat_surgeon/stocked = INFINITY,
				/obj/item/storage/medkit/robotic_repair/preemo/stocked = INFINITY,
				/obj/item/tank/internals/plasmaman/belt/full = INFINITY,
				/obj/item/tank/internals/nitrogen/belt/full = INFINITY,
				/obj/item/stack/cable_coil/thirty = INFINITY,
				/obj/item/weldingtool/experimental = INFINITY,
			),
		),
		list(
			"name" = "Ammunition",
			"icon" = "person-rifle",
			"products" = list(
				/obj/item/flashlight/flare = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/c980/prefilled/smoke = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/c980/prefilled/ecm = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/c980/prefilled/beacon = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/s12gauge/prefilled/flechette = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/s12gauge/prefilled/ecm = INFINITY,
				/obj/item/ammo_box/magazine/ammo_stack/s12gauge/prefilled/ap_slug = INFINITY,
			),
		),
	)
	contraband = list()
	default_price = 0
	extra_price = 0
	onstation = FALSE

MAPPING_DIRECTIONAL_HELPERS(/obj/machinery/vending/wallmed/epic_loot/evil/inborn, 32)

/obj/machinery/vending/evil_clothing/super_evil/inborn
	name = "Ultra Evil ClothesMate"
	product_categories = list(
		list(
			"name" = "Clothing",
			"icon" = "shirt",
			"products" = list(
				/obj/item/clothing/mask/neck_gaiter = INFINITY,
				/obj/item/clothing/mask/gas/sechailer = INFINITY,
				/obj/item/clothing/mask/gas/atmos/frontier_colonist = INFINITY,
				/obj/item/clothing/gloves/frontier_colonist = INFINITY,
				/obj/item/clothing/gloves/tackler/combat = INFINITY,
				/obj/item/clothing/gloves/latex/nitrile = INFINITY,
				/obj/item/clothing/shoes/jackboots/frontier_colonist = INFINITY,
				/obj/item/clothing/shoes/glow = INFINITY,
				/obj/item/clothing/shoes/swagshoes = INFINITY,
				/obj/item/clothing/glasses/night = INFINITY,
				/obj/item/clothing/glasses/sunglasses/big = INFINITY,
				/obj/item/clothing/glasses/nightmare_vision = INFINITY,
				/obj/item/clothing/under/syndicate/combat = INFINITY,
				/obj/item/clothing/under/costume/tmc = INFINITY,
				/obj/item/clothing/under/costume/osi = INFINITY,
				/obj/item/clothing/suit/costume/pg = INFINITY,
				/obj/item/clothing/suit/jacket/leather/biker = INFINITY,
				/obj/item/clothing/suit/jacket/leather = INFINITY,
				/obj/item/clothing/suit/toggle/jacket/sweater = INFINITY,
				/obj/item/clothing/neck/ranger_poncho = INFINITY,
				/obj/item/clothing/neck/robe_cape = INFINITY,
				/obj/item/clothing/neck/long_cape = INFINITY,
				/obj/item/clothing/neck/wide_cape = INFINITY,
			),
		),
		list(
			"name" = "Gear",
			"icon" = "gear",
			"products" = list(
				/obj/item/storage/pouch/medical/loaded = INFINITY,
				/obj/item/storage/pouch/ammo = INFINITY,
				/obj/item/storage/epic_loot_org_pouch = INFINITY,
				/obj/item/storage/epic_loot_medpen_case = INFINITY,
				/obj/item/storage/belt/military/assault = INFINITY,
				/obj/item/storage/backpack/industrial/frontier_colonist = INFINITY,
				/obj/item/storage/backpack/industrial/frontier_colonist/messenger = INFINITY,
				/obj/item/storage/backpack/industrial/frontier_colonist/satchel = INFINITY,
				/obj/item/shield/ballistic = INFINITY,
				/obj/item/motiondetector = INFINITY,
			),
		),
		list(
			"name" = "Weapons",
			"icon" = "hammer",
			"products" = list(
				/obj/item/flashlight/flare = INFINITY,
				/obj/item/grenade/smokebomb = INFINITY,
				/obj/item/grenade/mirage = INFINITY,
				/obj/item/autosurgeon = INFINITY,
				/obj/item/screwdriver/nuke = INFINITY,
				/obj/item/wrench/combat = INFINITY,
				/obj/item/organ/cyberimp/arm/shell_launcher = INFINITY,
				/obj/item/organ/cyberimp/arm/razorwire = INFINITY,
				/obj/item/organ/cyberimp/arm/strongarm = INFINITY,
				/obj/item/organ/cyberimp/arm/esword = INFINITY,
			),
		),
		list(
			"name" = "Limb Replacement",
			"icon" = "hand",
			"products" = list(
				/obj/item/bodypart/leg/left/robot/advanced = INFINITY,
				/obj/item/bodypart/leg/right/robot/advanced = INFINITY,
				/obj/item/bodypart/arm/left/robot/advanced = INFINITY,
				/obj/item/bodypart/arm/right/robot/advanced = INFINITY,
				/obj/item/shears  = INFINITY,
			),
		),

	)
