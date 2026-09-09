local L = AceLibrary( "AceLocale-2.2" ):new( "ArkInventory" )

-- post updated translations at http://groups.google.com/group/wow-arkinventory (modify this file and include as an attachment)

-- Translated by: 






L:RegisterTranslations( "frFR", function() return {

	-- wow skill headers
	["WOW_SKILL_HEADER_PRIMARY"] = "Professions",
	["WOW_SKILL_HEADER_SECONDARY"] = "Professions secondaires",


	-- wow skill names
	["WOW_SKILL_ALCHEMY"] = "Alchimie",
	["WOW_SKILL_BLACKSMITHING"] = "Forge",
	["WOW_SKILL_COOKING"] = "Cuisine",
	["WOW_SKILL_ENCHANTING"] = "Enchantement",
	["WOW_SKILL_ENGINEERING"] = "Ingénierie",
	["WOW_SKILL_FIRST_AID"] = "Secourisme",
	["WOW_SKILL_FISHING"] = "Pêche",
	["WOW_SKILL_HERBALISM"] = "Herboristerie",
	["WOW_SKILL_JEWELCRAFTING"] = "Joaillerie",
	["WOW_SKILL_LEATHERWORKING"] = "Travail du cuir",
	["WOW_SKILL_MINING"] = "Minage",
	["WOW_SKILL_SKINNING"] = "Dépeçage",
	["WOW_SKILL_TAILORING"] = "Couture",
	["WOW_SKILL_RIDING"] = "Monte",


	-- wow class names
	["WOW_CLASS_DRUID"] = "Druide",
	["WOW_CLASS_HUNTER"] = "Chasseur",
	["WOW_CLASS_MAGE"] = "Mage",
	["WOW_CLASS_PALADIN"] = "Paladin",
	["WOW_CLASS_PRIEST"] = "Prêtre",
	["WOW_CLASS_ROGUE"] = "Voleur",
	["WOW_CLASS_SHAMAN"] = "Chaman",
	["WOW_CLASS_WARLOCK"] = "Démoniste",
	["WOW_CLASS_WARRIOR"] = "Guerrier",
	

	-- wow item types
	["WOW_ITEM_TYPE_ARMOR"] = "Armure",
	["WOW_ITEM_TYPE_CONSUMABLE"] = "Consommable",
	["WOW_ITEM_TYPE_CONTAINER"] = "Conteneur",
	["WOW_ITEM_TYPE_GEM"] = "Gemmes",
	["WOW_ITEM_TYPE_KEY"] = "Clé",
	["WOW_ITEM_TYPE_MISCELLANEOUS"] = "Divers", 
	["WOW_ITEM_TYPE_REAGENT"] = "Composant",
	["WOW_ITEM_TYPE_RECIPE"] = "Recette",
	["WOW_ITEM_TYPE_PROJECTILE"] = "Projectile",
	["WOW_ITEM_TYPE_QUEST"] = "Quête",
	["WOW_ITEM_TYPE_QUIVER"] = "Carquois",
	["WOW_ITEM_TYPE_TRADE_GOODS"] = "Artisanat",
	["WOW_ITEM_TYPE_WEAPON"] = "Arme",
	
	["WOW_ITEM_TYPE_CONTAINER_BAG"] = "Conteneur",
	["WOW_ITEM_TYPE_CONTAINER_SOULSHARD"] = "Sac d'âme",
	["WOW_ITEM_TYPE_CONTAINER_HERB"] = "Sac d'herbes",
	["WOW_ITEM_TYPE_CONTAINER_ENCHANTING"] = "Sac d'enchanteur",
	["WOW_ITEM_TYPE_CONTAINER_ENGINEERING"] = "Sac d'ingénieur",
	["WOW_ITEM_TYPE_CONTAINER_GEM"] = "Sac de gemmes",
	["WOW_ITEM_TYPE_CONTAINER_MINING"] = "Sac de mineur",

	["WOW_ITEM_TYPE_PROJECTILE_BULLET"] = "Balle",
	["WOW_ITEM_TYPE_PROJECTILE_ARROW"] = "Flèche",
	["WOW_ITEM_TYPE_QUIVER_BULLET"] = "Giberne",
	["WOW_ITEM_TYPE_QUIVER_ARROW"] = "Carquois",
	["WOW_ITEM_TYPE_TRADE_GOODS_DEVICES"] = "Appareils",
	["WOW_ITEM_TYPE_TRADE_GOODS_EXPLOSIVES"] = "Explosifs",
	["WOW_ITEM_TYPE_TRADE_GOODS_PARTS"] = "Eléments",


	-- wow tooltip text
	["WOW_TOOLTIP_POTION"] = "Potion",
	["WOW_TOOLTIP_ELIXIR"] = "Elixir",

	["WOW_TOOLTIP_FOOD"] = "Vous devez rester assis pendant que vous mangez",
	["WOW_TOOLTIP_DRINK"] = "Vous devez rester assis pendant que vous buvez",
	["WOW_TOOLTIP_PET"] = "Clic droit pour invoquer et renvoyer",
	["WOW_TOOLTIP_POTION_HEAL"] = "Rend %d+ point de vie en %d+ sec",
	["WOW_TOOLTIP_POTION_MANA"] = "Rend %d+ point de mana en %d+ sec",


	-- category names
	["CATEGORY_SYSTEM"] = "SYSTÈME",
	["CATEGORY_SKILL"] = "PROFESSION",
	["CATEGORY_CLASS"] = "CLASSE",


	
	
	-- basic (system) categories
	["CATEGORY_CONSUMABLE"] = "CONSOMMABLE",
	["CATEGORY_CONTAINER"] = "CONTENEUR",
	["CATEGORY_KEY"] = "CLÉ",
	["CATEGORY_MISCELLANEOUS"] = "DIVERS",
	["CATEGORY_QUEST"] = "QUÊTE",
	["CATEGORY_REAGENT"] = "COMPOSANT",
	["CATEGORY_RECIPE"] = "RECETTE",
	["CATEGORY_PROJECTILE"] = "PROJECTILE",
	["CATEGORY_PROJECTILE_BULLET"] = "PROJECTILE (BALLE)",
	["CATEGORY_PROJECTILE_ARROW"] = "PROJECTILE (FLÈCHE)",
	["CATEGORY_TRADE_GOODS"] = "ARTISANAT",
	["CATEGORY_TRADE_GOODS_DEVICES"] = "APPAREILS",
	["CATEGORY_TRADE_GOODS_EXPLOSIVES"] = "EXPLOSIFS",
	["CATEGORY_TRADE_GOODS_PARTS"] = "ELÉMENTS",
	["CATEGORY_REPUTATION"] = "REPUTATION",
	
	["CATEGORY_DEFAULT"] = "DÉFAUT",
	["CATEGORY_TRASH"] = "CAMELOTE",
	["CATEGORY_SOULSHARD"] = "FRAGMENT D'ÂME",
	["CATEGORY_SOULBOUND"] = "LIÉ",
	["CATEGORY_EQUIPMENT_SOULBOUND"] = "EQUIPEMENT LIÉ",
	["CATEGORY_EQUIPMENT"] = "EQUIPEMENT NON LIÉ",
	["CATEGORY_MOUNT"] = "MONTURE",
	["CATEGORY_PET_NONCOMBAT"] = "FAMILIER (PAS DE COMBAT)",

	["CATEGORY_FOOD"] = "NOURRITURE",
	["CATEGORY_FOOD_PET"] = "NOURRITURE POUR FAMILIER",
	["CATEGORY_DRINK"] = "BOISSON",
	["CATEGORY_POTION_MANA"] = "MANA (POTION/GEMME)",
	["CATEGORY_POTION_HEAL"] = "SOIN (POTION/PIERRE DE SOINS)",
	["CATEGORY_CORE_MATS"] = "MATIÈRE PREMIÈRE",
	["CATEGORY_POTION"] = "POTION",
	
	


	-- empty categories
	["CATEGORY_EMPTY"] = "VIDE", -- generic empty, also used for category menu 
	["CATEGORY_EMPTY_KEY"] = "VIDE (CLÉ)",
	["CATEGORY_EMPTY_PROJECTILE"] = "VIDE (PROJECTILE)",
	["CATEGORY_EMPTY_PROJECTILE_BULLET"] = "VIDE (PROJECTILE - BALLE)",
	["CATEGORY_EMPTY_PROJECTILE_ARROW"] = "VIDE (PROJECTILE - FLÈCHE)",
	["CATEGORY_EMPTY_SOULSHARD"] = "VIDE (FRAGMENT D'ÂME)",
	["CATEGORY_EMPTY_HERB"] = "VIDE (HERBE)",
	["CATEGORY_EMPTY_ENCHANTING"] = "VIDE (ENCHANTEMENT)",
	["CATEGORY_EMPTY_ENGINEERING"] = "VIDE (INGÉNIEUR)",
	["CATEGORY_EMPTY_GEM"] = "VIDE (GEMME)",
	["CATEGORY_EMPTY_MINING"] = "VIDE (MINERAI)",

	["CATEGORY_EMPTY_BAG"] = "VIDE (SAC)",
	["CATEGORY_EMPTY_UNKNOWN"] = "VIDE (INCONNU)",

	
	-- skill categories
	["CATEGORY_SKILL_ALCHEMY"] = "ALCHIMIE",
	["CATEGORY_SKILL_BLACKSMITHING"] = "FORGE",
	["CATEGORY_SKILL_COOKING"] = "CUISINE",
	["CATEGORY_SKILL_ENCHANTING"] = "ENCHANTEMENT",
	["CATEGORY_SKILL_ENGINEERING"] = "INGÉNIERIE",
	["CATEGORY_SKILL_FIRST_AID"] = "SECOURISME",
	["CATEGORY_SKILL_FISHING"] = "PÊCHE",
	["CATEGORY_SKILL_HERBALISM"] = "HERBORISTERIE",
	["CATEGORY_SKILL_JEWELCRAFTING"] = "JOAILLERIE",
	["CATEGORY_SKILL_LEATHERWORKING"] = "TRAVAIL DU CUIR",
	["CATEGORY_SKILL_MINING"] = "MINAGE",
	["CATEGORY_SKILL_SKINNING"] = "DÉPECAGE",
	["CATEGORY_SKILL_TAILORING"] = "COUTURE",

	
	-- class categories
	["CATEGORY_CLASS_DRUID"] = "DRUIDE",
	["CATEGORY_CLASS_HUNTER"] = "CHASSEUR",
	["CATEGORY_CLASS_MAGE"] = "MAGE",
	["CATEGORY_CLASS_PALADIN"] = "PALADIN",
	["CATEGORY_CLASS_PRIEST"] = "PRÊTRE",
	["CATEGORY_CLASS_ROGUE"] = "VOLEUR",
	["CATEGORY_CLASS_SHAMAN"] = "CHAMAN",
	["CATEGORY_CLASS_WARLOCK"] = "DÉMONISTE",
	["CATEGORY_CLASS_WARRIOR"] = "GUERRIER",


	-- bag names - used to name the empty slots in the status frame
	["STATUS_NAME_SOULSHARD"] = "Frag",
	["STATUS_NAME_HERB"] = "Herbe",
	["STATUS_NAME_ENCHANTING"] = "Ench",
	["STATUS_NAME_ENGINEERING"] = "Ing",
	["STATUS_NAME_GEM"] = "Gemme",
	["STATUS_NAME_MINING"] = "Minerai",

	["STATUS_NAME_PROJECTILE"] = "Projectile",
	["STATUS_NAME_PROJECTILE_BULLET"] = "Balle",
	["STATUS_NAME_PROJECTILE_ARROW"] = "Flèche",
	["STATUS_NAME_KEY"] = "Clé",
	["STATUS_NAME_UNKNOWN"] = "Inconnu",
	["STATUS_NAME_BAG"] = "Sac",
	

	-- location names
	
	["LOCATION_BAG"] = "Sacs",
	["LOCATION_BANK"] = "Banque",
	--["LOCATION_KEY"] = "Clés",
	
	
	
	
	
	["STATUS_OFFLINE"] = "Hors ligne",
	["STATUS_NO_DATA"] = "Aucune information",
	["STATUS_FULL"] = "Plein",


	
	

	-- vault tooltip text
	
	
	
	
	
	
	-- main menu
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	








	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


	
	
	
	
	
	
	
	
	
	
	


	
	
	
	
	
	
	
	
	
	
	
	
	



	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	







	
	
	
	
	
	
	
	
	
	["MOD_MENU_MAIN_EDITMODE"] = "Basculer en mode édition",
	
	
	
	
	
	
	

	

	
	

	
	


	
	-- item menu
	["MOD_MENU_ITEM_INFORMATION_TITLE"] = "OPTIONS DES ITEMS",
	
	
	
	
	
	
	
	

	
	
	
	














	

	-- bar menu
	


	
	
	
	



	
	
	
	

	
	
	
	
	
	
	-- bag menu
	
	
	
	
	
	
	
	
	
	-- generic menu text
	
	
	
	
	
	
	


	
	
	










	
	
	-- rules frame

	




	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	





	-- new item indicators





	-- debug




	-- slash commands















	
	
	
	
	
	
	
	
	







	-- misc chat stuff


	



	
	
	
	
	
	-- item count tooltip


	
} end )
