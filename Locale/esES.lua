local L = AceLibrary( "AceLocale-2.2" ):new( "ArkInventory" )

-- post updated translations at http://groups.google.com/group/wow-arkinventory (modify this file and include as an attachment)

-- Translated by: 






L:RegisterTranslations( "esES", function() return {

	-- wow skill headers
	["WOW_SKILL_HEADER_PRIMARY"] = "Profesiones",
	["WOW_SKILL_HEADER_SECONDARY"] = "Habilidades secundarias",


	-- wow skill names
	["WOW_SKILL_ALCHEMY"] = "Alquimia",
	["WOW_SKILL_BLACKSMITHING"] = "Herrer\195\173a",
	["WOW_SKILL_COOKING"] = "Cocina",
	["WOW_SKILL_ENCHANTING"] = "Encantamiento",
	["WOW_SKILL_ENGINEERING"] = "Ingenier\195\173a",
	["WOW_SKILL_FIRST_AID"] = "Primeros auxilios",
	["WOW_SKILL_FISHING"] = "Pesca",
	["WOW_SKILL_HERBALISM"] = "Bot\195\161nica",
	["WOW_SKILL_JEWELCRAFTING"] = "Joyer\195\173a",
	["WOW_SKILL_LEATHERWORKING"] = "Peletería",
	["WOW_SKILL_MINING"] = "Miner\195\173a",
	["WOW_SKILL_SKINNING"] = "Desollar", -- was Desuello
	["WOW_SKILL_TAILORING"] = "Sastrer\195\173a",
	["WOW_SKILL_RIDING"] = "Equitaci\195\179n",

	
	-- wow class names
	["WOW_CLASS_DRUID"] = "Druida",
	["WOW_CLASS_HUNTER"] = "Cazador",
	["WOW_CLASS_MAGE"] = "Mago",
	["WOW_CLASS_PALADIN"] = "Palad\195\173n",
	["WOW_CLASS_PRIEST"] = "Sacerdote",
	["WOW_CLASS_ROGUE"] = "P\195\173caro",
	["WOW_CLASS_SHAMAN"] = "Cham\195\161n",
	["WOW_CLASS_WARLOCK"] = "Brujo",
	["WOW_CLASS_WARRIOR"] = "Guerrero",

	
	-- wow item types
	["WOW_ITEM_TYPE_ARMOR"] = "Armadura",
	["WOW_ITEM_TYPE_CONSUMABLE"] = "Consumible",
	["WOW_ITEM_TYPE_CONTAINER"] = "Contenedor",
	["WOW_ITEM_TYPE_GEM"] = "Gems",
	["WOW_ITEM_TYPE_KEY"] = "Llave",
	["WOW_ITEM_TYPE_MISCELLANEOUS"] = "Miscel\195\161neas",
	["WOW_ITEM_TYPE_REAGENT"] = "Componente",
	["WOW_ITEM_TYPE_RECIPE"] = "Receta",
	["WOW_ITEM_TYPE_PROJECTILE"] = "Proyectil",
	["WOW_ITEM_TYPE_QUEST"] = "Misi\195\179n",
	["WOW_ITEM_TYPE_QUIVER"] = "Carcaj",
	["WOW_ITEM_TYPE_TRADE_GOODS"] = "Objeto comerciable",   -- ambiguous official translation
	["WOW_ITEM_TYPE_WEAPON"] = "Arma",
	
	["WOW_ITEM_TYPE_CONTAINER_BAG"] = "Bolsa",
	["WOW_ITEM_TYPE_CONTAINER_SOULSHARD"] = "Bolsa de almas",
	["WOW_ITEM_TYPE_CONTAINER_HERB"] = "Bolsa de hierbas",
	["WOW_ITEM_TYPE_CONTAINER_ENCHANTING"] = "Bolsa de encantamientos",
	["WOW_ITEM_TYPE_CONTAINER_ENGINEERING"] = "Bolsa de ingenier\195\173a",
	["WOW_ITEM_TYPE_CONTAINER_GEM"] = "Bolsa de gemas",
	["WOW_ITEM_TYPE_CONTAINER_MINING"] = "Bolsa de miner\195\173a",

	["WOW_ITEM_TYPE_PROJECTILE_BULLET"] = "Bala",
	["WOW_ITEM_TYPE_PROJECTILE_ARROW"] = "Flecha",
	["WOW_ITEM_TYPE_QUIVER_BULLET"] = "Bolsa de munici\195\179n",
	["WOW_ITEM_TYPE_QUIVER_ARROW"] = "Carcaj",
	["WOW_ITEM_TYPE_TRADE_GOODS_DEVICES"] = "Devices",     -- waiting for official translation
	["WOW_ITEM_TYPE_TRADE_GOODS_EXPLOSIVES"] = "Explosives",  -- waiting for official translation
	["WOW_ITEM_TYPE_TRADE_GOODS_PARTS"] = "Parts",        -- waiting for official translation

	
	-- wow tooltip text
	["WOW_TOOLTIP_POTION"] = "Poci\195\179n",
	["WOW_TOOLTIP_ELIXIR"] = "Elixir",
	
	["WOW_TOOLTIP_FOOD"] = "Debes permanecer sentado mientras comes",     -- check
	["WOW_TOOLTIP_DRINK"] = "Debes permanecer sentado mientras bebes",     -- check
	["WOW_TOOLTIP_PET"] = "Haz clic con el bot\195\179n derecho del rat\195\179n para invocar y retirar a tu",    -- check
	["WOW_TOOLTIP_POTION_HEAL"] = "Restaura %d+ a %d+ p. de salud",
	["WOW_TOOLTIP_POTION_MANA"] = "Restaura %d+ a %d+ p. de man\195\161",

	
	-- category names
	["CATEGORY_SYSTEM"] = "SISTEMA",
	["CATEGORY_SKILL"] = "PROFESI\195\147N",
	["CATEGORY_CLASS"] = "CLASE",
	
	
	
	
	-- basic (system) categories
	["CATEGORY_CONSUMABLE"] = "CONSUMIBLE",
	["CATEGORY_CONTAINER"] = "CONTENEDOR",
	["CATEGORY_KEY"] = "LLAVE",
	["CATEGORY_MISCELLANEOUS"] = "MISC",
	["CATEGORY_QUEST"] = "MISI\195\147N",
	["CATEGORY_REAGENT"] = "COMPONENTE",
	["CATEGORY_RECIPE"] = "RECETA",
	["CATEGORY_PROJECTILE"] = "PROYECTIL",
	["CATEGORY_PROJECTILE_BULLET"] = "PROYECTIL (BALA)",
	["CATEGORY_PROJECTILE_ARROW"] = "PROYECTIL (FLECHA)",
	["CATEGORY_TRADE_GOODS"] = "OBJETOS COMERCIABLES",
	["CATEGORY_TRADE_GOODS_DEVICES"] = "DEVICES",
	["CATEGORY_TRADE_GOODS_EXPLOSIVES"] = "EXPLOSIVES",
	["CATEGORY_TRADE_GOODS_PARTS"] = "PARTS",
	["CATEGORY_REPUTATION"] = "REPUTATION",

	["CATEGORY_DEFAULT"] = "POR DEFECTO",
	["CATEGORY_TRASH"] = "BASURA",
	["CATEGORY_SOULSHARD"] = "FRAGMENTO DE ALMA",
	["CATEGORY_SOULBOUND"] = "LIGADO",
	["CATEGORY_EQUIPMENT_SOULBOUND"] = "EQUIPO",
	["CATEGORY_EQUIPMENT"] = "EQUIPO (NO LIGADO)",
	["CATEGORY_MOUNT"] = "MONTURA",
	["CATEGORY_PET_NONCOMBAT"] = "MASCOTA (NO COMBATE)",

	["CATEGORY_FOOD"] = "COMIDA",
	["CATEGORY_FOOD_PET"] = "COMIDA (SOLO MASCOTA)",
	["CATEGORY_DRINK"] = "BEBIDA",
	["CATEGORY_POTION_MANA"] = "MAN\195\129 (POCI\195\147N/GEMA)",
	["CATEGORY_POTION_HEAL"] = "SALUD (POCI\195\147N/PIEDRA)",
	["CATEGORY_CORE_MATS"] = "MATERIAS PRIMAS",
	["CATEGORY_POTION"] = "POCI\195\147N",
	
	


	-- empty categories
	["CATEGORY_EMPTY"] = "VAC\195\141O", -- generic empty, also used for category menu
	["CATEGORY_EMPTY_KEY"] = "VAC\195\141O (LLAVERO)",
	["CATEGORY_EMPTY_PROJECTILE"] = "VAC\195\141O (PROYECTIL)",
	["CATEGORY_EMPTY_PROJECTILE_BULLET"] = "VAC\195\141O (PROYECTIL - BALA)",
	["CATEGORY_EMPTY_PROJECTILE_ARROW"] = "VAC\195\141O (PROYECTIL - FLECHA)",
	["CATEGORY_EMPTY_SOULSHARD"] = "VAC\195\141O (FRAGMENTO DE ALMA)",
	["CATEGORY_EMPTY_HERB"] = "VAC\195\141O (HIERBA)",
	["CATEGORY_EMPTY_ENCHANTING"] = "VAC\195\141O (ENCANTAMIENTO)",
	["CATEGORY_EMPTY_ENGINEERING"] = "VAC\195\141O (INGENIER\195\141A)",
	["CATEGORY_EMPTY_GEM"] = "VAC\195\141O (GEMA)",
	["CATEGORY_EMPTY_MINING"] = "VAC\195\141O (MINER\195\141A)",

	["CATEGORY_EMPTY_BAG"] = "VAC\195\141O (BOLSA)",
	["CATEGORY_EMPTY_UNKNOWN"] = "VAC\195\141O (DESCONOCIDO)",

	
	-- skill categories
	["CATEGORY_SKILL_ALCHEMY"] = "ALQUIMIA",
	["CATEGORY_SKILL_BLACKSMITHING"] = "HERRER\195\141A",
	["CATEGORY_SKILL_COOKING"] = "COCINA",
	["CATEGORY_SKILL_ENCHANTING"] = "ENCANTAMIENTO",
	["CATEGORY_SKILL_ENGINEERING"] = "INGENIER\195\141A",
	["CATEGORY_SKILL_FIRST_AID"] = "PRIMEROS AUXILIOS",
	["CATEGORY_SKILL_FISHING"] = "PESCA",
	["CATEGORY_SKILL_HERBALISM"] = "HERBORISTER\195\141A",
	["CATEGORY_SKILL_JEWELCRAFTING"] = "JOYER\195\141A",
	["CATEGORY_SKILL_LEATHERWORKING"] = "PELETER\195\141A",
	["CATEGORY_SKILL_MINING"] = "MINER\195\141A",
	["CATEGORY_SKILL_SKINNING"] = "DESOLLAR",
	["CATEGORY_SKILL_TAILORING"] = "SASTRER\195\141A",
	

	-- class categories
	["CATEGORY_CLASS_DRUID"] = "DRUIDA",
	["CATEGORY_CLASS_HUNTER"] = "CAZADOR",
	["CATEGORY_CLASS_MAGE"] = "MAGO",
	["CATEGORY_CLASS_PALADIN"] = "PALAD\195\141N",
	["CATEGORY_CLASS_PRIEST"] = "SACERDOTE",
	["CATEGORY_CLASS_ROGUE"] = "P\195\141CARO",
	["CATEGORY_CLASS_SHAMAN"] = "CHAM\195\129N",
	["CATEGORY_CLASS_WARLOCK"] = "BRUJO",
	["CATEGORY_CLASS_WARRIOR"] = "GUERRERO",


	-- bag names - used to name the empty slots in the status frame
	["STATUS_NAME_SOULSHARD"] = "Alma",
	["STATUS_NAME_HERB"] = "Hierba",
	["STATUS_NAME_ENCHANTING"] = "Encant",
	["STATUS_NAME_ENGINEERING"] = "Ing",
	["STATUS_NAME_GEM"] = "Gem",
	["STATUS_NAME_MINING"] = "Mine",

	["STATUS_NAME_PROJECTILE"] = "Munic",
	["STATUS_NAME_PROJECTILE_BULLET"] = "Bala",
	["STATUS_NAME_PROJECTILE_ARROW"] = "Flecha",
	["STATUS_NAME_KEY"] = "Llave",
	["STATUS_NAME_UNKNOWN"] = "Desconocido",
	["STATUS_NAME_BAG"] = "Bolsa",
	
	
	-- location names
	
	["LOCATION_BAG"] = "Bolsas",
	["LOCATION_BANK"] = "Banco",
	--["LOCATION_KEY"] = "Llavero",

	
	
	

	["STATUS_OFFLINE"] = "Desconectado",
	["STATUS_NO_DATA"] = "SIN DATOS",
	["STATUS_FULL"] = "LLENO",

	
	
	
	
	-- vault tooltip text
	
	
	
	
	
	
	-- main menu
	


	
	










	




	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	








	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


	
	
	
	
	
	
	
	
	
	
	
	


	
	
	
	
	
	
	
	
	
	
	
	
	
	



	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


	
	

	















	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	




	
	
	
	
	
	
	
	
	
	
	
	["MOD_MENU_MAIN_EDITMODE"] = "Activar Modo de Edici\195\179n",
	
	
	
	
	
	
	
	
	
	
	
	




	

	-- item menu
	["MOD_MENU_ITEM_INFORMATION_TITLE"] = "OPCIONES DE OBJETO",
	
	
	
	
	
	
	

	
	
	
	
	














	

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
