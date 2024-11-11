// Makes clothes not get shot off

/obj/item/clothing/under
	limb_integrity = 0
	resistance_flags = FIRE_PROOF

// Peacekeeper armor
// 250 doesn't seem like a massive amount until you realize
// They only take at most 12 damage a hit

/obj/item/clothing/suit/armor/sf_peacekeeper


/obj/item/clothing/head/helmet/sf_peacekeeper


// Hardened armor
// These have less integrity because they nullify armor penetration before being hit

/obj/item/clothing/suit/armor/sf_hardened


/obj/item/clothing/head/helmet/toggleable/sf_hardened


// Sacrificial armor, which needs a lot of health because of its high damage reduction

/obj/item/clothing/suit/armor/sf_sacrificial


/obj/item/clothing/head/helmet/sf_sacrificial


// Frontier soft armor
// These have like security level armor, but the like 5 damage reduction might save you idk

/obj/item/clothing/suit/frontier_colonist_flak
	max_integrity = 500
	limb_integrity = 500

/obj/item/clothing/head/frontier_colonist_helmet
	max_integrity = 500
	limb_integrity = 500

// CIN larp armor

/obj/item/clothing/head/helmet/cin_surplus_helmet
	max_integrity = 200
	limb_integrity = 200

/obj/item/clothing/suit/armor/vest/cin_surplus_vest
	max_integrity = 200
	limb_integrity = 200
