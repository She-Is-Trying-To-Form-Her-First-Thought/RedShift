/datum/orderable_item/peacekeeper
	category_index = "Peacekeeper"

/datum/orderable_item/peacekeeper/un_helmet
	name = "Peacekeeper Helmet"
	item_path = /obj/item/clothing/head/helmet/sf_peacekeeper
	cost_per_order = 300

/datum/orderable_item/peacekeeper/un_armor
	name = "Peacekeeper Vest"
	item_path = /obj/item/clothing/suit/armor/sf_peacekeeper
	cost_per_order = 300

/datum/orderable_item/peacekeeper/pistol_magazine
	name = "Sol Pistol Magazine"
	item_path = /obj/item/ammo_box/magazine/c35sol_pistol/starts_empty
	cost_per_order = 50

/datum/orderable_item/peacekeeper/pistol_magazine_super
	name = "Sol Pistol Extended Magazine"
	item_path = /obj/item/ammo_box/magazine/c35sol_pistol/stendo/starts_empty
	cost_per_order = 100

/datum/orderable_item/peacekeeper/trappiste_magazine
	name = "Trappiste Pistol Magazine"
	item_path = /obj/item/ammo_box/magazine/c585trappiste_pistol/spawns_empty
	cost_per_order = 50

/datum/orderable_item/peacekeeper/rifle_magazine
	name = "Sol Rifle Short Magazine"
	item_path = /obj/item/ammo_box/magazine/c40sol_rifle/starts_empty
	cost_per_order = 50

/datum/orderable_item/peacekeeper/rifle_magazine_super
	name = "Sol Rifle Magazine"
	item_path = /obj/item/ammo_box/magazine/c40sol_rifle/standard/starts_empty
	cost_per_order = 100

/datum/orderable_item/peacekeeper/grenade_magazine
	name = "Kiboko Magazine"
	item_path = /obj/item/ammo_box/magazine/c980_grenade/starts_empty
	cost_per_order = 100

/datum/orderable_item/peacekeeper/grenade_magazine_super
	name = "Kiboko Drum"
	item_path = /obj/item/ammo_box/magazine/c980_grenade/drum/starts_empty
	cost_per_order = 200

// nri larp stuff

/datum/orderable_item/imperial
	category_index = "Rayisa"

/datum/orderable_item/imperial/plasma_battery
	name = "Plasma Battery"
	desc = "A rechargeable, detachable battery that serves as a power source for plasma projectors."
	item_path = /obj/item/ammo_box/magazine/recharge/plasma_battery
	cost_per_order = 50

/datum/orderable_item/imperial/miecz_mag
	name = "Miecz Magazine"
	item_path = /obj/item/ammo_box/magazine/miecz/spawns_empty
	cost_per_order = 100

/datum/orderable_item/imperial/lanca_mag
	name = "Lanca Magazine"
	item_path = /obj/item/ammo_box/magazine/lanca/spawns_empty
	cost_per_order = 50

// Some of the special larp ammo

/datum/orderable_item/operator_larp
	category_index = "Operator"

/datum/orderable_item/operator_larp/chinmoku_short
	name = "Chinmoku short magazine"
	item_path = /obj/item/ammo_box/magazine/c12chinmoku/starts_empty
	cost_per_order = 50

/datum/orderable_item/operator_larp/chinmoku_real
	name = "Chinmoku magazine"
	item_path = /obj/item/ammo_box/magazine/c12chinmoku/standard/starts_empty
	cost_per_order = 100

/datum/orderable_item/operator_larp/chinmoku_tracer
	name = "12mm Chinmoku tracer ammo stack"
	desc = "A stack of 12mm Chinmoku tracer cartridges."
	item_path = /obj/item/ammo_box/magazine/ammo_stack/c12chinmoku/prefilled/tracer
	cost_per_order = 50

/datum/orderable_item/operator_larp/chinmoku_special
	name = "12mm Chinmoku special ammo stack"
	desc = "A stack of 12mm Chinmoku special cartridges."
	item_path = /obj/item/ammo_box/magazine/ammo_stack/c12chinmoku/prefilled/special
	cost_per_order = 100

/datum/orderable_item/operator_larp/chokyu_magazine
	name = "Chokyu sniper magazine"
	item_path = /obj/item/ammo_box/magazine/c8marsian/starts_empty
	cost_per_order = 50

/datum/orderable_item/operator_larp/marsian_shockwave
	name = "8mm Marsian shockwave ammo stack"
	desc = "A stack of 8mm Marsian shockwave cartridges."
	item_path = /obj/item/ammo_box/magazine/ammo_stack/c8marsian/prefilled/shockwave
	cost_per_order = 100

/datum/orderable_item/operator_larp/marsian_piercing
	name = "8mm Marsian piercing ammo stack"
	desc = "A stack of 8mm Marsian piercing cartridges."
	item_path = /obj/item/ammo_box/magazine/ammo_stack/c8marsian/prefilled/piercing
	cost_per_order = 100

// Everything shotgun

/datum/orderable_item/shotgun_man
	category_index = "Safariman"

/datum/orderable_item/shotgun_man/longshot
	name = "6ga longshot ammo stack"
	desc = "A stack of 6 gauge longshot shells."
	item_path = /obj/item/ammo_box/magazine/ammo_stack/s6gauge/prefilled/longshot
	cost_per_order = 50

/datum/orderable_item/shotgun_man/flash_6ga
	name = "6ga flash ammo stack"
	desc = "A stack of 6 gauge flash shells."
	item_path = /obj/item/ammo_box/magazine/ammo_stack/s6gauge/prefilled/flash
	cost_per_order = 50

/datum/orderable_item/shotgun_man/nomi_magazine
	name = "Nomi 12ga drum"
	item_path = /obj/item/ammo_box/magazine/c12nomi/starts_empty
	cost_per_order = 100

// Consumable medical stuff

/datum/orderable_item/medical_consumable
	category_index = "Dealer"

/datum/orderable_item/medical_consumable/coagulant
	name = "coagulant-F packet"
	item_path = /obj/item/stack/medical/suture/coagulant
	cost_per_order = 25

/datum/orderable_item/medical_consumable/sutures
	name = "hemostatic sutures"
	item_path = /obj/item/stack/medical/suture/bloody
	cost_per_order = 50

/datum/orderable_item/medical_consumable/red_sun_over_paradise
	name = "coagulant-F packet"
	item_path = /obj/item/stack/medical/ointment/red_sun
	cost_per_order = 25

/datum/orderable_item/medical_consumable/blood_mesh
	name = "hemostatic mesh"
	item_path = /obj/item/stack/medical/mesh/bloody
	cost_per_order = 50

/datum/orderable_item/medical_consumable/bone_breaker
	name = "subdermal splint applicator"
	item_path = /obj/item/stack/medical/wound_recovery
	cost_per_order = 200

/datum/orderable_item/medical_consumable/super_coagulant
	name = "rapid coagulant applicator"
	item_path = /obj/item/stack/medical/wound_recovery/rapid_coagulant
	cost_per_order = 200

/datum/orderable_item/medical_consumable/blood_mesh
	name = "premium robotic repair spray"
	item_path = /obj/item/stack/medical/wound_recovery/robofoam_super
	cost_per_order = 200

/datum/orderable_item/medical_consumable/medpen_morpital
	name = "morpital regenerative stimulant injector"
	item_path = /obj/item/reagent_containers/hypospray/medipen/deforest/morpital
	cost_per_order = 50

/datum/orderable_item/medical_consumable/medpen_lipital
	name = "lipital regenerative stimulant injector"
	item_path = /obj/item/reagent_containers/hypospray/medipen/deforest/lipital
	cost_per_order = 50

/datum/orderable_item/medical_consumable/medpen_lepoturi
	name = "lepoturi burn treatment injector"
	item_path = /obj/item/reagent_containers/hypospray/medipen/deforest/lepoturi
	cost_per_order = 50

/datum/orderable_item/medical_consumable/medpen_coagulants
	name = "coagulant-S injector"
	item_path = /obj/item/reagent_containers/hypospray/medipen/deforest/coagulants
	cost_per_order = 50

/datum/orderable_item/medical_consumable/medpen_calopine
	name = "calopine emergency stabilizant injector"
	item_path = /obj/item/reagent_containers/hypospray/medipen/deforest/calopine
	cost_per_order = 50

// Lasers and such

/datum/orderable_item/pewpew
	category_index = "Allstar"

/datum/orderable_item/pewpew/lasergun
	name = "Allstar SC-1 laser carbine"
	item_path = /obj/item/gun/energy/laser
	cost_per_order = 200

/datum/orderable_item/pewpew/lasergunauto
	name = "Allstar SC-1 laser auto-carbine"
	item_path = /obj/item/gun/energy/laser/carbine
	cost_per_order = 200

/datum/orderable_item/pewpew/lasergunduo
	name = "Allstar SC-2 energy carbine"
	item_path = /obj/item/gun/energy/e_gun
	cost_per_order = 250

/datum/orderable_item/pewpew/lasergunmini
	name = "Holdout energy pistol"
	item_path = /obj/item/gun/energy/e_gun/mini
	cost_per_order = 150


