local L = AceLibrary( "AceLocale-2.2" ):new( "ArkInventory" )

-- post updated translations at http://groups.google.com/group/wow-arkinventory (modify this file and include as an attachment)

-- Translated by: mcc 青楓殘月@水晶之刺
-- Updated 2007/07/15 by 青楓殘月@水晶之刺 using purple's Translation
-- Updated 2007/07/24 by 青楓殘月@水晶之刺




L:RegisterTranslations( "zhTW", function() return {

	-- wow skill headers
	["WOW_SKILL_HEADER_PRIMARY"] = "專業技能",
	["WOW_SKILL_HEADER_SECONDARY"] = "第二專長",


	-- wow skill names
	["WOW_SKILL_ALCHEMY"] = "鍊金術",
	["WOW_SKILL_BLACKSMITHING"] = "鍛造",
	["WOW_SKILL_COOKING"] = "烹飪",
	["WOW_SKILL_ENCHANTING"] = "附魔",
	["WOW_SKILL_ENGINEERING"] = "工程學",
	["WOW_SKILL_FIRST_AID"] = "急救",
	["WOW_SKILL_FISHING"] = "釣魚",
	["WOW_SKILL_HERBALISM"] = "草藥學",
	["WOW_SKILL_JEWELCRAFTING"] = "珠寶設計",
	["WOW_SKILL_LEATHERWORKING"] = "製皮",
	["WOW_SKILL_MINING"] = "採礦",
	["WOW_SKILL_SKINNING"] = "剝皮",
	["WOW_SKILL_TAILORING"] = "裁縫",
	["WOW_SKILL_RIDING"] = "騎乘術",


	-- wow class names
	["WOW_CLASS_DRUID"] = "德魯伊",
	["WOW_CLASS_HUNTER"] = "獵人",
	["WOW_CLASS_MAGE"] = "法師",
	["WOW_CLASS_PALADIN"] = "聖騎士",
	["WOW_CLASS_PRIEST"] = "牧師",
	["WOW_CLASS_ROGUE"] = "盜賊",
	["WOW_CLASS_SHAMAN"] = "薩滿",
	["WOW_CLASS_WARLOCK"] = "術士",
	["WOW_CLASS_WARRIOR"] = "戰士",


	-- wow item types
	["WOW_ITEM_TYPE_ARMOR"] = "護甲",
	["WOW_ITEM_TYPE_CONSUMABLE"] = "消耗品",
	["WOW_ITEM_TYPE_CONTAINER"] = "容器",
	["WOW_ITEM_TYPE_GEM"] = "寶石",
	["WOW_ITEM_TYPE_KEY"] = "鑰匙", 
	["WOW_ITEM_TYPE_MISCELLANEOUS"] = "其他", 
	["WOW_ITEM_TYPE_REAGENT"] = "材料",
	["WOW_ITEM_TYPE_RECIPE"] = "配方",
	["WOW_ITEM_TYPE_PROJECTILE"] = "彈藥",
	["WOW_ITEM_TYPE_QUEST"] = "任務",
	["WOW_ITEM_TYPE_QUIVER"] = "箭袋",
	["WOW_ITEM_TYPE_TRADE_GOODS"] = "商品",
	["WOW_ITEM_TYPE_WEAPON"] = "武器",
	
	["WOW_ITEM_TYPE_CONTAINER_BAG"] = "容器",
	["WOW_ITEM_TYPE_CONTAINER_SOULSHARD"] = "靈魂裂片背包",
	["WOW_ITEM_TYPE_CONTAINER_HERB"] = "草藥包",
	["WOW_ITEM_TYPE_CONTAINER_ENCHANTING"] = "附魔包",
	["WOW_ITEM_TYPE_CONTAINER_ENGINEERING"] = "工程包",
	["WOW_ITEM_TYPE_CONTAINER_GEM"] = "寶石背包",
	["WOW_ITEM_TYPE_CONTAINER_MINING"] = "採礦背包",

	["WOW_ITEM_TYPE_PROJECTILE_BULLET"] = "子彈",
	["WOW_ITEM_TYPE_PROJECTILE_ARROW"] = "箭",
	["WOW_ITEM_TYPE_QUIVER_BULLET"] = "彈藥袋",
	["WOW_ITEM_TYPE_QUIVER_ARROW"] = "箭袋",
	["WOW_ITEM_TYPE_TRADE_GOODS_DEVICES"] = "裝置",
	["WOW_ITEM_TYPE_TRADE_GOODS_EXPLOSIVES"] = "爆炸物",
	["WOW_ITEM_TYPE_TRADE_GOODS_PARTS"] = "零件",


	-- wow tooltip text
	["WOW_TOOLTIP_POTION"] = "藥水",
	["WOW_TOOLTIP_ELIXIR"] = "藥劑",

	["WOW_TOOLTIP_FOOD"] = "進食時必須保持坐姿",
	["WOW_TOOLTIP_DRINK"] = "喝水時必須保持坐姿",
	["WOW_TOOLTIP_PET"] = "右鍵點擊以召喚或解散你的",
	["WOW_TOOLTIP_POTION_HEAL"] = "恢復%d+至%d+點生命力",
	["WOW_TOOLTIP_POTION_MANA"] = "恢復%d+至%d+點法力",

	
	-- category names
	["CATEGORY_SYSTEM"] = "系統",
	["CATEGORY_SKILL"] = "專業",
	["CATEGORY_CLASS"] = "職業",
	["CATEGORY_OTHER"] = "其他",
	["CATEGORY_RULE"] = "規則",
	
	
	-- basic (system) categories
	["CATEGORY_CONSUMABLE"] = "消耗品",
	["CATEGORY_CONTAINER"] = "容器",
	["CATEGORY_KEY"] = "鑰匙",
	["CATEGORY_MISCELLANEOUS"] = "其他",
	["CATEGORY_QUEST"] = "任務",
	["CATEGORY_REAGENT"] = "材料",
	["CATEGORY_RECIPE"] = "配方",
	["CATEGORY_PROJECTILE"] = "彈藥",
	["CATEGORY_PROJECTILE_BULLET"] = "彈藥 (子彈)",
	["CATEGORY_PROJECTILE_ARROW"] = "彈藥 (箭)",
	["CATEGORY_TRADE_GOODS"] = "商品",
	["CATEGORY_TRADE_GOODS_DEVICES"] = "裝置",
	["CATEGORY_TRADE_GOODS_EXPLOSIVES"] = "爆炸物",
	["CATEGORY_TRADE_GOODS_PARTS"] = "零件",
	["CATEGORY_REPUTATION"] = "聲望物品",

	["CATEGORY_DEFAULT"] = "預設",
	["CATEGORY_TRASH"] = "垃圾",
	["CATEGORY_SOULSHARD"] = "靈魂裂片",
	["CATEGORY_SOULBOUND"] = "已綁定",
	["CATEGORY_EQUIPMENT_SOULBOUND"] = "裝備",
	["CATEGORY_EQUIPMENT"] = "裝備 (未綁定)",
	["CATEGORY_MOUNT"] = "坐騎",
	["CATEGORY_PET_NONCOMBAT"] = "小寵物 (觀賞用)",

	["CATEGORY_FOOD"] = "食物",
	["CATEGORY_FOOD_PET"] = "食物 (寵物)",
	["CATEGORY_DRINK"] = "飲料",
	["CATEGORY_POTION_MANA"] = "法力 (藥水/寶石)",
	["CATEGORY_POTION_HEAL"] = "治療 (藥水/石)",
	["CATEGORY_CORE_MATS"] = "原始材料",
	["CATEGORY_POTION"] = "藥水",




	-- empty categories
	["CATEGORY_EMPTY"] = "空格", -- generic empty, also used for category menu
	["CATEGORY_EMPTY_KEY"] = "空格 (鑰匙圈)",
	["CATEGORY_EMPTY_PROJECTILE"] = "空格 (彈藥)",
	["CATEGORY_EMPTY_PROJECTILE_BULLET"] = "空格 (彈藥 - 子彈)",
	["CATEGORY_EMPTY_PROJECTILE_ARROW"] = "空格 (彈藥 - 箭)",
	["CATEGORY_EMPTY_SOULSHARD"] = "空格 (靈魂裂片)",
	["CATEGORY_EMPTY_HERB"] = "空格 (草藥)",
	["CATEGORY_EMPTY_ENCHANTING"] = "空格 (附魔)",
	["CATEGORY_EMPTY_ENGINEERING"] = "空格 (工程)",
	["CATEGORY_EMPTY_GEM"] = "空格 (寶石)",
	["CATEGORY_EMPTY_MINING"] = "空格 (礦石)",
	["CATEGORY_EMPTY_LEATHERWORKING"] = "空格 (製皮)",
	["CATEGORY_EMPTY_BAG"] = "空格 (背包)",
	["CATEGORY_EMPTY_UNKNOWN"] = "空格 (未知)",

	-- 因為 GetReverseTranslation 的關係，故意加上"："和上面的 WOW_CLASS_ 做區別
	-- skill categories
	["CATEGORY_SKILL_ALCHEMY"] = "鍊金術：",
	["CATEGORY_SKILL_BLACKSMITHING"] = "鍛造：",
	["CATEGORY_SKILL_COOKING"] = "烹飪：",
	["CATEGORY_SKILL_ENCHANTING"] = "附魔：",
	["CATEGORY_SKILL_ENGINEERING"] = "工程學：",
	["CATEGORY_SKILL_FIRST_AID"] = "急救：",
	["CATEGORY_SKILL_FISHING"] = "釣魚：",
	["CATEGORY_SKILL_HERBALISM"] = "草藥學：",
	["CATEGORY_SKILL_JEWELCRAFTING"] = "珠寶設計：",
	["CATEGORY_SKILL_LEATHERWORKING"] = "製皮：",
	["CATEGORY_SKILL_MINING"] = "採礦：",
	["CATEGORY_SKILL_SKINNING"] = "剝皮：",
	["CATEGORY_SKILL_TAILORING"] = "裁縫：",


	-- class categories
	["CATEGORY_CLASS_DRUID"] = "德魯伊",
	["CATEGORY_CLASS_HUNTER"] = "獵人",
	["CATEGORY_CLASS_MAGE"] = "法師",
	["CATEGORY_CLASS_PALADIN"] = "聖騎士",
	["CATEGORY_CLASS_PRIEST"] = "牧師",
	["CATEGORY_CLASS_ROGUE"] = "盜賊",
	["CATEGORY_CLASS_SHAMAN"] = "薩滿",
	["CATEGORY_CLASS_WARLOCK"] = "術士",
	["CATEGORY_CLASS_WARRIOR"] = "戰士",


	-- bag names - used to name the empty slots in the status frame
	["STATUS_NAME_SOULSHARD"] = "裂片",
	["STATUS_NAME_HERB"] = "草藥",
	["STATUS_NAME_ENCHANTING"] = "附魔",
	["STATUS_NAME_ENGINEERING"] = "工程",
	["STATUS_NAME_GEM"] = "珠寶",
	["STATUS_NAME_MINING"] = "礦石",

	["STATUS_NAME_PROJECTILE"] = "子彈",
	["STATUS_NAME_PROJECTILE_BULLET"] = "子彈",
	["STATUS_NAME_PROJECTILE_ARROW"] = "箭",
	["STATUS_NAME_KEY"] = "鑰匙",
	["STATUS_NAME_UNKNOWN"] = "未知",
	["STATUS_NAME_BAG"] = "背包",


	-- location names
	["LOCATION_ALL"] = "全部",
	["LOCATION_BAG"] = "背包",
	["LOCATION_BANK"] = "銀行",
	--["LOCATION_KEY"] = "鑰匙圈",
	--["LOCATION_VAULT"] = "公會銀行",
	["LOCATION_WEARING"] = "裝備",
	--["LOCATION_MAIL"] = "郵箱",
	--["BACKPACK"] = "背包",
	
	["STATUS_OFFLINE"] = "離線",
	["STATUS_NO_DATA"] = "無資料",
	["STATUS_FULL"] = "滿",
	["STATUS_START"] = "開始",
	["STATUS_FINISH"] = "完成",
	["STATUS_PURCHASE"] = "買",
	
	
	-- vault tooltip text
	["VAULT_TAB_NAME"] = "標籤: |cffffffff%1$s - %2$s|r", -- tab number, tab name
	["VAULT_TAB_ACCESS"] = "存取權限: |cffffffff%1$s|r",
	["VAULT_TAB_ACCESS_NONE"] = "無存取權限",
	["VAULT_TAB_REMAINING_WITHDRAWALS"] = "剩餘每日提領額度: |cffffffff%1$s|r",


	-- main menu
	["MOD_FRAME_MENU"] = "選單",

	["MOD_MENU_MAIN_SWITCH_CHARACTER"] = "切換角色",
	["MOD_MENU_MAIN_SWITCH_CHARACTER_TEXT"] = "切換顯示其他角色",
	["MOD_MENU_MAIN_SWITCH_CHARACTER_CHOOSE_NONE"] = "沒有其他角色資料",
	["MOD_MENU_MAIN_SWITCH_CHARACTER_CHOOSE_TEXT"] = "切換顯示資料為 %1$s",
	["MOD_MENU_MAIN_SWITCH_CHARACTER_ERASE"] = "清除快取資料",
	["MOD_MENU_MAIN_SWITCH_CHARACTER_ERASE_TEXT"] = "清除所有 %1$s 的快取資料",
	
	["MOD_MENU_MAIN_SWITCH_LOCATION"] = "切換位置",
	["MOD_MENU_MAIN_SWITCH_LOCATION_TEXT"] = "切換 %1$s 視窗顯示",
	
	["MOD_MENU_MAIN_SETTINGS"] = "使用全局設定",
	["MOD_MENU_MAIN_SETTINGS_TEXT"] = "切換是否使用全局設定,如此你可以分開的自定義各個視窗",
	["MOD_MENU_MAIN_SETTINGS_LOCATION_TEXT"] = "以 %1$s 的設定套用在 %2$s 視窗",

	["MOD_MENU_MAIN_WINDOW"] = "視窗",
	["MOD_MENU_MAIN_WINDOW_SCALE_TEXT"] = "設定縮放視窗的大小比例",
	["MOD_MENU_MAIN_WINDOW_PADDING"] = "間隔",
	["MOD_MENU_MAIN_WINDOW_PADDING_TEXT"] = "設定視窗邊緣至分組的間隔距離",
	["MOD_MENU_MAIN_WINDOW_WIDTH"] = "欄位數目",
	["MOD_MENU_MAIN_WINDOW_WIDTH_TEXT"] = "設定一行所能包含的物品欄位數目",
	["MOD_MENU_MAIN_WINDOW_BACKGROUND_COLOR"] = "背景顏色",
	["MOD_MENU_MAIN_WINDOW_BACKGROUND_COLOR_TEXT"] = "設定主要視窗的背景顏色",
	["MOD_MENU_MAIN_WINDOW_BORDER_SHOW_TEXT"] = "設定是否顯示主要視窗的邊框",
	["MOD_MENU_MAIN_WINDOW_BORDER_COLOR"] = "邊框顏色",
	["MOD_MENU_MAIN_WINDOW_BORDER_COLOR_TEXT"] = "設定主要視窗的邊框顏色",
	["MOD_MENU_MAIN_WINDOW_BAGHIGHLIGHT_COLOR"] = "背包標示顏色",
	["MOD_MENU_MAIN_WINDOW_BAGHIGHLIGHT_COLOR_TEXT"] = "設定標示滑鼠目前指向的背包的對應欄位顏色",
	["MOD_MENU_MAIN_WINDOW_ANCHOR_LOCK"] = "鎖定位置",
	["MOD_MENU_MAIN_WINDOW_ANCHOR_LOCK_TEXT"] = "鎖定 %1$s 框架以避免移動",
	
	["MOD_MENU_MAIN_BARS"] = "分組",
	["MOD_MENU_MAIN_BARS_PER_ROW"] = "橫向分組數目",
	["MOD_MENU_MAIN_BARS_PER_ROW_TEXT"] = "設定橫向所能包含的分組數目",
	["MOD_MENU_MAIN_BARS_PADDING"] = "間隔",
	["MOD_MENU_MAIN_BARS_DIRECTION"] = "排列方向",
	["MOD_MENU_MAIN_BARS_DIRECTION_HORIZONTAL_TEXT"] = "設定分組以水平方向擴展",
	["MOD_MENU_MAIN_BARS_DIRECTION_VERTICAL_TEXT"] = "設定分組以垂直方向擴展",
	["MOD_MENU_MAIN_BARS_COMPACT"] = "簡潔模式",
	["MOD_MENU_MAIN_BARS_COMPACT_TEXT"] = "以現有順序顯示所有非空白欄位",
	["MOD_MENU_MAIN_BARS_SHOW_EMPTY"] = "顯示空格",
	["MOD_MENU_MAIN_BARS_SHOW_EMPTY_TEXT"] = "設定是否顯示空白分組",
	["MOD_MENU_MAIN_BARS_BACKGROUND"] = "背景顏色",
	["MOD_MENU_MAIN_BARS_BACKGROUND_TEXT"] = "設定分組的背景顏色",
	["MOD_MENU_MAIN_BARS_BORDER_TEXT"] = "設定是否顯示分組邊框",
	["MOD_MENU_MAIN_BARS_BORDER_COLOUR"] = "邊框顏色",
	["MOD_MENU_MAIN_BARS_BORDER_COLOUR_TEXT"] = "設定分組的邊框顏色",
	["MOD_MENU_MAIN_BARS_NAME"] = "名稱",
	["MOD_MENU_MAIN_BARS_NAME_TEXT"] = "為此分組設定名稱",
	["MOD_MENU_MAIN_BARS_NAME_SHOW_TEXT"] = "切換顯示分組名稱",
	["MOD_MENU_MAIN_BARS_NAME_COLOUR_TEXT"] = "設定分組名稱的邊框顏色",

	["MOD_MENU_MAIN_ITEMS"] = "物品",
	["MOD_MENU_MAIN_ITEMS_PADDING"] = "間隔",
	["MOD_MENU_MAIN_ITEMS_PADDING_TEXT"] = "設定物品欄位的間隔距離",
	["MOD_MENU_MAIN_ITEMS_FADE"] = "淡化離線物品",
	["MOD_MENU_MAIN_ITEMS_FADE_TEXT"] = "設定是否淡化顯示離線物品",
	["MOD_MENU_MAIN_ITEMS_BORDER_SHOW_TEXT"] = "設定是否顯示物品邊框",
	["MOD_MENU_MAIN_ITEMS_BORDER_RARITY"] = "依品質著色邊框",
	["MOD_MENU_MAIN_ITEMS_BORDER_RARITY_TEXT"] = "設定是否依品質標示物品邊框顏色 (普通、精良、稀有...)",
	["MOD_MENU_MAIN_ITEMS_BORDER_TEXTURE_OFFSET"] = "偏移",
	["MOD_MENU_MAIN_ITEMS_BORDER_TEXTURE_OFFSET_TEXT"] = "the number pixels from the outside of the image to the inside edge of the border itself (used to realign the border to the item texture)",
	["MOD_MENU_MAIN_ITEMS_BORDER_SCALE_TEXT"] = "設定邊框材質的縮放比例",
	["MOD_MENU_MAIN_ITEMS_HIDDEN"] = "顯示隱藏物品",
	["MOD_MENU_MAIN_ITEMS_HIDDEN_TEXT"] = "設定是否顯示在隱藏分組內的物品",
	
	["MOD_MENU_MAIN_SORTING"] = "排序",
	["MOD_MENU_MAIN_SORTING_BAGSLOT"] = "依背包/欄位",
	["MOD_MENU_MAIN_SORTING_BAGSLOT_TEXT"] = "依背包/欄位編號排序物品",
	["MOD_MENU_MAIN_SORTING_USER"] = "使用者定義",
	["MOD_MENU_MAIN_SORTING_USER_TEXT"] = "設定排序規則為使用者定義",
	["MOD_MENU_MAIN_SORTING_INCLUDE_NAME"] = "物品名稱",
	["MOD_MENU_MAIN_SORTING_INCLUDE_NAME_TEXT"] = "設定排序時是否考慮物品名稱",
	["MOD_MENU_MAIN_SORTING_INCLUDE_NAME_REVERSE"] = "包含反轉名稱",
	["MOD_MENU_MAIN_SORTING_INCLUDE_NAME_REVERSE_TEXT"] = "設定排序時是否考慮反轉名稱。\n\n例如: 極效法力藥水變成法力藥水極效",
	["MOD_MENU_MAIN_SORTING_INCLUDE_QUALITY"] = "物品品質",
	["MOD_MENU_MAIN_SORTING_INCLUDE_QUALITY_TEXT"] = "設定排序時是否考慮物品品質",
	["MOD_MENU_MAIN_SORTING_INCLUDE_LOCATION"] = "裝備部位",
	["MOD_MENU_MAIN_SORTING_INCLUDE_LOCATION_TEXT"] = "設定排序時是否考慮物品裝備的部位 (如: 頭、手等)\n\n注意: 只影響可裝備的物品",
	["MOD_MENU_MAIN_SORTING_INCLUDE_ITEMTYPE"] = "物品類型",
	["MOD_MENU_MAIN_SORTING_INCLUDE_ITEMTYPE_TEXT"] = "設定排序時是否考慮物品類型及次類型",
	["MOD_MENU_MAIN_SORTING_INCLUDE_CATEGORY"] = "物品類別",
	["MOD_MENU_MAIN_SORTING_INCLUDE_CATEGORY_TEXT"] = "設定排序時是否考慮物品的類別",
	["MOD_MENU_MAIN_SORTING_INCLUDE_ITEMUSELEVEL"] = "物品使用等級",
	["MOD_MENU_MAIN_SORTING_INCLUDE_ITEMUSELEVEL_TEXT"] = "設定排序時是否考慮物品之使用等級",
	["MOD_MENU_MAIN_SORTING_INCLUDE_ITEMSTATLEVEL"] = "物品等級 (stat)",
	["MOD_MENU_MAIN_SORTING_INCLUDE_ITEMSTATLEVEL_TEXT"] = "設定排序時是否考慮物品等級 (stat)",
	["MOD_MENU_MAIN_SORTING_INCLUDE_VENDORPRICE"] = "商店價格",
	["MOD_MENU_MAIN_SORTING_INCLUDE_VENDORPRICE_TEXT"] = "設定排序時是否考慮物品的商店價格",
	["MOD_MENU_MAIN_SORTING_OPEN"] = "視窗開啟時",
	["MOD_MENU_MAIN_SORTING_OPEN_TEXT"] = "設定是否在視窗開啟時重新排序",
	["MOD_MENU_MAIN_SORTING_INSTANT"] = "即時",
	["MOD_MENU_MAIN_SORTING_INSTANT_TEXT"] = "設定是否立即排序\n\n啟用: 有改變則立即排序\n\n停用: 只有在視窗開啟或手動更新時才排序\n\n注意: 如果背包置換區是開啟的, 則會永遠使用立即模式",
	["MOD_MENU_MAIN_SORTING_ASCENDING"] = "遞增排序",
	["MOD_MENU_MAIN_SORTING_ASCENDING_TEXT"] = "切換設定排序使用遞增或是遞減排序",
	
	["MOD_MENU_MAIN_SORTING_ORDER"] = "排序依據",
	["MOD_MENU_MAIN_SORTING_MOVE_UP"] = "向上",
	["MOD_MENU_MAIN_SORTING_MOVE_UP_TEXT"] = "將 %1$s 的優先性在排序規則中向上移動",
	["MOD_MENU_MAIN_SORTING_MOVE_DOWN"] = "向下",
	["MOD_MENU_MAIN_SORTING_MOVE_DOWN_TEXT"] = "將 %1$s 的優先性在排序規則中向下一動",
	["MOD_MENU_MAIN_SORTING_NOT_INCLUDED"] = "*未使用於目前排序依據*",

	["MOD_MENU_MAIN_EMPTY"] = "空格",
	["MOD_MENU_MAIN_EMPTY_ICON"] = "使用圖示",
	["MOD_MENU_MAIN_EMPTY_ICON_TEXT"] = "切換是否使用圖示來表示空白欄位",
	["MOD_MENU_MAIN_EMPTY_BORDER"] = "邊框著色",
	["MOD_MENU_MAIN_EMPTY_BORDER_TEXT"] = "切換是否依空白欄位的背包類別來著色邊框",
	["MOD_MENU_MAIN_EMPTY_COLOUR"] = "空格著色",
	["MOD_MENU_MAIN_EMPTY_COLOUR_TEXT"] = "設定空白欄位背景顏色",
	["MOD_MENU_MAIN_EMPTY_CLUMP"] = "整合空格",
	["MOD_MENU_MAIN_EMPTY_CLUMP_TEXT"] = "設定是否將同背包的空格跟非空格湊在一起，或將不同背包的空格視為一個特殊類別",
	["MOD_MENU_MAIN_EMPTY_SHOW"] = "顯示數量",
	["MOD_MENU_MAIN_EMPTY_SHOW_TEXT"] = "切換是否在背包上顯示空格數量",
	["MOD_MENU_MAIN_EMPTY_SHOW_COLOUR"] = "顏色",
	["MOD_MENU_MAIN_EMPTY_SHOW_COLOUR_TEXT"] = "設定空格數量文字顏色",
	
	["MOD_MENU_MAIN_MONITOR"] = "監視",
	["MOD_MENU_MAIN_MONITOR_TEXT"] = "切換是否監視角色 (%2$s) 的 %1$s 資料",
	
	["MOD_MENU_MAIN_OFFLINE"] = "離線",
	["MOD_MENU_MAIN_OFFLINE_TEXT"] = "切換是否儲存角色 (%2$s) 的 %1$s 資料，如此一來你可以在使用其他角色時瀏覽 (或是離線)。",
	
	["MOD_MENU_MAIN_HIDDEN"] = "隱藏框架",
	["MOD_MENU_MAIN_HIDDEN_TITLE"] = "隱藏標題",
	["MOD_MENU_MAIN_HIDDEN_TITLE_TEXT"] = "設定是否隱藏 %1$s 標題",
	["MOD_MENU_MAIN_HIDDEN_CHANGER"] = "隱藏背包置換區",
	["MOD_MENU_MAIN_HIDDEN_CHANGER_TEXT"] = "設定是否隱藏 %1$s 背包置換區",
	["MOD_MENU_MAIN_HIDDEN_STATUS"] = "隱藏狀態",
	["MOD_MENU_MAIN_HIDDEN_STATUS_TEXT"] = "設定是否隱藏 %1$s 狀態欄 (含金錢、背包格數)",
	["MOD_MENU_MAIN_HIDDEN_BLIZZARD"] = "取代系統框架",
	["MOD_MENU_MAIN_HIDDEN_BLIZZARD_TEXT"] = "切換是否隱藏原本的暴風雪 %2$s 框架，如此一來可用 %1$s 取代。\n\n取消此選項將會使用標準暴風雪 %2$s 功能。\n\n當此選項取消，你仍舊可以設定熱鍵開啟 %1$s %2$s。",
	
	["MOD_MENU_MAIN_AUTO"] = "自動開關",
	["MOD_MENU_MAIN_AUTO_OPEN"] = "自動開啟",
	["MOD_MENU_MAIN_AUTO_CLOSE"] = "自動關閉",
	
	["MOD_MENU_MAIN_NEWITEM"] = "新物品",
	["MOD_MENU_MAIN_NEWITEM_SHOW"] = "顯示指示器",
	["MOD_MENU_MAIN_NEWITEM_SHOW_TEXT"] = "顯示新物品文字",
	["MOD_MENU_MAIN_NEWITEM_COLOUR"] = "文字顏色",
	["MOD_MENU_MAIN_NEWITEM_COLOUR_TEXT"] = "設定新物品文字顏色",
	["MOD_MENU_MAIN_NEWITEM_RESET"] = "重置",
	["MOD_MENU_MAIN_NEWITEM_RESET_TEXT"] = "清除此角色之所有新物品記錄",
	
	["MOD_MENU_MAIN_ACTIONS"] = "功能",
	
	["MOD_MENU_MAIN_AUTO_BANK_OPEN_TEXT"] = "設定是否要在開啟銀行時自動開啟 %1$s 視窗",
	["MOD_MENU_MAIN_AUTO_BANK_CLOSE_TEXT"] = "設定是否要在關閉銀行時自動關閉 %1$s 視窗",
	["MOD_MENU_MAIN_AUTO_VAULT_OPEN_TEXT"] = "設定是否要在開啟公會銀行時自動開啟 %1$s 視窗",
	["MOD_MENU_MAIN_AUTO_VAULT_CLOSE_TEXT"] = "設定是否要在關閉公會銀行時自動關閉 %1$s 視窗",
	--["MOD_MENU_MAIN_AUTO_MAILBOX"] = "郵箱",
	["MOD_MENU_MAIN_AUTO_MAILBOX_OPEN_TEXT"] = "設定是否要在開啟郵箱時自動開啟 %1$s 視窗",
	["MOD_MENU_MAIN_AUTO_MAILBOX_CLOSE_TEXT"] = "設定是否要在關閉郵箱時自動關閉 %1$s 視窗",
	["MOD_MENU_MAIN_AUTO_MERCHANT"] = "商人",
	["MOD_MENU_MAIN_AUTO_MERCHANT_OPEN_TEXT"] = "設定是否要在和商人對話時自動開啟 %1$s 視窗",
	["MOD_MENU_MAIN_AUTO_MERCHANT_CLOSE_TEXT"] = "設定是否要在離開商人時自動關閉 %1$s 視窗",
	["MOD_MENU_MAIN_AUTO_TRADE"] = "交易",
	["MOD_MENU_MAIN_AUTO_TRADE_OPEN_TEXT"] = "設定是否要在和別人交易時自動開啟 %1$s 視窗",
	["MOD_MENU_MAIN_AUTO_TRADE_CLOSE_TEXT"] = "設定是否要在結束交易時自動關閉 %1$s 視窗",
	["MOD_MENU_MAIN_AUTO_AUCTION"] = "拍賣場",
	["MOD_MENU_MAIN_AUTO_AUCTION_OPEN_TEXT"] = "設定是否要在進入拍賣場時自動開啟 %1$s 視窗",
	["MOD_MENU_MAIN_AUTO_AUCTION_CLOSE_TEXT"] = "設定是否要在離開拍賣場時自動關閉 %1$s 視窗",
	["MOD_MENU_MAIN_AUTO_COMBAT"] = "戰鬥",
	["MOD_MENU_MAIN_AUTO_COMBAT_CLOSE_TEXT"] = "設定是否要在進入戰鬥時自動關閉 %1$s 視窗",

	["MOD_MENU_MAIN_TOOLTIP"] = "工具提示",
	["MOD_MENU_MAIN_TOOLTIP_ENABLE"] = "開啟",
	["MOD_MENU_MAIN_TOOLTIP_ENABLE_TEXT"] = "設定是否顯示工具提示",
	["MOD_MENU_MAIN_TOOLTIP_ITEMCOUNT_ADD"] = "顯示物品數量",
	["MOD_MENU_MAIN_TOOLTIP_ITEMCOUNT_ADD_TEXT"] = "設定是否在工具提示上顯示物品數量",
	["MOD_MENU_MAIN_TOOLTIP_ITEMCOUNT_COLOUR"] = "文字顏色",
	["MOD_MENU_MAIN_TOOLTIP_ITEMCOUNT_COLOUR_TEXT"] = "設定物品數量的文字顏色",
	["MOD_MENU_MAIN_TOOLTIP_VENDOR_ADD"] = "顯示商店價格",
	["MOD_MENU_MAIN_TOOLTIP_VENDOR_ADD_TEXT"] = "設定是否在工具提示上顯示物品的商店價格",
	["MOD_MENU_MAIN_TOOLTIP_VENDOR_COLOUR"] = "文字顏色",
	["MOD_MENU_MAIN_TOOLTIP_VENDOR_COLOUR_TEXT"] = "設定商店價格的文字顏色",

	["MOD_MENU_MAIN_FONT"] = "字型",
	["MOD_MENU_MAIN_FONT_TEXT"] = "設定為 %s 的字型",

	["MOD_MENU_MAIN_LOCATION_STATUS"] = "狀態",
	["MOD_MENU_MAIN_LOCATION_STATUS_TEXT"] = "改變 %2$s 的 %1$s 狀態設定", -- location name, chacracter name

	["MOD_MENU_MAIN_REFRESH"] = "更新",
	["MOD_MENU_MAIN_REFRESH_TEXT"] = "更新及排序視窗內容",
	
	["MOD_MENU_MAIN_RELOAD"] = "重載",
	["MOD_MENU_MAIN_RELOAD_TEXT"] = "重載視窗，當你使用換裝軟體時使用",

	["MOD_MENU_MAIN_EDITMODE"] = "開啟編輯模式",
	["MOD_MENU_MAIN_EDITMODE_TEXT"] = "切換編輯模式，讓你指定分組及調整樣式",

	["MOD_MENU_MAIN_BAGCHANGE"] = "開啟背包置換",
	["MOD_MENU_MAIN_BAGCHANGE_TEXT"] = "切換顯示背包置換區，以供你替換背包",

	["MOD_MENU_MAIN_COMPRESS"] = "壓縮並重新堆疊",
	["MOD_MENU_MAIN_COMPRESS_TEXT"] = "重新堆疊物品以減少物品佔用的欄位，特殊背包的欄位將會優先被使用",

	["MOD_MENU_MAIN_RULES"] = "規則",
	--["MOD_MENU_MAIN_RULES_TEXT"] = "開啟管理規則的對話框",

	["MOD_MENU_RULE_SHOWDISABLED"] = "顯示停用規則",
	["MOD_MENU_RULE_SHOWDISABLED_TEXT"] = "顯示已經停用的規則",

	["MOD_MENU_MAIN_SEARCH"] = "搜尋",
	--["MOD_MENU_MAIN_SEARCH_TEXT"] = "開啟搜尋視窗",

	
	-- item menu
	["MOD_MENU_ITEM_INFORMATION_TITLE"] = "物品資訊",
	["MOD_MENU_ITEM_ITEM"] = "物品",
	["MOD_MENU_ITEM_CURRENT_ASSIGNMENT"] = "目前指定",
	["MOD_MENU_ITEM_DEFAULT_ASSIGNMENT"] = "預設指定",
	["MOD_MENU_ITEM_MOVE"] = "移動 %1$s 至分組",
	["MOD_MENU_ITEM_RULE_NEW"] = "新增一個規則",
	["MOD_MENU_ITEM_RULE_ADD"] = "新增至規則",
	["MOD_MENU_ITEM_DEBUG"] = "除錯訊息",
	["MOD_MENU_ITEM_DEBUG_BAG"] = "背包",
	["MOD_MENU_ITEM_DEBUG_SLOT"] = "空格",
	["MOD_MENU_ITEM_DEBUG_BAG_TYPE"] = "背包類型",
	["MOD_MENU_ITEM_DEBUG_AI_ID"] = "AI ID",
	["MOD_MENU_ITEM_DEBUG_AI_CATEGORY"] = "AI 類別",
	["MOD_MENU_ITEM_DEBUG_NAME"] = "名稱",
	["MOD_MENU_ITEM_DEBUG_QUALITY"] = "品質",
	["MOD_MENU_ITEM_DEBUG_LVL_ITEM"] = "物品等級 (Stat)",
	["MOD_MENU_ITEM_DEBUG_LVL_USE"] = "使用等級",
	["MOD_MENU_ITEM_DEBUG_TYPE"] = "類型",
	["MOD_MENU_ITEM_DEBUG_SUBTYPE"] = "次要類型",
	["MOD_MENU_ITEM_DEBUG_LOCATION"] = "位置",
	["MOD_MENU_ITEM_DEBUG_ID"] = "暴風雪 ID",
	["MOD_MENU_ITEM_DEBUG_STACK"] = "堆疊尺寸",
	["MOD_MENU_ITEM_DEBUG_TEXTURE"] = "材質",
	["MOD_MENU_ITEM_DEBUG_FAMILY"] = "家族",
	["MOD_MENU_ITEM_DEBUG_PT"] = "PT 類別",
	["MOD_MENU_ITEM_DEBUG_PT_TEXT"] = "顯示此物品的 PT 類別",
	["MOD_MENU_ITEM_DEBUG_PT_NONE"] = "此物品不在任何 PT 類別內",
	["MOD_MENU_ITEM_DEBUG_PT_TITLE"] = "此物品的 PT 類別",
	
	
	-- bar menu
	["MOD_MENU_BAR_INFORMATION_TITLE"] = "分組 %1$s 選項",
	["MOD_MENU_BAR_CATEGORY"] = "類別",
	["MOD_MENU_BAR_CATEGORY_TEXT"] = "指定 %1$s 到此分組",
	["MOD_MENU_BAR_CATEGORY_CURRENT"] = "目前使用",
	["MOD_MENU_BAR_CATEGORY_ASSIGN"] = "可使用類別",
	["MOD_MENU_BAR_CATEGORY_REMOVE"] = "移除",
	["MOD_MENU_BAR_CATEGORY_REMOVE_TEXT"] = "自分組 %2$s 中移除 %1$s，並將它放回預設分組", -- 1 is the category name, 2 is the bar number
	["MOD_MENU_BAR_CATEGORY_HIDDEN"] = "隱藏",
	["MOD_MENU_BAR_CATEGORY_HIDDEN_TEXT"] = "設定此分組是否為隱藏模式\n\n在隱藏分組內的物品，一般情況下將不會顯示",
	["MOD_MENU_BAR_CLEAR"] = "清除此分組",
	["MOD_MENU_BAR_CLEAR_TEXT"] = "移除所有除了預設分類以外指定到此的類別",
	["MOD_MENU_BAR_INSERT"] = "插入空白分組",
	["MOD_MENU_BAR_INSERT_TEXT"] = "插入空白分組，將其他分組往後移",
	["MOD_MENU_BAR_REMOVE"] = "移除此分組",
	["MOD_MENU_BAR_REMOVE_TEXT"] = "移除此分組，此分組內的類別將會被放回預設分組",
	["MOD_MENU_BAR_MOVE_UP"] = "將此分組上移",
	["MOD_MENU_BAR_MOVE_UP_TEXT"] = "swaps all categories assigned to this bar with the one above",
	["MOD_MENU_BAR_MOVE_DOWN"] = "將此分組下移",
	["MOD_MENU_BAR_MOVE_DOWN_TEXT"] = "swaps all categories assigned to this bar with the one below",
	
	
	-- bag menu
	["MOD_MENU_BAG_TITLE"] = "背包選項",
	["MOD_MENU_BAG_SHOW"] = "顯示",
	["MOD_MENU_BAG_SHOW_TEXT"] = "顯示背包的內容",
	["MOD_MENU_BAG_ISOLATE"] = "獨立",
	["MOD_MENU_BAG_ISOLATE_TEXT"] = "僅顯示此背包的內容",
	["MOD_MENU_BAG_SHOWALL"] = "顯示全部",
	["MOD_MENU_BAG_SHOWALL_TEXT"] = "顯示所有背包的內容",
	
	
	-- generic menu text
	["MOD_MENU_GENERIC_BOTTOMLEFT"] = "左下角",
	["MOD_MENU_GENERIC_BOTTOMRIGHT"] = "右下角",
	["MOD_MENU_GENERIC_TOPLEFT"] = "左上角",
	["MOD_MENU_GENERIC_TOPRIGHT"] = "右上角",
	["MOD_MENU_GENERIC_HORIZONTAL"] = "水平",
	["MOD_MENU_GENERIC_VERTICAL"] = "垂直",
	["MOD_MENU_GENERIC_CLOSE_MENU"] = "關閉選單",
	["MOD_MENU_GENERIC_ANCHOR"] = "錨點",
	["MOD_MENU_GENERIC_ANCHOR_TEXT1"] = "設定錨點",
	["MOD_MENU_GENERIC_ANCHOR_TEXT2"] = "固定 %1$s 在 %2$s",
	["MOD_MENU_GENERIC_BORDER"] = "邊框",
	["MOD_MENU_GENERIC_BORDER_TEXT"] = "邊框選項",
	["MOD_MENU_GENERIC_SHOW"] = "顯示",
	["MOD_MENU_GENERIC_FILE"] = "檔案",
	["MOD_MENU_GENERIC_HEIGHT"] = "高度",
	["MOD_MENU_GENERIC_SCALE"] = "縮放",
	["MOD_MENU_GENERIC_BORDER_TEXTURE"] = "材質",
	["MOD_MENU_GENERIC_BORDER_TEXTURE_TEXT"] = "邊框材質選項",
	["MOD_MENU_GENERIC_BORDER_TEXTURE_FILE_TEXT"] = "設定邊框材質 (改變此設定將會把縮放比例重置為 100%)",
	["MOD_MENU_GENERIC_BORDER_TEXTURE_HEIGHT_TEXT"] = "材質的高度 (以像素為單位)",
	["MOD_MENU_GENERIC_FONT"] = "字型",
	["MOD_MENU_GENERIC_COLOUR"] = "顏色",
	
	
	-- rules frame
	["MOD_FRAME_RULE_RULE"] = "規則",
	["MOD_FRAME_RULE_ENABLED"] = "啟用",
	["MOD_FRAME_RULE_HIDDEN"] = "隱藏",
	["MOD_FRAME_RULE_ORDER"] = "順序",
	["MOD_FRAME_RULE_DESCRIPTION"] = "描述",
	["MOD_FRAME_RULE_FORMULA"] = "公式",
	["MOD_FRAME_RULE_SEARCH"] = "搜尋",
	["MOD_FRAME_RULE_VIEW"] = "查看",
	["MOD_FRAME_RULE_ADD"] = "新增",
	["MOD_FRAME_RULE_EDIT"] = "編輯",
	["MOD_FRAME_RULE_REMOVE"] = "移除",
	["MOD_FRAME_RULE_OK"] = "確定",
	["MOD_FRAME_RULE_CANCEL"] = "取消",

	["MOD_FRAME_RULE_LIST_ENABLED"] = "使用",
	["MOD_FRAME_RULE_LIST_DAMAGED"] = "損壞",
	["MOD_FRAME_RULE_LIST_ID"] = "規則",
	["MOD_FRAME_RULE_LIST_ORDER"] = "順序",
	["MOD_FRAME_RULE_LIST_DESCRIPTION"] = "描述",

	["RULE_DAMAGED"] = "規則「%s」已標示為損壞，維修前不會再被使用",
	["RULE_FAILED_NIL_KEY"] = "失敗: 缺少鍵值",
	["RULE_FAILED_NIL_DATA"] = "失敗: 缺少資料",
	["RULE_FAILED_NIL_DESCRIPTION"] = "失敗: 缺少描述",
	["RULE_FAILED_NIL_FORMULA"] = "失敗: 缺少公式",

	
	-- new item indicators
	["NEW_ITEM_NEW"] = "NEW",
	["NEW_ITEM_INCREASE"] = "+++",
	["NEW_ITEM_DECREASE"] = "- - -",
	
	
	-- debug
	["MOD_MENU_MAIN_DEBUG"] = "除錯模式",
	["MOD_MENU_MAIN_DEBUG_TEXT"] = "顯示除錯訊息",

	
	-- slash commands
	["SLASH_UI"] = "介面",
	["SLASH_UI_TEXT"] = "介面選項",
	["SLASH_UI_RESET"] = "重設",
	["SLASH_UI_RESET_TEXT"] = "將視窗移至螢幕中央",
	["SLASH_UI_RESET_COMPLETE_TEXT"] = "所有 UI 視窗重置到螢幕中央",
	["SLASH_DB"] = "資料庫",
	["SLASH_DB_TEXT"] = "資料庫選項",
	["SLASH_DB_RESET"] = "重設",
	["SLASH_DB_RESET_TEXT"] = "重設所有選項為預設值",
	["SLASH_DB_RESET_CONFIRM"] = "確認",
	["SLASH_DB_RESET_CONFIRM_TEXT"] = "確認重設資料庫",
	["SLASH_DB_RESET_COMPLETE_TEXT"] = "設定檔已被重設 所有設定已重設為預設值",
	["SLASH_CACHE"] = "暫存",
	["SLASH_CACHE_TEXT"] = "暫存選項",
	["SLASH_CACHE_ERASE"] = "清除",
	["SLASH_CACHE_ERASE_TEXT"] = "清除所有暫存資料",
	["SLASH_CACHE_ERASE_CONFIRM"] = "確認",
	["SLASH_CACHE_ERASE_CONFIRM_TEXT"] = "確認清除暫存資料",
	["SLASH_CACHE_ERASE_COMPLETE_TEXT"] = "所有暫存資料已被刪除",
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
	["MOD_ENABLED"] = "v%1$s已啟用。輸入 %2$s 或 %3$s 列出更多指令。",
	["MOD_DISABLED"] = "v%1$s 已取消",
	["PROFILE_UPGRADE"] = "升級設定檔「%1$s」到%2$.2f",
	["RESTACK_FAILED_OFFLINE"] = "無法在離線模式重新堆疊「%s」",
	["RESTACK_FAILED_RUNNING"] = "重新堆疊「%s」已在進行中，請稍候",
	["RESTACK_FAILED_LOCATION"] = "%s 不支援重新堆疊",
	["MISC_ALERT"] = "Alert!",
	["MISC_BUGFIX_SHORT"] = "Bug fix complete.",
	["MISC_BUGFIX_LONG"] = "The FrameLevel for the %1$s window is currently at %2$s and has been reset to %3$s to ensure that it remains functional.  Sorry for the lag spike caused by the fix.",
	

	-- item count tooltip
	["TOOLTIP_COUNT_ME"] = ">", -- note: theres no space between this and your characters name so add a trailing space if you need one (depending on what you have here)
	["TOOLTIP_VENDOR"] = "商店",
	
} end )
