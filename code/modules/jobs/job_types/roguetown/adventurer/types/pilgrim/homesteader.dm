/datum/advclass/homesteader
	name = "Peasant"
	tutorial = "Vale population's tendency to take up arms and become unwashed beastslayers had forced you to take up jobs, small and large of most professions.\n A jack of all trades, what will you be known as this week?"
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_ALL_KINDS
	outfit = /datum/outfit/job/roguetown/homesteader

	category_tags = list(CTAG_PILGRIM, CTAG_TOWNER)
	subclass_social_rank = SOCIAL_RANK_PEASANT
	subclass_stats = list(
		STATKEY_WIL = 1,
		STATKEY_STR = 1,
		STATKEY_CON = 1,
		STATKEY_INT = 2,
		STATKEY_PER = 1,
		STATKEY_SPD = 1,
		STATKEY_LCK = 1
	)

	traits_applied = list(

	)

//	adaptive_name = FALSE


	subclass_skills = list(
		/datum/skill/misc/climbing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/athletics = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/swimming = SKILL_LEVEL_JOURNEYMAN,

		/datum/skill/combat/axes = SKILL_LEVEL_NOVICE,
		/datum/skill/combat/unarmed = SKILL_LEVEL_NOVICE,
		/datum/skill/combat/knives = SKILL_LEVEL_NOVICE,
		/datum/skill/combat/wrestling = SKILL_LEVEL_NOVICE,,

		/datum/skill/misc/reading = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/medicine = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/sewing = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/tracking = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/sneaking = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/crafting = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/carpentry = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/masonry = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/engineering = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/traps = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/alchemy = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/tanning = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/cooking = SKILL_LEVEL_NOVICE,
		/datum/skill/labor/farming = SKILL_LEVEL_NOVICE,
		/datum/skill/labor/lumberjacking = SKILL_LEVEL_NOVICE,
		/datum/skill/labor/fishing = SKILL_LEVEL_NOVICE,
		/datum/skill/labor/butchering = SKILL_LEVEL_NOVICE
	)

/datum/outfit/job/roguetown/homesteader/pre_equip(mob/living/carbon/human/H)
	..()
	// Homesteader cosmetic title selection
	H.adjust_blindness(-3)
	var/cosmetic_titles = list(
	"Devotee", "Devotess", "Farmhand", "Farmwoman",
	"Fieldworker", "Fieldwoman", "Handiworker", "Handiwoman",
	"Hedgefolk", "Homebody", "Homesteader", "Homesteadress",
	"Householder", "Househusband", "Housewife",
	"Laborer", "Laboress",
	"Villager", "Villagewoman", "Woodcrafter", "Woodcraftess")
	var/cosmetic_choice = input(H, "Select your cosmetic title!", "Cosmetic Titles") as anything in cosmetic_titles

	switch(cosmetic_choice)
		if("Devotee")
			to_chat(H, span_notice("You are a Devotee, a pious peasant devoted to faith and community."))
			H.mind.cosmetic_class_title = "Devotee"
		if("Devotess")
			to_chat(H, span_notice("You are a Devotess, a pious peasant devoted to faith and community."))
			H.mind.cosmetic_class_title = "Devotess"
		if("Farmhand")
			to_chat(H, span_notice("You are a Farmhand, a worker of the fields and crops."))
			H.mind.cosmetic_class_title = "Farmhand"
		if("Farmwoman")
			to_chat(H, span_notice("You are a Farmwoman, a worker of the fields and crops."))
			H.mind.cosmetic_class_title = "Farmwoman"
		if("Fieldworker")
			to_chat(H, span_notice("You are a Fieldworker, a laborer of fields and land."))
			H.mind.cosmetic_class_title = "Fieldworker"
		if("Fieldwoman")
			to_chat(H, span_notice("You are a Fieldwoman, a laborer of fields and land."))
			H.mind.cosmetic_class_title = "Fieldwoman"
		if("Handiworker")
			to_chat(H, span_notice("You are a Handiworker, skilled in small crafts and repairs."))
			H.mind.cosmetic_class_title = "Handiworker"
		if("Handiwoman")
			to_chat(H, span_notice("You are a Handiwoman, skilled in small crafts and repairs."))
			H.mind.cosmetic_class_title = "Handiwoman"
		if("Hedgefolk")
			to_chat(H, span_notice("You are Hedgefolk, a rural dweller of modest means."))
			H.mind.cosmetic_class_title = "Hedgefolk"
		if("Homebody")
			to_chat(H, span_notice("You are a Homebody, content with hearth and home."))
			H.mind.cosmetic_class_title = "Homebody"
		if("Homesteader")
			to_chat(H, span_notice("You are a Homesteader, a settler and keeper of land."))
			H.mind.cosmetic_class_title = "Homesteader"
		if("Homesteadress")
			to_chat(H, span_notice("You are a Homesteadress, a settler and keeper of land."))
			H.mind.cosmetic_class_title = "Homesteadress"
		if("Householder")
			to_chat(H, span_notice("You are a Householder, a keeper of dwelling and family."))
			H.mind.cosmetic_class_title = "Householder"
		if("Househusband")
			to_chat(H, span_notice("You are a Househusband, a keeper of dwelling and family."))
			H.mind.cosmetic_class_title = "Househusband"
		if("Housewife")
			to_chat(H, span_notice("You are a Housewife, a keeper of dwelling and family."))
			H.mind.cosmetic_class_title = "Housewife"
		if("Laborer")
			to_chat(H, span_notice("You are a Laborer, a hard worker and commoner."))
			H.mind.cosmetic_class_title = "Laborer"
		if("Laboress")
			to_chat(H, span_notice("You are a Laboress, a hard worker and commoner."))
			H.mind.cosmetic_class_title = "Laboress"
		if("Villager")
			to_chat(H, span_notice("You are a Villager, common folk of the settlement."))
			H.mind.cosmetic_class_title = "Villager"
		if("Villagewoman")
			to_chat(H, span_notice("You are a Villagewoman, common folk of the settlement."))
			H.mind.cosmetic_class_title = "Villagewoman"
		if("Woodcrafter")
			to_chat(H, span_notice("You are a Woodcrafter, a skilled worker of wood."))
			H.mind.cosmetic_class_title = "Woodcrafter"
		if("Woodcraftess")
			to_chat(H, span_notice("You are a Woodcraftess, a skilled worker of wood."))
			H.mind.cosmetic_class_title = "Woodcraftess"

	// STAT PACK SELECTION
	var/stat_packs = list("Agile", "Bookworm", "Toned", "All-Rounded")
	var/stat_choice = input(H, "Select your stat focus.", "Stat Pack Selection") as anything in stat_packs

	switch(stat_choice)
		if("Agile")
			to_chat(H, span_notice("You are agile and nimble."))
			H.change_stat(STATKEY_SPD, 1)
			H.change_stat(STATKEY_WIL, -2)
			H.change_stat(STATKEY_STR, -2) 
			H.change_stat(STATKEY_CON, 1)
		if("Bookworm")
			to_chat(H, span_notice("You are learned and wise."))
			H.change_stat(STATKEY_INT, 2)
			H.change_stat(STATKEY_WIL, 1)
			H.change_stat(STATKEY_STR, -2)
			H.change_stat(STATKEY_CON, -2)
		if("Toned")
			to_chat(H, span_notice("You are strong and hardy."))
			H.change_stat(STATKEY_STR, 1)
			H.change_stat(STATKEY_CON, 1)
			H.change_stat(STATKEY_INT, -1)
			H.change_stat(STATKEY_SPD, -2)
		if("All-Rounded")
			to_chat(H, span_notice("You are balanced in all aspects."))
			// No stat changes for all-rounded

	// SPECIALTY SELECTION
	var/specialties = list("Homesteading", "Faithweaver", "Charlatan")
	var/specialty_choice = input(H, "Select your specialty.", "Specialty Selection") as anything in specialties

	switch(specialty_choice)
		if("Homesteading")
			to_chat(H, span_notice("You embrace the homesteading life."))

			if(H.mind)
				H.mind.special_items["Hammer"] = /obj/item/rogueweapon/hammer/steel
				H.mind.special_items["Sheathe"] = /obj/item/rogueweapon/scabbard/sheath
				H.mind.special_items["Hunting Knife"] = /obj/item/rogueweapon/huntingknife
				H.mind.special_items["Woodcutter's Axe"] = /obj/item/rogueweapon/stoneaxe/woodcut/steel/woodcutter
				H.mind.special_items["[pick("Good", "Bad", "Normal")] Day's Wine"] = /obj/item/reagent_containers/glass/bottle/rogue/wine
				H.mind.special_items["Barber's Innocuous Bag"] = /obj/item/storage/belt/rogue/surgery_bag/full
				H.mind.special_items["Trusty Pick"] = /obj/item/rogueweapon/pick
				H.mind.special_items["Hoe"] = /obj/item/rogueweapon/hoe
				H.mind.special_items["Tuneful Instrument"] = pick(subtypesof(/obj/item/rogue/instrument))
				H.mind.special_items["Fishing Rod"] = /obj/item/fishingrod/crafted
				H.mind.special_items["Pan for Frying"] = /obj/item/cooking/pan
				H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/diagnose/secular)

			// Thematic traits for Homesteading
			ADD_TRAIT(H, TRAIT_HOMESTEAD_EXPERT, TRAIT_GENERIC)
			ADD_TRAIT(H, TRAIT_SURVIVAL_EXPERT, TRAIT_GENERIC)
			ADD_TRAIT(H, TRAIT_OUTDOORSMAN, TRAIT_GENERIC)


		if("Faithweaver")
			to_chat(H, span_notice("You dabble in the mystical arts of magic, faith and bardic performance.")) // Mix of bard / magic and faith. Very bad at all of it. More like a fluff.

			var/datum/inspiration/I = new /datum/inspiration(H)
			I.grant_inspiration(H, bard_tier = BARD_T1)
			if(H.mind)
				var/weapons = list("Harp","Lute","Accordion","Guitar","Hurdy-Gurdy","Viola","Vocal Talisman", "Psyaltery", "Flute")
				var/weapon_choice = tgui_input_list(H, "Choose your instrument.", "TAKE UP ARMS", weapons)
				H.set_blindness(0)
				switch(weapon_choice)
					if("Harp")
						backr = /obj/item/rogue/instrument/harp
					if("Lute")
						backr = /obj/item/rogue/instrument/lute
					if("Accordion")
						backr = /obj/item/rogue/instrument/accord
					if("Guitar")
						backr = /obj/item/rogue/instrument/guitar
					if("Hurdy-Gurdy")
						backr = /obj/item/rogue/instrument/hurdygurdy
					if("Viola")
						backr = /obj/item/rogue/instrument/viola
					if("Vocal Talisman")
						backr = /obj/item/rogue/instrument/vocals
					if("Psyaltery")
						backr = /obj/item/rogue/instrument/psyaltery
					if("Flute")
						backr = /obj/item/rogue/instrument/flute


//No mage armour.
			ADD_TRAIT(H, TRAIT_DEATHSIGHT, TRAIT_GENERIC)
			ADD_TRAIT(H, TRAIT_SURVIVAL_EXPERT, TRAIT_GENERIC)
			ADD_TRAIT(H, TRAIT_ALCHEMY_EXPERT, TRAIT_GENERIC)
			ADD_TRAIT(H, TRAIT_SENTINELOFWITS, TRAIT_GENERIC)
			H.adjust_skillrank_up_to(/datum/skill/magic/arcane, SKILL_LEVEL_NOVICE, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/magic/holy, SKILL_LEVEL_NOVICE, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/magic/druidic, SKILL_LEVEL_NOVICE, TRUE) //Just flavour
			H.mind?.adjust_spellpoints(4) // Worse than the witch by two points.


			var/datum/devotion/C = new /datum/devotion(H, H.patron)
			C.grant_miracles(H, cleric_tier = CLERIC_T0, passive_gain = CLERIC_REGEN_MAJOR, devotion_limit = CLERIC_REQ_0)

			if(H.mind)
				H.mind.special_items["Sheathe"] = /obj/item/rogueweapon/scabbard/sheath
				H.mind.special_items["Hunting Knife"] = /obj/item/rogueweapon/huntingknife
				H.mind.special_items["[pick("Good", "Bad", "Normal")] Day's Wine"] = /obj/item/reagent_containers/glass/bottle/rogue/wine
				H.mind.special_items["Barber's Innocuous Bag"] = /obj/item/storage/belt/rogue/surgery_bag/full
				H.mind.special_items["Fishing Rod"] = /obj/item/fishingrod/crafted
				H.mind.special_items["Pan for Frying"] = /obj/item/cooking/pan
				H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/diagnose/secular)



		if("Charlatan")
			to_chat(H, span_notice("You are a smooth-talking charlatan, versed in deception and clever words."))

			if(H.mind)
				H.mind.special_items["Sheathe"] = /obj/item/rogueweapon/scabbard/sheath
				H.mind.special_items["Dagger"] = /obj/item/rogueweapon/huntingknife
				H.mind.special_items["Lockpick Ring"] = /obj/item/lockpickring/mundane
				H.mind.special_items["[pick("Good", "Bad", "Normal")] Day's Wine"] = /obj/item/reagent_containers/glass/bottle/rogue/wine
				H.mind.special_items["Coin Purse"] = /obj/item/storage/belt/rogue/pouch/coins

			
			// Boost sneaking, stealing, and lockpicking
			H.adjust_skillrank_up_to(/datum/skill/misc/sneaking, SKILL_LEVEL_JOURNEYMAN, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/misc/stealing, SKILL_LEVEL_JOURNEYMAN, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/misc/lockpicking, SKILL_LEVEL_JOURNEYMAN, TRUE)
			// Thematic traits for Charlatan
			ADD_TRAIT(H, TRAIT_SEEPRICES_SHITTY, TRAIT_GENERIC)
			ADD_TRAIT(H, TRAIT_BEAUTIFUL, TRAIT_GENERIC)
			ADD_TRAIT(H, TRAIT_CICERONE, TRAIT_GENERIC)
			ADD_TRAIT(H, TRAIT_KEENEARS, TRAIT_GENERIC)
			ADD_TRAIT(H, TRAIT_SURVIVAL_EXPERT, TRAIT_GENERIC)

// Still random clothing... meh. Get your loadout ones.
	head = pick(/obj/item/clothing/head/roguetown/hatfur,
	/obj/item/clothing/head/roguetown/hatblu,
	/obj/item/clothing/head/roguetown/nightman,
	/obj/item/clothing/head/roguetown/roguehood,
	/obj/item/clothing/head/roguetown/roguehood/random,
	/obj/item/clothing/head/roguetown/roguehood/shalal/heavyhood,
	/obj/item/clothing/head/roguetown/fancyhat)

	if(prob(50))
		mask = /obj/item/clothing/mask/rogue/spectacles

	cloak = pick(/obj/item/clothing/cloak/raincloak/furcloak,
	/obj/item/clothing/cloak/half)

	armor = pick(/obj/item/clothing/suit/roguetown/armor/workervest,
	/obj/item/clothing/suit/roguetown/armor/leather/vest)

	pants = pick(/obj/item/clothing/under/roguetown/trou,
	/obj/item/clothing/under/roguetown/tights/random)

	shirt = pick(/obj/item/clothing/suit/roguetown/shirt/undershirt/random,
	/obj/item/clothing/suit/roguetown/shirt/undershirt/puritan,
	/obj/item/clothing/suit/roguetown/armor/gambeson/light)

	shoes = pick(/obj/item/clothing/shoes/roguetown/boots/leather,
	/obj/item/clothing/shoes/roguetown/shortboots)

	belt = /obj/item/storage/belt/rogue/leather
	beltr = /obj/item/storage/belt/rogue/pouch/coins/mid
	beltl = /obj/item/flashlight/flare/torch/lantern
	backl = /obj/item/storage/backpack/rogue/backpack

//Debloats their contents
	backpack_contents = list(
						/obj/item/flint = 1,
						/obj/item/flashlight/flare/torch = 1,
						/obj/item/rogueweapon/handsaw = 1,
						/obj/item/dye_brush = 1,
						/obj/item/recipe_book/builder = 1,
						/obj/item/recipe_book/survival = 1,
						/obj/item/reagent_containers/powder/salt = 1,
						/obj/item/reagent_containers/food/snacks/rogue/cheddar = 2,
						/obj/item/natural/cloth = 2,
//						/obj/item/book/rogue/yeoldecookingmanual = 1,
//						/obj/item/natural/worms = 2,
						/obj/item/rogueweapon/shovel/small = 1,
						/obj/item/hair_dye_cream = 1,
						/obj/item/rogueweapon/chisel = 1,
						/obj/item/natural/clay = 1,
						/obj/item/natural/clay/glassbatch = 1,
						/obj/item/rogueore/coal = 1,
						/obj/item/roguegear = 1,
	)

	if(H.mind)
		// Skill selection with readable names
		var/misc_skills = list(
			"Stealing" = /datum/skill/misc/stealing,
			"Music" = /datum/skill/misc/music,
			"Reading" = /datum/skill/misc/reading,
			"Medicine" = /datum/skill/misc/medicine,
			"Tracking" = /datum/skill/misc/tracking,
			"Lockpicking" = /datum/skill/misc/lockpicking,
			"Sneaking" = /datum/skill/misc/sneaking,
			"Riding" = /datum/skill/misc/riding
		)
		var/labor_skills = list(
			"Farming" = /datum/skill/labor/farming,
			"Lumberjacking" = /datum/skill/labor/lumberjacking,
			"Fishing" = /datum/skill/labor/fishing,
			"Butchering" = /datum/skill/labor/butchering
		)
		var/craft_skills = list(
			"Sewing" = /datum/skill/craft/sewing,
			"Ceramics" = /datum/skill/craft/ceramics,
			"Crafting" = /datum/skill/craft/crafting,
			"Carpentry" = /datum/skill/craft/carpentry,
			"Masonry" = /datum/skill/craft/masonry,
			"Engineering" = /datum/skill/craft/engineering,
			"Traps" = /datum/skill/craft/traps,
			"Alchemy" = /datum/skill/craft/alchemy,
			"Tanning" = /datum/skill/craft/tanning,
			"Cooking" = /datum/skill/craft/cooking,
			"Weaponsmithing" = /datum/skill/craft/weaponsmithing,
			"Armorsmithing" = /datum/skill/craft/armorsmithing,
			"Blacksmithing" = /datum/skill/craft/blacksmithing
		)
		var/combat_skills = list(
			"Axes" = /datum/skill/combat/axes,
			"Unarmed" = /datum/skill/combat/unarmed,
			"Knives" = /datum/skill/combat/knives,
			"Wrestling" = /datum/skill/combat/wrestling,
			"Staves" = /datum/skill/combat/staves,
			"Whips & Flails" = /datum/skill/combat/whipsflails,
			"Bows" = /datum/skill/combat/bows,
			"Crossbows" = /datum/skill/combat/crossbows,
			"Polearms" = /datum/skill/combat/polearms,
			"Shields" = /datum/skill/combat/shields,
			"Slings" = /datum/skill/combat/slings,
			"Swords" = /datum/skill/combat/swords
		)

		// Select one skill to EXPERT
		var/expert_skill_name = input(H, "Choose one skill to EXPERT.", "Skill Selection") as anything in misc_skills + labor_skills + craft_skills
		H.adjust_skillrank_up_to(misc_skills[expert_skill_name] || labor_skills[expert_skill_name] || craft_skills[expert_skill_name], SKILL_LEVEL_EXPERT, TRUE)

		// Select two COMBAT skills to JOURNEYMAN
		for(var/i in 1 to 2)
			var/journeyman_combat_name = input(H, "Choose a COMBAT skill to JOURNEYMAN.", "Skill Selection") as anything in combat_skills
			H.adjust_skillrank_up_to(combat_skills[journeyman_combat_name], SKILL_LEVEL_JOURNEYMAN, TRUE)

		// Select two MISC/LABOR/CRAFT skills to JOURNEYMAN
		for(var/i in 1 to 2)
			var/journeyman_name = input(H, "Choose a MISC/LABOR/CRAFT skill to JOURNEYMAN.", "Skill Selection") as anything in misc_skills + labor_skills + craft_skills
			H.adjust_skillrank_up_to(misc_skills[journeyman_name] || labor_skills[journeyman_name] || craft_skills[journeyman_name], SKILL_LEVEL_JOURNEYMAN, TRUE)

		// Select three skills to APPRENTICE
		for(var/i in 1 to 3)
			var/apprentice_name = input(H, "Choose a skill to APPRENTICE.", "Skill Selection") as anything in misc_skills + labor_skills + craft_skills + combat_skills
			H.adjust_skillrank_up_to(misc_skills[apprentice_name] || labor_skills[apprentice_name] || craft_skills[apprentice_name] || combat_skills[apprentice_name], SKILL_LEVEL_APPRENTICE, TRUE)
