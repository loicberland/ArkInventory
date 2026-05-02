local L = AceLibrary( "AceLocale-2.2" ):new( "ArkInventory" )

-- post updated translations at http://groups.google.com/group/wow-arkinventory (modify this file and include as an attachment)

-- Translated by: insert your name here if you translate a language






L:RegisterTranslations( "enUS", function() return {

	-- wow skill headers
	["WOW_SKILL_HEADER_PRIMARY"] = "Professions",
	["WOW_SKILL_HEADER_SECONDARY"] = "Secondary Skills",
	
	
	-- wow skill names
	["WOW_SKILL_ALCHEMY"] = "Alchemy",
	["WOW_SKILL_BLACKSMITHING"] = "Blacksmithing",
	["WOW_SKILL_COOKING"] = "Cooking",
	["WOW_SKILL_ENCHANTING"] = "Enchanting",
	["WOW_SKILL_ENGINEERING"] = "Engineering",
	["WOW_SKILL_FIRST_AID"] = "First Aid",
	["WOW_SKILL_FISHING"] = "Fishing",
	["WOW_SKILL_HERBALISM"] = "Herbalism",
	["WOW_SKILL_JEWELCRAFTING"] = "Jewelcrafting",
	["WOW_SKILL_LEATHERWORKING"] = "Leatherworking",
	["WOW_SKILL_MINING"] = "Mining",
	["WOW_SKILL_SKINNING"] = "Skinning",
	["WOW_SKILL_TAILORING"] = "Tailoring",
	["WOW_SKILL_RIDING"] = "Riding",
	
	
	-- wow class names
	["WOW_CLASS_DRUID"] = "Druid",
	["WOW_CLASS_HUNTER"] = "Hunter",
	["WOW_CLASS_MAGE"] = "Mage",
	["WOW_CLASS_PALADIN"] = "Paladin",
	["WOW_CLASS_PRIEST"] = "Priest",
	["WOW_CLASS_ROGUE"] = "Rogue",
	["WOW_CLASS_SHAMAN"] = "Shaman",
	["WOW_CLASS_WARLOCK"] = "Warlock",
	["WOW_CLASS_WARRIOR"] = "Warrior",
	
	
	-- wow item types
	["WOW_ITEM_TYPE_ARMOR"] = "Armor",
	["WOW_ITEM_TYPE_CONSUMABLE"] = "Consumable",
	["WOW_ITEM_TYPE_CONTAINER"] = "Container",
	["WOW_ITEM_TYPE_GEM"] = "Gem",
	["WOW_ITEM_TYPE_KEY"] = "Key", 
	["WOW_ITEM_TYPE_MISCELLANEOUS"] = "Miscellaneous", 
	["WOW_ITEM_TYPE_REAGENT"] = "Reagent",
	["WOW_ITEM_TYPE_RECIPE"] = "Recipe",
	["WOW_ITEM_TYPE_PROJECTILE"] = "Projectile",
	["WOW_ITEM_TYPE_QUEST"] = "Quest",
	["WOW_ITEM_TYPE_QUIVER"] = "Quiver",
	["WOW_ITEM_TYPE_TRADE_GOODS"] = "Trade Goods",
	["WOW_ITEM_TYPE_WEAPON"] = "Weapon",
	
	["WOW_ITEM_TYPE_CONTAINER_BAG"] = "Bag",
	["WOW_ITEM_TYPE_CONTAINER_SOULSHARD"] = "Soul Bag",
	["WOW_ITEM_TYPE_CONTAINER_HERB"] = "Herb Bag",
	["WOW_ITEM_TYPE_CONTAINER_ENCHANTING"] = "Enchanting Bag",
	["WOW_ITEM_TYPE_CONTAINER_ENGINEERING"] = "Engineering Bag",
	["WOW_ITEM_TYPE_CONTAINER_GEM"] = "Gem Bag",
	["WOW_ITEM_TYPE_CONTAINER_MINING"] = "Mining Bag",
	["WOW_ITEM_TYPE_CONTAINER_LEATHERWORKING"] = "Leatherworking Bag",
	["WOW_ITEM_TYPE_PROJECTILE_BULLET"] = "Bullet",
	["WOW_ITEM_TYPE_PROJECTILE_ARROW"] = "Arrow",
	["WOW_ITEM_TYPE_QUIVER_BULLET"] = "Ammo Pouch",
	["WOW_ITEM_TYPE_QUIVER_ARROW"] = "Quiver",
	["WOW_ITEM_TYPE_TRADE_GOODS_DEVICES"] = "Devices",
	["WOW_ITEM_TYPE_TRADE_GOODS_EXPLOSIVES"] = "Explosives",
	["WOW_ITEM_TYPE_TRADE_GOODS_PARTS"] = "Parts",
	
	
	-- wow tooltip text
	["WOW_TOOLTIP_POTION"] = "Potion",
	["WOW_TOOLTIP_ELIXIR"] = "Elixir",
	
	["WOW_TOOLTIP_FOOD"] = "Must remain seated while eating",
	["WOW_TOOLTIP_DRINK"] = "Must remain seated while drinking",
	["WOW_TOOLTIP_PET"] = "Click to summon and dismiss your",
	["WOW_TOOLTIP_POTION_HEAL"] = "Restores %d+ to %d+ health",
	["WOW_TOOLTIP_POTION_MANA"] = "Restores %d+ to %d+ mana",
	
	
	-- category names
	["CATEGORY_SYSTEM"] = "SYSTEM",
	["CATEGORY_SKILL"] = "SKILL",
	["CATEGORY_CLASS"] = "CLASS",
	["CATEGORY_OTHER"] = "OTHER",
	["CATEGORY_RULE"] = "RULE",
	
	
	-- basic (system) categories
	["CATEGORY_CONSUMABLE"] = "CONSUMABLE",
	["CATEGORY_CONTAINER"] = "CONTAINER",
	["CATEGORY_KEY"] = "KEY",
	["CATEGORY_MISCELLANEOUS"] = "MISC",
	["CATEGORY_QUEST"] = "QUEST",
	["CATEGORY_REAGENT"] = "REAGENT",
	["CATEGORY_RECIPE"] = "RECIPE",
	["CATEGORY_PROJECTILE"] = "PROJECTILE",
	["CATEGORY_PROJECTILE_BULLET"] = "PROJECTILE (BULLET)",
	["CATEGORY_PROJECTILE_ARROW"] = "PROJECTILE (ARROW)",
	["CATEGORY_TRADE_GOODS"] = "TRADE GOODS",
	["CATEGORY_TRADE_GOODS_DEVICES"] = "DEVICES",
	["CATEGORY_TRADE_GOODS_EXPLOSIVES"] = "EXPLOSIVES",
	["CATEGORY_TRADE_GOODS_PARTS"] = "PARTS",
	["CATEGORY_REPUTATION"] = "REPUTATION",
	
	["CATEGORY_DEFAULT"] = "DEFAULT",
	["CATEGORY_TRASH"] = "TRASH",
	["CATEGORY_SOULSHARD"] = "SOUL SHARD",
	["CATEGORY_SOULBOUND"] = "SOULBOUND",
	["CATEGORY_EQUIPMENT_SOULBOUND"] = "EQUIPMENT (SOULBOUND)",
	["CATEGORY_EQUIPMENT"] = "EQUIPMENT (NOT SOULBOUND)",
	["CATEGORY_MOUNT"] = "MOUNT",
	["CATEGORY_PET_NONCOMBAT"] = "PET (NON-COMBAT)",
	
	["CATEGORY_FOOD"] = "FOOD",
	["CATEGORY_FOOD_PET"] = "FOOD (PET ONLY)",
	["CATEGORY_DRINK"] = "DRINK",
	["CATEGORY_POTION_MANA"] = "MANA (POTION/GEM)",
	["CATEGORY_POTION_HEAL"] = "HEALTH (POTION/STONE)",
	["CATEGORY_CORE_MATS"] = "CORE MATS",
	["CATEGORY_POTION"] = "POTION",
	
	["CATEGORY_UNKNOWN"] = "UNKNOWN",
	
	
	-- empty categories
	["CATEGORY_EMPTY"] = "EMPTY", -- generic empty, also used for category menu
	["CATEGORY_EMPTY_KEY"] = "EMPTY (KEYRING)",
	["CATEGORY_EMPTY_PROJECTILE"] = "EMPTY (PROJECTILE)",
	["CATEGORY_EMPTY_PROJECTILE_BULLET"] = "EMPTY (PROJECTILE - BULLET)",
	["CATEGORY_EMPTY_PROJECTILE_ARROW"] = "EMPTY (PROJECTILE - ARROW)",
	["CATEGORY_EMPTY_SOULSHARD"] = "EMPTY (SOUL SHARD)",
	["CATEGORY_EMPTY_HERB"] = "EMPTY (HERB)",
	["CATEGORY_EMPTY_ENCHANTING"] = "EMPTY (ENCHANTING)",
	["CATEGORY_EMPTY_ENGINEERING"] = "EMPTY (ENGINEERING)",
	["CATEGORY_EMPTY_GEM"] = "EMPTY (GEM)",
	["CATEGORY_EMPTY_MINING"] = "EMPTY (MINING)",
	["CATEGORY_EMPTY_LEATHERWORKING"] = "EMPTY (LEATHERWORKING)",
	["CATEGORY_EMPTY_BAG"] = "EMPTY (BAG)",
	["CATEGORY_EMPTY_UNKNOWN"] = "EMPTY (UNKNOWN)",
	
	
	-- skill categories
	["CATEGORY_SKILL_ALCHEMY"] = "ALCHEMY",
	["CATEGORY_SKILL_BLACKSMITHING"] = "BLACKSMITHING",
	["CATEGORY_SKILL_COOKING"] = "COOKING",
	["CATEGORY_SKILL_ENCHANTING"] = "ENCHANTING",
	["CATEGORY_SKILL_ENGINEERING"] = "ENGINEERING",
	["CATEGORY_SKILL_FIRST_AID"] = "FIRST AID",
	["CATEGORY_SKILL_FISHING"] = "FISHING",
	["CATEGORY_SKILL_HERBALISM"] = "HERBALISM",
	["CATEGORY_SKILL_JEWELCRAFTING"] = "JEWELCRAFTING",
	["CATEGORY_SKILL_LEATHERWORKING"] = "LEATHERWORKING",
	["CATEGORY_SKILL_MINING"] = "MINING",
	["CATEGORY_SKILL_SKINNING"] = "SKINNING",
	["CATEGORY_SKILL_TAILORING"] = "TAILORING",
	
	
	-- class categories
	["CATEGORY_CLASS_DRUID"] = "DRUID",
	["CATEGORY_CLASS_HUNTER"] = "HUNTER",
	["CATEGORY_CLASS_MAGE"] = "MAGE",
	["CATEGORY_CLASS_PALADIN"] = "PALADIN",
	["CATEGORY_CLASS_PRIEST"] = "PRIEST",
	["CATEGORY_CLASS_ROGUE"] = "ROGUE",
	["CATEGORY_CLASS_SHAMAN"] = "SHAMAN",
	["CATEGORY_CLASS_WARLOCK"] = "WARLOCK",
	["CATEGORY_CLASS_WARRIOR"] = "WARRIOR",
	
	
	-- bag names - used to name the empty slots in the status frame
	["STATUS_NAME_SOULSHARD"] = "Shard",
	["STATUS_NAME_HERB"] = "Herb",
	["STATUS_NAME_ENCHANTING"] = "Ench",
	["STATUS_NAME_ENGINEERING"] = "Eng",
	["STATUS_NAME_GEM"] = "Gem",
	["STATUS_NAME_MINING"] = "Mine",
	["STATUS_NAME_LEATHERWORKING"] = "Leather",
	["STATUS_NAME_PROJECTILE"] = "Ammo",
	["STATUS_NAME_PROJECTILE_BULLET"] = "Bullet",
	["STATUS_NAME_PROJECTILE_ARROW"] = "Arrow",
	["STATUS_NAME_KEY"] = "Key",
	["STATUS_NAME_UNKNOWN"] = "Unknown",
	["STATUS_NAME_BAG"] = "Bag",
	
	
	-- location names
	["LOCATION_ALL"] = "All",
	["LOCATION_BAG"] = "Bag",
	["LOCATION_BANK"] = "Bank",
	--["LOCATION_KEY"] = "Keyring",
	--["LOCATION_VAULT"] = "Guild Bank",
	["LOCATION_WEARING"] = "Wearing",
	--["LOCATION_MAIL"] = "Mailbox",
	--["BACKPACK"] = "Backpack",
	
	["STATUS_OFFLINE"] = "Offline",
	["STATUS_NO_DATA"] = "???",
	["STATUS_FULL"] = "FULL",
	["STATUS_START"] = "Started",
	["STATUS_FINISH"] = "Finished",
	["STATUS_PURCHASE"] = "BUY",
	
	
	-- vault tooltip text
	["VAULT_TAB_NAME"] = "Tab: |cffffffff%1$s - %2$s|r", -- tab number, tab name
	["VAULT_TAB_ACCESS"] = "Access: |cffffffff%1$s|r",
	["VAULT_TAB_ACCESS_NONE"] = "No Access",
	["VAULT_TAB_REMAINING_WITHDRAWALS"] = "Remaining Daily Withdrawals: |cffffffff%1$s|r",
	
	
	-- main menu
	["MOD_FRAME_MENU"] = "Menu",

	["MOD_MENU_MAIN_SWITCH_CHARACTER"] = "Switch Character",
	["MOD_MENU_MAIN_SWITCH_CHARACTER_TEXT"] = "Switches the display to another character",
	["MOD_MENU_MAIN_SWITCH_CHARACTER_CHOOSE_NONE"] = "no other character data to choose from",
	["MOD_MENU_MAIN_SWITCH_CHARACTER_CHOOSE_TEXT"] = "Switches the current display to %1$s",
	["MOD_MENU_MAIN_SWITCH_CHARACTER_ERASE"] = "Erase %s data",
	["MOD_MENU_MAIN_SWITCH_CHARACTER_ERASE_TEXT"] = "Erase %1$s data for %2$s",
	
	["MOD_MENU_MAIN_SWITCH_LOCATION"] = "Toggle Location",
	["MOD_MENU_MAIN_SWITCH_LOCATION_TEXT"] = "toggles the display of the %1$s window",
	
	["MOD_MENU_MAIN_SETTINGS"] = "Use Settings",
	["MOD_MENU_MAIN_SETTINGS_TEXT"] = "lets you customise each window separately if required",
	["MOD_MENU_MAIN_SETTINGS_LOCATION_TEXT"] = "uses the %1$s settings for the %2$s window",
	
	["MOD_MENU_MAIN_WINDOW"] = "Window",
	["MOD_MENU_MAIN_WINDOW_SCALE_TEXT"] = "sets the scale factor, making the window larger or smaller",
	["MOD_MENU_MAIN_WINDOW_PADDING"] = "Padding",
	["MOD_MENU_MAIN_WINDOW_PADDING_TEXT"] = "sets the amount of space to add between the window edge and the bars",
	["MOD_MENU_MAIN_WINDOW_WIDTH"] = "Width",
	["MOD_MENU_MAIN_WINDOW_WIDTH_TEXT"] = "sets the number of columns to display",
	["MOD_MENU_MAIN_WINDOW_BACKGROUND_COLOR"] = "Background Colour",
	["MOD_MENU_MAIN_WINDOW_BACKGROUND_COLOR_TEXT"] = "Sets the background colour of the main window",
	["MOD_MENU_MAIN_WINDOW_BORDER_SHOW_TEXT"] = "toggles the display of the border around the main window",
	["MOD_MENU_MAIN_WINDOW_BORDER_COLOR"] = "Border Colour",
	["MOD_MENU_MAIN_WINDOW_BORDER_COLOR_TEXT"] = "sets the border colour for the main window",
	["MOD_MENU_MAIN_WINDOW_BAGHIGHLIGHT_COLOR"] = "Bag Highlight Colour",
	["MOD_MENU_MAIN_WINDOW_BAGHIGHLIGHT_COLOR_TEXT"] = "Sets the colour used to highlight slots when you mouseover a bag",
	["MOD_MENU_MAIN_WINDOW_ANCHOR_LOCK"] = "Lock position",
	["MOD_MENU_MAIN_WINDOW_ANCHOR_LOCK_TEXT"] = "locks the %1$s frame from being moved",
	
	["MOD_MENU_MAIN_BARS"] = "Bars",
	["MOD_MENU_MAIN_BARS_PER_ROW"] = "Per Row",
	["MOD_MENU_MAIN_BARS_PER_ROW_TEXT"] = "sets the number of bars to display in each row",
	["MOD_MENU_MAIN_BARS_PADDING"] = "Padding",
	["MOD_MENU_MAIN_BARS_DIRECTION"] = "Direction",
	["MOD_MENU_MAIN_BARS_DIRECTION_HORIZONTAL_TEXT"] = "extends the bars horizontally",
	["MOD_MENU_MAIN_BARS_DIRECTION_VERTICAL_TEXT"] = "extends the bars vertically",
	["MOD_MENU_MAIN_BARS_COMPACT"] = "Compact",
	["MOD_MENU_MAIN_BARS_COMPACT_TEXT"] = "displays all non empty bars in sequential order",
	["MOD_MENU_MAIN_BARS_SHOW_EMPTY"] = "Show empty",
	["MOD_MENU_MAIN_BARS_SHOW_EMPTY_TEXT"] = "toggles the display of empty bars",
	["MOD_MENU_MAIN_BARS_BACKGROUND"] = "Background Colour",
	["MOD_MENU_MAIN_BARS_BACKGROUND_TEXT"] = "sets the colour for the bars background",
	["MOD_MENU_MAIN_BARS_BORDER_TEXT"] = "toggles the display of a border around each bar",
	["MOD_MENU_MAIN_BARS_BORDER_COLOUR"] = "Border Colour",
	["MOD_MENU_MAIN_BARS_BORDER_COLOUR_TEXT"] = "sets the colour for the border around the bars",
	["MOD_MENU_MAIN_BARS_NAME"] = "Name",
	["MOD_MENU_MAIN_BARS_NAME_TEXT"] = "Sets the name label for this bar",
	["MOD_MENU_MAIN_BARS_NAME_SHOW_TEXT"] = "toggles the display of bar names",
	["MOD_MENU_MAIN_BARS_NAME_COLOUR_TEXT"] = "sets the colour for the border around the bars",
	
	["MOD_MENU_MAIN_ITEMS"] = "Items",
	["MOD_MENU_MAIN_ITEMS_PADDING"] = "Padding",
	["MOD_MENU_MAIN_ITEMS_PADDING_TEXT"] = "sets the amount of space to add between item slots",
	["MOD_MENU_MAIN_ITEMS_FADE"] = "Fade offline",
	["MOD_MENU_MAIN_ITEMS_FADE_TEXT"] = "toggles whether to fade offline items",
	["MOD_MENU_MAIN_ITEMS_BORDER_SHOW_TEXT"] = "toggles whether to show borders around items or not",
	["MOD_MENU_MAIN_ITEMS_BORDER_RARITY"] = "Rarity coloured border",
	["MOD_MENU_MAIN_ITEMS_BORDER_RARITY_TEXT"] = "toggles whether to colour the border around each item slot to match it's rarity (Common, Rare, Epic, etc)",
	["MOD_MENU_MAIN_ITEMS_BORDER_TEXTURE_OFFSET"] = "Offset",
	["MOD_MENU_MAIN_ITEMS_BORDER_TEXTURE_OFFSET_TEXT"] = "the number pixels from the outside of the image to the inside edge of the border itself (used to realign the border to the item texture)",
	["MOD_MENU_MAIN_ITEMS_BORDER_SCALE_TEXT"] = "sets the scale for the border texture",
	["MOD_MENU_MAIN_ITEMS_HIDDEN"] = "Show hidden",
	["MOD_MENU_MAIN_ITEMS_HIDDEN_TEXT"] = "toggles whether items in hidden categories are shown or not",
	
	["MOD_MENU_MAIN_SORTING"] = "Sorting",
	["MOD_MENU_MAIN_SORTING_BAGSLOT"] = "Bag / Slot",
	["MOD_MENU_MAIN_SORTING_BAGSLOT_TEXT"] = "sorts your inventory by bag and slot numbers",
	["MOD_MENU_MAIN_SORTING_USER"] = "User Defined",
	["MOD_MENU_MAIN_SORTING_USER_TEXT"] = "sorts your inventory the way you order it",
	["MOD_MENU_MAIN_SORTING_INCLUDE_NAME"] = "item name",
	["MOD_MENU_MAIN_SORTING_INCLUDE_NAME_TEXT"] = "toggles the inclusion of item name in sorting your inventory",
	["MOD_MENU_MAIN_SORTING_INCLUDE_NAME_REVERSE"] = "Use reversed names",
	["MOD_MENU_MAIN_SORTING_INCLUDE_NAME_REVERSE_TEXT"] = "toggles the use of reversed names in sorting your inventory.\n\neg Super Mana Potion becomes Potion Mana Super",
	["MOD_MENU_MAIN_SORTING_INCLUDE_QUALITY"] = "item rarity",
	["MOD_MENU_MAIN_SORTING_INCLUDE_QUALITY_TEXT"] = "toggles the inclusion of item rarity in sorting your inventory",
	["MOD_MENU_MAIN_SORTING_INCLUDE_LOCATION"] = "item equip location",
	["MOD_MENU_MAIN_SORTING_INCLUDE_LOCATION_TEXT"] = "toggles the inclusion of item equip locations in sorting your inventory.\n\nnote: only affects items that can be equipped",
	["MOD_MENU_MAIN_SORTING_INCLUDE_ITEMTYPE"] = "item type and subtype",
	["MOD_MENU_MAIN_SORTING_INCLUDE_ITEMTYPE_TEXT"] = "toggles the inclusion of item type and subtype in sorting your inventory.",
	["MOD_MENU_MAIN_SORTING_INCLUDE_CATEGORY"] = "item category",
	["MOD_MENU_MAIN_SORTING_INCLUDE_CATEGORY_TEXT"] = "toggles the inclusion of item category in sorting your inventory",
	["MOD_MENU_MAIN_SORTING_INCLUDE_ITEMUSELEVEL"] = "item (use) level",
	["MOD_MENU_MAIN_SORTING_INCLUDE_ITEMUSELEVEL_TEXT"] = "toggles the inclusion of item (use) level in sorting your inventory.",
	["MOD_MENU_MAIN_SORTING_INCLUDE_ITEMSTATLEVEL"] = "item (stat) level",
	["MOD_MENU_MAIN_SORTING_INCLUDE_ITEMSTATLEVEL_TEXT"] = "toggles the inclusion of item (stat) level in sorting your inventory.",
	["MOD_MENU_MAIN_SORTING_INCLUDE_VENDORPRICE"] = "vendor price",
	["MOD_MENU_MAIN_SORTING_INCLUDE_VENDORPRICE_TEXT"] = "toggles the inclusion of vendor price (per current stack size) in sorting your inventory.",
	["MOD_MENU_MAIN_SORTING_OPEN"] = "On window open",
	["MOD_MENU_MAIN_SORTING_OPEN_TEXT"] = "toggles whether a resort is done when you open the window.",
	["MOD_MENU_MAIN_SORTING_INSTANT"] = "Instant",
	["MOD_MENU_MAIN_SORTING_INSTANT_TEXT"] = "toggles instant sort mode.\n\nenabled: sorting is done instantly when something changes\n\ndisabled: sorting is done only when the window is opened, or you refresh.",
	["MOD_MENU_MAIN_SORTING_ASCENDING"] = "Ascending order",
	["MOD_MENU_MAIN_SORTING_ASCENDING_TEXT"] = "toggles whether the items are sorted in ascending or descending order",
	
	["MOD_MENU_MAIN_SORTING_ORDER"] = "Sort Order",
	["MOD_MENU_MAIN_SORTING_MOVE_UP"] = "Move Up",
	["MOD_MENU_MAIN_SORTING_MOVE_UP_TEXT"] = "moves %1$s up in the sort order",
	["MOD_MENU_MAIN_SORTING_MOVE_DOWN"] = "Move Down",
	["MOD_MENU_MAIN_SORTING_MOVE_DOWN_TEXT"] = "moves %1$s down in the sort order",
	["MOD_MENU_MAIN_SORTING_NOT_INCLUDED"] = "* not currently included in sort*",
	
	["MOD_MENU_MAIN_EMPTY"] = "Empty slots",
	["MOD_MENU_MAIN_EMPTY_ICON"] = "Use Icon",
	["MOD_MENU_MAIN_EMPTY_ICON_TEXT"] = "toggles whether to use the icon or a solid colour for empty slot backgrounds",
	["MOD_MENU_MAIN_EMPTY_BORDER"] = "Coloured borders",
	["MOD_MENU_MAIN_EMPTY_BORDER_TEXT"] = "toggles whether to colour empty slot borders according to their bag type",
	["MOD_MENU_MAIN_EMPTY_COLOUR"] = "Slot colours",
	["MOD_MENU_MAIN_EMPTY_COLOUR_TEXT"] = "lets you change the colours for the empty slots",
	["MOD_MENU_MAIN_EMPTY_CLUMP"] = "Clump",
	["MOD_MENU_MAIN_EMPTY_CLUMP_TEXT"] = "toggles whether empty slots are clumped in with their non-empty type slots or treated as a seperate category",
	["MOD_MENU_MAIN_EMPTY_SHOW"] = "Show count",
	["MOD_MENU_MAIN_EMPTY_SHOW_TEXT"] = "toggles whether empty slots counts are shown on bags",
	["MOD_MENU_MAIN_EMPTY_SHOW_COLOUR"] = "Colour",
	["MOD_MENU_MAIN_EMPTY_SHOW_COLOUR_TEXT"] = "sets the colour of the empty slot count text",
	
	["MOD_MENU_MAIN_MONITOR"] = "Monitor",
	["MOD_MENU_MAIN_MONITOR_TEXT"] = "toggles the monitoring of changes in %1$s data for this character (%2$s).",
	
	["MOD_MENU_MAIN_OFFLINE"] = "Offline",
	["MOD_MENU_MAIN_OFFLINE_TEXT"] = "toggles whether to save %1$s data for this character (%2$s) so that you can view it while on another character (or offline).",
	
	["MOD_MENU_MAIN_HIDDEN"] = "Hide Frames",
	["MOD_MENU_MAIN_HIDDEN_TITLE"] = "Title",
	["MOD_MENU_MAIN_HIDDEN_TITLE_TEXT"] = "toggles whether the %1$s title frame (the one at the top) is hidden",
	["MOD_MENU_MAIN_HIDDEN_CHANGER"] = "Bag Changer",
	["MOD_MENU_MAIN_HIDDEN_CHANGER_TEXT"] = "toggles whether the %1$s bag changer frame is hidden",
	["MOD_MENU_MAIN_HIDDEN_STATUS"] = "Status",
	["MOD_MENU_MAIN_HIDDEN_STATUS_TEXT"] = "toggles whether the %1$s status frame (the one with the empty slot count and gold) is hidden",
	["MOD_MENU_MAIN_HIDDEN_BLIZZARD"] = "Hide Blizzard",
	["MOD_MENU_MAIN_HIDDEN_BLIZZARD_TEXT"] = "toggles whether to hide the original Blizzard %2$s so that %1$s can handle it instead.\n\nDisabling this option will return the standard Blizzard %2$s functionality.\n\nYou will still be able to open the %1$s %2$s when this is disabled but you will need to setup and use a keybinding instead.",
	
	["MOD_MENU_MAIN_AUTO"] = "Auto open/close",
	["MOD_MENU_MAIN_AUTO_OPEN"] = "Auto open",
	["MOD_MENU_MAIN_AUTO_CLOSE"] = "Auto close",

	["MOD_MENU_MAIN_NEWITEM"] = "New Items",
	["MOD_MENU_MAIN_NEWITEM_SHOW"] = "Show Indicator",
	["MOD_MENU_MAIN_NEWITEM_SHOW_TEXT"] = "toggles the display of the new item indicator in the %s window",
	["MOD_MENU_MAIN_NEWITEM_COLOUR"] = "Text Colour",
	["MOD_MENU_MAIN_NEWITEM_COLOUR_TEXT"] = "sets the colour of the new item indicator text",
	["MOD_MENU_MAIN_NEWITEM_RESET"] = "Clear",
	["MOD_MENU_MAIN_NEWITEM_RESET_TEXT"] = "clear the new item status for all items in this location",
	
	["MOD_MENU_MAIN_ACTIONS"] = "Actions",
	
	["MOD_MENU_MAIN_AUTO_BANK_OPEN_TEXT"] = "toggles whether the %1$s window is automatically opened when you open the bank",
	["MOD_MENU_MAIN_AUTO_BANK_CLOSE_TEXT"] = "toggles whether the %1$s window is automatically closed when you leave the bank",
	["MOD_MENU_MAIN_AUTO_VAULT_OPEN_TEXT"] = "toggles whether the %1$s window is automatically opened when you open the guild bank",
	["MOD_MENU_MAIN_AUTO_VAULT_CLOSE_TEXT"] = "toggles whether the %1$s window is automatically closed when you leave the guild bank",
	--["MOD_MENU_MAIN_AUTO_MAILBOX"] = "Mailbox",
	["MOD_MENU_MAIN_AUTO_MAILBOX_OPEN_TEXT"] = "toggles whether the %1$s window is automatically opened when you open the mailbox",
	["MOD_MENU_MAIN_AUTO_MAILBOX_CLOSE_TEXT"] = "toggles whether the %1$s window is automatically closed when you leave the mailbox",
	["MOD_MENU_MAIN_AUTO_MERCHANT"] = "Merchant/Vendor",
	["MOD_MENU_MAIN_AUTO_MERCHANT_OPEN_TEXT"] = "toggles whether the %1$s window is automatically opened when you talk to a merchant",
	["MOD_MENU_MAIN_AUTO_MERCHANT_CLOSE_TEXT"] = "toggles whether the %1$s window is automatically closed when you leave a merchant",
	["MOD_MENU_MAIN_AUTO_TRADE"] = "Trade",
	["MOD_MENU_MAIN_AUTO_TRADE_OPEN_TEXT"] = "toggles whether the %1$s window is automatically opened when you open a trade",
	["MOD_MENU_MAIN_AUTO_TRADE_CLOSE_TEXT"] = "toggles whether the %1$s window is automatically closed when you close a trade",
	["MOD_MENU_MAIN_AUTO_AUCTION"] = "Auction House",
	["MOD_MENU_MAIN_AUTO_AUCTION_OPEN_TEXT"] = "toggles whether the %1$s window is automatically opened when you open the auction house",
	["MOD_MENU_MAIN_AUTO_AUCTION_CLOSE_TEXT"] = "toggles whether the %1$s window is automatically closed when you leave the auction house",
	["MOD_MENU_MAIN_AUTO_COMBAT"] = "Combat",
	["MOD_MENU_MAIN_AUTO_COMBAT_CLOSE_TEXT"] = "toggles whether the %1$s window is automatically closed when you enter combat",

	["MOD_MENU_MAIN_TOOLTIP"] = "Tooltips",
	["MOD_MENU_MAIN_TOOLTIP_ENABLE"] = "Enabled",
	["MOD_MENU_MAIN_TOOLTIP_ENABLE_TEXT"] = "toggles whether to show tooltips",
	["MOD_MENU_MAIN_TOOLTIP_ITEMCOUNT_ADD"] = "Show item counts",
	["MOD_MENU_MAIN_TOOLTIP_ITEMCOUNT_ADD_TEXT"] = "toggles whether item counts are displayed in tooltips",
	["MOD_MENU_MAIN_TOOLTIP_ITEMCOUNT_COLOUR"] = "Text Colour",
	["MOD_MENU_MAIN_TOOLTIP_ITEMCOUNT_COLOUR_TEXT"] = "sets the colour of the item count text",
	["MOD_MENU_MAIN_TOOLTIP_VENDOR_ADD"] = "Show vendor prices",
	["MOD_MENU_MAIN_TOOLTIP_VENDOR_ADD_TEXT"] = "toggles whether vendor prices for items are displayed in tooltips",
	["MOD_MENU_MAIN_TOOLTIP_VENDOR_COLOUR"] = "Text Colour",
	["MOD_MENU_MAIN_TOOLTIP_VENDOR_COLOUR_TEXT"] = "sets the colour of the vendor price text",
	
	["MOD_MENU_MAIN_FONT"] = "Font",
	["MOD_MENU_MAIN_FONT_TEXT"] = "sets the font to %s",

	["MOD_MENU_MAIN_LOCATION_STATUS"] = "Status",
	["MOD_MENU_MAIN_LOCATION_STATUS_TEXT"] = "change status settings of %1$s for %2$s", -- location name, chacracter name
	
	["MOD_MENU_MAIN_REFRESH"] = "Refresh",
	["MOD_MENU_MAIN_REFRESH_TEXT"] = "refreshes the window",
	
	["MOD_MENU_MAIN_RELOAD"] = "Reload",
	["MOD_MENU_MAIN_RELOAD_TEXT"] = "reloads the window.  use when you change items in outfit sets",
	
	["MOD_MENU_MAIN_EDITMODE"] = "Edit Mode",
	["MOD_MENU_MAIN_EDITMODE_TEXT"] = "toggles edit mode on and off so you can customise item layout",

	["MOD_MENU_MAIN_BAGCHANGE"] = "Bag Changer",
	["MOD_MENU_MAIN_BAGCHANGE_TEXT"] = "toggles the display of the BagChanger frame so you can add or replace bags",
	
	["MOD_MENU_MAIN_COMPRESS"] = "Compress and Restack",
	["MOD_MENU_MAIN_COMPRESS_TEXT"] = "compress items into as few stacks as possible and then try to fill up any empty slots in special bags where possible",

	["MOD_MENU_MAIN_RULES"] = "Rules",
	--["MOD_MENU_MAIN_RULES_TEXT"] = "opens the rule window",

	["MOD_MENU_RULE_SHOWDISABLED"] = "Show Disabled Rules",
	["MOD_MENU_RULE_SHOWDISABLED_TEXT"] = "toggles the display of disabled rules",

	["MOD_MENU_MAIN_SEARCH"] = "Search",
	--["MOD_MENU_MAIN_SEARCH_TEXT"] = "opens the search window",
	
	
	-- item menu
	["MOD_MENU_ITEM_INFORMATION_TITLE"] = "Item Information",
	["MOD_MENU_ITEM_ITEM"] = "Item",
	["MOD_MENU_ITEM_CURRENT_ASSIGNMENT"] = "Current assignment",
	["MOD_MENU_ITEM_DEFAULT_ASSIGNMENT"] = "Default assignment",
	["MOD_MENU_ITEM_MOVE"] = "Move %1$s to Bar",
	["MOD_MENU_ITEM_RULE_NEW"] = "Create a new rule",
	["MOD_MENU_ITEM_RULE_ADD"] = "Add item to rule",
	["MOD_MENU_ITEM_DEBUG"] = "Debug Info",
	["MOD_MENU_ITEM_DEBUG_BAG"] = "Bag",
	["MOD_MENU_ITEM_DEBUG_SLOT"] = "Slot",
	["MOD_MENU_ITEM_DEBUG_BAG_TYPE"] = "Type",
	["MOD_MENU_ITEM_DEBUG_AI_ID"] = "AI ID",
	["MOD_MENU_ITEM_DEBUG_AI_CATEGORY"] = "AI Category",
	["MOD_MENU_ITEM_DEBUG_NAME"] = "Name",
	["MOD_MENU_ITEM_DEBUG_QUALITY"] = "Quality",
	["MOD_MENU_ITEM_DEBUG_LVL_ITEM"] = "Item Level (Stat)",
	["MOD_MENU_ITEM_DEBUG_LVL_USE"] = "Item Level (Use)",
	["MOD_MENU_ITEM_DEBUG_TYPE"] = "Type",
	["MOD_MENU_ITEM_DEBUG_SUBTYPE"] = "Sub Type",
	["MOD_MENU_ITEM_DEBUG_LOCATION"] = "Location",
	["MOD_MENU_ITEM_DEBUG_ID"] = "Blizzard ID",
	["MOD_MENU_ITEM_DEBUG_STACK"] = "Stack Size",
	["MOD_MENU_ITEM_DEBUG_TEXTURE"] = "Texture",
	["MOD_MENU_ITEM_DEBUG_FAMILY"] = "Family",
	["MOD_MENU_ITEM_DEBUG_PT"] = "PT Sets",
	["MOD_MENU_ITEM_DEBUG_PT_TEXT"] = "Lists which PT Sets this item is in",
	["MOD_MENU_ITEM_DEBUG_PT_NONE"] = "this item is currently not in any PT set",
	["MOD_MENU_ITEM_DEBUG_PT_TITLE"] = "PT Sets this item is in",
	
	
	-- bar menu
	["MOD_MENU_BAR_INFORMATION_TITLE"] = "Bar %1$s Options",
	["MOD_MENU_BAR_CATEGORY"] = "Category",
	["MOD_MENU_BAR_CATEGORY_TEXT"] = "Assign the category %1$s to this bar",
	["MOD_MENU_BAR_CATEGORY_CURRENT"] = "Currently assigned",
	["MOD_MENU_BAR_CATEGORY_ASSIGN"] = "Assignable Categories",
	["MOD_MENU_BAR_CATEGORY_REMOVE"] = "Remove",
	["MOD_MENU_BAR_CATEGORY_REMOVE_TEXT"] = "click to remove %1$s from bar %2$s and return it to the default bar", -- 1 is the category name, 2 is the bar number
	["MOD_MENU_BAR_CATEGORY_HIDDEN"] = "Hide",
	["MOD_MENU_BAR_CATEGORY_HIDDEN_TEXT"] = "click to toggle this categories hidden status.\n\nitems in a hidden category will not display in normal mode",
	["MOD_MENU_BAR_CLEAR"] = "Clear this bar",
	["MOD_MENU_BAR_CLEAR_TEXT"] = "removes all categories currently assigned to this bar except the default category",
	["MOD_MENU_BAR_INSERT"] = "Insert empty bar",
	["MOD_MENU_BAR_INSERT_TEXT"] = "inserts an empty bar here moving all categories up one bar",
	["MOD_MENU_BAR_REMOVE"] = "Remove this bar",
	["MOD_MENU_BAR_REMOVE_TEXT"] = "moves all categories assigned to this bar back to the default bar and moves all categories above this bar down one bar.\n\nif the default category is on this bar it will be moved to bar 1",
	["MOD_MENU_BAR_MOVE_UP"] = "Move this bar up",
	["MOD_MENU_BAR_MOVE_UP_TEXT"] = "swaps all categories assigned to this bar with the one above",
	["MOD_MENU_BAR_MOVE_DOWN"] = "Move this bar down",
	["MOD_MENU_BAR_MOVE_DOWN_TEXT"] = "swaps all categories assigned to this bar with the one below",
	

	-- bag menu
	["MOD_MENU_BAG_TITLE"] = "Bag Options",
	["MOD_MENU_BAG_SHOW"] = "Display",
	["MOD_MENU_BAG_SHOW_TEXT"] = "display the contents of this bag",
	["MOD_MENU_BAG_ISOLATE"] = "Isolate",
	["MOD_MENU_BAG_ISOLATE_TEXT"] = "only display the contents of this bag",
	["MOD_MENU_BAG_SHOWALL"] = "Display All",
	["MOD_MENU_BAG_SHOWALL_TEXT"] = "display the contents of all bags for this location",


	-- generic menu text
	["MOD_MENU_GENERIC_BOTTOMLEFT"] = "Bottom Left",
	["MOD_MENU_GENERIC_BOTTOMRIGHT"] = "Bottom Right",
	["MOD_MENU_GENERIC_TOPLEFT"] = "Top Left",
	["MOD_MENU_GENERIC_TOPRIGHT"] = "Top Right",
	["MOD_MENU_GENERIC_HORIZONTAL"] = "Horizontal",
	["MOD_MENU_GENERIC_VERTICAL"] = "Vertical",
	["MOD_MENU_GENERIC_CLOSE_MENU"] = "Close Menu",
	["MOD_MENU_GENERIC_ANCHOR"] = "Anchor Point",
	["MOD_MENU_GENERIC_ANCHOR_TEXT1"] = "sets the anchor point",
	["MOD_MENU_GENERIC_ANCHOR_TEXT2"] = "anchors the %1$s at the %2$s",
	["MOD_MENU_GENERIC_BORDER"] = "Border",
	["MOD_MENU_GENERIC_BORDER_TEXT"] = "border options",
	["MOD_MENU_GENERIC_SHOW"] = "Show",
	["MOD_MENU_GENERIC_FILE"] = "File",
	["MOD_MENU_GENERIC_HEIGHT"] = "Height",
	["MOD_MENU_GENERIC_SCALE"] = "Scale",
	["MOD_MENU_GENERIC_BORDER_TEXTURE"] = "Texture",
	["MOD_MENU_GENERIC_BORDER_TEXTURE_TEXT"] = "border texture options",
	["MOD_MENU_GENERIC_BORDER_TEXTURE_FILE_TEXT"] = "the texture to use for the border (changing this will also reset the scale back to 100%)",
	["MOD_MENU_GENERIC_BORDER_TEXTURE_HEIGHT_TEXT"] = "the height (in pixels) of the texture",
	["MOD_MENU_GENERIC_FONT"] = "Font",
	["MOD_MENU_GENERIC_COLOUR"] = "Colour",

	
	-- rules frame
	["MOD_FRAME_RULE_RULE"] = "Rule",
	["MOD_FRAME_RULE_ENABLED"] = "Enabled",
	["MOD_FRAME_RULE_HIDDEN"] = "Hidden",
	["MOD_FRAME_RULE_ORDER"] = "Order",
	["MOD_FRAME_RULE_DESCRIPTION"] = "Description",
	["MOD_FRAME_RULE_FORMULA"] = "Formula",
	["MOD_FRAME_RULE_SEARCH"] = "Search",
	["MOD_FRAME_RULE_VIEW"] = "View",
	["MOD_FRAME_RULE_ADD"] = "Add",
	["MOD_FRAME_RULE_EDIT"] = "Edit",
	["MOD_FRAME_RULE_REMOVE"] = "Remove",
	["MOD_FRAME_RULE_OK"] = "OK",
	["MOD_FRAME_RULE_CANCEL"] = "Cancel",
	
	["MOD_FRAME_RULE_LIST_ENABLED"] = "Use",
	["MOD_FRAME_RULE_LIST_DAMAGED"] = "Dmg",
	["MOD_FRAME_RULE_LIST_ID"] = "Rule",
	["MOD_FRAME_RULE_LIST_ORDER"] = "Order",
	["MOD_FRAME_RULE_LIST_DESCRIPTION"] = "Description",
	
	["RULE_DAMAGED"] = "Rule %s is now flagged as damaged and will no longer be used until repaired",
	["RULE_FAILED_NIL_KEY"] = "FAILED: passed key is nil",
	["RULE_FAILED_NIL_DATA"] = "FAILED: passed data is nil",
	["RULE_FAILED_NIL_DESCRIPTION"] = "FAILED: description is missing",
	["RULE_FAILED_NIL_FORMULA"] = "FAILED: formula is missing",
	

	-- new item indicators
	["NEW_ITEM_NEW"] = "NEW",
	["NEW_ITEM_INCREASE"] = "+++",
	["NEW_ITEM_DECREASE"] = "- - -",
	
	
	-- debug
	["MOD_MENU_MAIN_DEBUG"] = "Deubug Mode",
	["MOD_MENU_MAIN_DEBUG_TEXT"] = "toggles whether debugging code is enabled or not",

	
	-- slash commands
	["SLASH_UI"] = "ui",
	["SLASH_UI_TEXT"] = "ui options",
	["SLASH_UI_RESET"] = "reset",
	["SLASH_UI_RESET_TEXT"] = "centers the interface on the screen",
	["SLASH_UI_RESET_COMPLETE_TEXT"] = "all ui windows reset to center of screen",
	["SLASH_DB"] = "db",
	["SLASH_DB_TEXT"] = "db options",
	["SLASH_DB_RESET"] = "reset",
	["SLASH_DB_RESET_TEXT"] = "resets all options back to the defaults",
	["SLASH_DB_RESET_CONFIRM"] = "confirm",
	["SLASH_DB_RESET_CONFIRM_TEXT"] = "confirms the database reset",
	["SLASH_DB_RESET_COMPLETE_TEXT"] = "Profile has been reset.  All options are now back to defaults.",
	["SLASH_CACHE"] = "cache",
	["SLASH_CACHE_TEXT"] = "cache options",
	["SLASH_CACHE_ERASE"] = "erase",
	["SLASH_CACHE_ERASE_TEXT"] = "erases all cached data",
	["SLASH_CACHE_ERASE_CONFIRM"] = "confirm",
	["SLASH_CACHE_ERASE_CONFIRM_TEXT"] = "confirms the cache erase",
	["SLASH_CACHE_ERASE_COMPLETE_TEXT"] = "Erase All data for All Characters",
	["SLASH_MISC"] = "misc",
	["SLASH_MISC_TEXT"] = "misc options",
	["SLASH_MISC_ALERT"] = "bug fix alerts",
	["SLASH_MISC_ALERT_TEXT"] = "changes how bug fix alerts are displayed",
	["SLASH_MISC_ALERT_DISABLE"] = "disable",
	["SLASH_MISC_ALERT_DISABLE_TEXT"] = "disables bug fix alerts",
	["SLASH_MISC_ALERT_SHORT"] = "short",
	["SLASH_MISC_ALERT_SHORT_TEXT"] = "displays the short version for bug fix alerts",
	["SLASH_MISC_ALERT_LONG"] = "long",
	["SLASH_MISC_ALERT_LONG_TEXT"] = "displays the long version for bug fix alerts",
	
	
	-- misc chat stuff
	["MOD_ENABLED"] = "v%1$s Enabled.  Type %2$s or %3$s for help.",
	["MOD_DISABLED"] = "v%1$s Disabled.",
	["PROFILE_UPGRADE"] = "Upgrading profile [%1$s] to %2$.2f",
	["RESTACK_FAILED_OFFLINE"] = "Cannot restack %s in offline mode",
	["RESTACK_FAILED_RUNNING"] = "Restack %s is already in progress please wait for completion",
	["RESTACK_FAILED_LOCATION"] = "Restack is not supported for %s",
	["MISC_ALERT"] = "Alert!",
	["MISC_BUGFIX_SHORT"] = "Bug fix complete.",
	["MISC_BUGFIX_LONG"] = "The FrameLevel for the %1$s window is currently at %2$s and has been reset to %3$s to ensure that it remains functional.  Sorry for the lag spike caused by the fix.",

	
	-- item count tooltip
	["TOOLTIP_COUNT_ME"] = ">", -- note: theres no space between this and your characters name so add a trailing space if you need one (depending on what you have here)
	["TOOLTIP_VENDOR"] = "Vendor",
	
	
	
	
	
	
	-- WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING
	-- WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING
	-- WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING
	-- WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING
	
	-- INTERNAL CODES AND TEXT
	
	-- DO NOT TRANSLATE ANYTHING UNDERNEATH THIS LINE
	
	-- REMOVE THESE ENTRIES FROM ALL OTHER LOCALE FILES
	
	
	-- periodictable3: set names for default skill categories
	["PT_SKILL_ALCHEMY"] = "Tradeskill.Mat.ByProfession.Alchemy,Tradeskill.Tool.Alchemy",
	["PT_SKILL_BLACKSMITHING"] = "Tradeskill.Mat.ByProfession.Blacksmithing,Tradeskill.Tool.Blacksmithing",
	["PT_SKILL_COOKING"] = "Tradeskill.Mat.ByProfession.Cooking",
	["PT_SKILL_ENCHANTING"] = "Tradeskill.Mat.ByProfession.Enchanting,Tradeskill.Tool.Enchanting,Tradeskill.Gather.Disenchant",
	["PT_SKILL_ENGINEERING"] = "Tradeskill.Mat.ByProfession.Engineering,Tradeskill.Tool.Engineering",
	["PT_SKILL_FIRST_AID"] = "Tradeskill.Mat.ByProfession.First Aid",
	["PT_SKILL_FISHING"] = "Tradeskill.Gather.Fishing,Tradeskill.Tool.Fishing", -- 3.1
	["PT_SKILL_HERBALISM"] = "Tradeskill.Mat.ByType.Herb",
	["PT_SKILL_JEWELCRAFTING"] = "Tradeskill.Mat.ByProfession.Jewelcrafting,Tradeskill.Tool.Jewelcrafting",
	["PT_SKILL_LEATHERWORKING"] = "Tradeskill.Mat.ByProfession.Leatherworking",
	["PT_SKILL_MINING"] = "Tradeskill.Gather.Mining,Tradeskill.Tool.Mining,Tradeskill.Mat.ByType.Ore,Tradeskill.Mat.ByType.Bar",
	["PT_SKILL_SKINNING"] = "Tradeskill.Gather.Skinning,Tradeskill.Tool.Skinning",
	["PT_SKILL_TAILORING"] = "Tradeskill.Mat.ByProfession.Tailoring",
	["PT_SKILL_RIDING"] = "Misc.Mount",
	
	
	-- periodictable: set names for default class categories
	["PT_CLASS_DRUID"] = "Misc.Reagent.Class.Druid", -- 3.1
	["PT_CLASS_HUNTER"] = "Misc.Reagent.Class.Hunter",
	["PT_CLASS_MAGE"] = "Misc.Reagent.Class.Mage", -- 3.1
	["PT_CLASS_PALADIN"] = "Misc.Reagent.Class.Paladin", -- 3.1
	["PT_CLASS_PRIEST"] = "Misc.Reagent.Class.Priest", -- 3.1
	["PT_CLASS_ROGUE"] = "Misc.Reagent.Class.Rogue", -- 3.1
	["PT_CLASS_SHAMAN"] = "Misc.Reagent.Class.Shaman", -- 3.1
	["PT_CLASS_WARLOCK"] = "Misc.Reagent.Class.Warlock", -- 3.1
	["PT_CLASS_WARRIOR"] = "Misc.Reagent.Class.Warrior",
	
	
	-- periodictable: other
	["PT_CATEGORY_CONTAINER"] = "Misc.Bag", -- 3.1
	["PT_CATEGORY_SOULSHARD"] = "Misc.Container.ItemsInType.Soul Shard", -- 3.1
	["PT_CATEGORY_MOUNT"] = "Misc.Mount", -- 3.1
	["PT_CATEGORY_REPUTATION"] = "Reputation.Turnin", -- 3.1
	["PT_CATEGORY_QUEST"] = "Misc.QuestMats", -- 3.1
	["PT_CATEGORY_KEY"] = "Misc.Key", -- 3.1
	["PT_CATEGORY_FOOD"] = "Consumable.Food.Edible", -- 3.1
	["PT_CATEGORY_DRINK"] = "Consumable.Water", -- 3.1
	["PT_CATEGORY_POTION_HEAL"] = "Consumable.Potion.Recovery.Healing,Consumable.Warlock.Healthstone", -- 3.1
	["PT_CATEGORY_POTION_MANA"] = "Consumable.Potion.Recovery.Mana", -- 3.1
	["PT_CATEGORY_POTION"] = "Consumable.Potion", -- 3.1
	["PT_CATEGORY_PET_NONCOMBAT"] = "Misc.Minipet", -- 3.1
	
	
	-- periodictable: bag items
	["PT_CONTAINS_SOULSHARD"] = "Misc.Container.ItemsInType.Soul Shard", -- 3.1
	["PT_CONTAINS_HERB"] = "Misc.Container.ItemsInType.Herb", -- 3.1
	["PT_CONTAINS_ENCHANTING"] = "Misc.Container.ItemsInType.Enchanting", -- 3.1
	["PT_CONTAINS_ENGINEERING"] = "Misc.Container.ItemsInType.Engineering", -- 3.1
	["PT_CONTAINS_GEM"] = "Misc.Container.ItemsInType.Gem", -- 3.1
	["PT_CONTAINS_MINING"] = "Misc.Container.ItemsInType.Mining", -- 3.1
	["PT_CONTAINS_LEATHERWORKING"] = "Misc.Container.ItemsInType.Leatherworking",
	["PT_CONTAINS_BULLET"] = "Misc.Reagent.Ammo.Bullet", -- 3.1
	["PT_CONTAINS_ARROW"] = "Misc.Reagent.Ammo.Arrow", -- 3.1

	
	-- lua string pattern to collect every character in between brackets
	["RULE_PATTERN_COLLECT"] = "%((.-)%)",
	["RULE_PATTERN_SEP"] = "[^,]+",
	
} end )
