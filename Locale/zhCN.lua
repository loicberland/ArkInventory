 local L = AceLibrary( "AceLocale-2.2" ):new( "ArkInventory" )

-- Translated by: xuxianhe@gmail.com
-- Email: xuxianhe@gmail.com
-- WebSite: http://blog.cwowaddon.com/xuxianhe






L:RegisterTranslations( "zhCN", function() return {

	-- wow skill headers
	["WOW_SKILL_HEADER_PRIMARY"] = "专业技能",
	["WOW_SKILL_HEADER_SECONDARY"] = "第二专业",
	
	
	-- wow skill names
	["WOW_SKILL_ALCHEMY"] = "炼金术",
	["WOW_SKILL_BLACKSMITHING"] = "锻造",
	["WOW_SKILL_COOKING"] = "烹饪",
	["WOW_SKILL_ENCHANTING"] = "附魔",
	["WOW_SKILL_ENGINEERING"] = "工程学",
	["WOW_SKILL_FIRST_AID"] = "急救",
	["WOW_SKILL_FISHING"] = "钓鱼",
	["WOW_SKILL_HERBALISM"] = "草药学",
	["WOW_SKILL_JEWELCRAFTING"] = "珠宝加工",
	["WOW_SKILL_LEATHERWORKING"] = "制皮",
	["WOW_SKILL_MINING"] = "采矿",
	["WOW_SKILL_SKINNING"] = "剥皮",
	["WOW_SKILL_TAILORING"] = "裁缝",
	["WOW_SKILL_RIDING"] = "骑乘", 

	
	-- wow class names
	["WOW_CLASS_DRUID"] = "德鲁伊",
	["WOW_CLASS_HUNTER"] = "猎人",
	["WOW_CLASS_MAGE"] = "法师",
	["WOW_CLASS_PALADIN"] = "圣骑士",
	["WOW_CLASS_PRIEST"] = "牧师",
	["WOW_CLASS_ROGUE"] = "潜行者",
	["WOW_CLASS_SHAMAN"] = "萨满",
	["WOW_CLASS_WARLOCK"] = "术士",
	["WOW_CLASS_WARRIOR"] = "战士", 

	
	-- wow item types
	["WOW_ITEM_TYPE_ARMOR"] = "护甲",
	["WOW_ITEM_TYPE_CONSUMABLE"] = "消耗品",
	["WOW_ITEM_TYPE_CONTAINER"] = "容器",
	["WOW_ITEM_TYPE_GEM"] = "宝石",
	["WOW_ITEM_TYPE_KEY"] = "钥匙", 
	["WOW_ITEM_TYPE_MISCELLANEOUS"] = "其他", 
	["WOW_ITEM_TYPE_REAGENT"] = "材料",
	["WOW_ITEM_TYPE_RECIPE"] = "配方",
	["WOW_ITEM_TYPE_PROJECTILE"] = "弹药",
	["WOW_ITEM_TYPE_QUEST"] = "任务",
	["WOW_ITEM_TYPE_QUIVER"] = "箭袋",
	["WOW_ITEM_TYPE_TRADE_GOODS"] = "商品",
	["WOW_ITEM_TYPE_WEAPON"] = "武器",
	
	["WOW_ITEM_TYPE_CONTAINER_BAG"] = "容器",
	["WOW_ITEM_TYPE_CONTAINER_SOULSHARD"] = "灵魂袋",
	["WOW_ITEM_TYPE_CONTAINER_HERB"] = "草药袋",
	["WOW_ITEM_TYPE_CONTAINER_ENCHANTING"] = "附魔材料袋",
	["WOW_ITEM_TYPE_CONTAINER_ENGINEERING"] = "工程学材料袋",
	["WOW_ITEM_TYPE_CONTAINER_GEM"] = "宝石袋",
	["WOW_ITEM_TYPE_CONTAINER_MINING"] = "矿石袋",
	["WOW_ITEM_TYPE_CONTAINER_LEATHERWORKING"] = "24格制皮",
	["WOW_ITEM_TYPE_PROJECTILE_BULLET"] = "子弹",
	["WOW_ITEM_TYPE_PROJECTILE_ARROW"] = "箭",
	["WOW_ITEM_TYPE_QUIVER_BULLET"] = "弹药袋",
	["WOW_ITEM_TYPE_QUIVER_ARROW"] = "箭袋",
	["WOW_ITEM_TYPE_TRADE_GOODS_DEVICES"] = "装置",
	["WOW_ITEM_TYPE_TRADE_GOODS_EXPLOSIVES"] = "爆炸物",
	["WOW_ITEM_TYPE_TRADE_GOODS_PARTS"] = "零件",
	
	
	-- wow tooltip text
	["WOW_TOOLTIP_POTION"] = "药水",
	["WOW_TOOLTIP_ELIXIR"] = "药剂",
	
	["WOW_TOOLTIP_FOOD"] = "进食时必须保持坐姿",
	["WOW_TOOLTIP_DRINK"] = "喝水时必须保持坐姿",
	["WOW_TOOLTIP_PET"] = "右键点击以召唤或解散你的",
	["WOW_TOOLTIP_POTION_HEAL"] = "恢复%d+到%d+点生命值",
	["WOW_TOOLTIP_POTION_MANA"] = "恢复%d+到%d+点法力值",

	
	-- category names
	["CATEGORY_SYSTEM"] = "系统",
	["CATEGORY_SKILL"] = "专业",
	["CATEGORY_CLASS"] = "职业",
	["CATEGORY_OTHER"] = "其他",
	["CATEGORY_RULE"] = "规则",
	
	
	-- basic (system) categories
	["CATEGORY_CONSUMABLE"] = "消耗品",
	["CATEGORY_CONTAINER"] = "容器",
	["CATEGORY_KEY"] = "钥匙",
	["CATEGORY_MISCELLANEOUS"] = "其他",
	["CATEGORY_QUEST"] = "任务",
	["CATEGORY_REAGENT"] = "材料",
	["CATEGORY_RECIPE"] = "配方",
	["CATEGORY_PROJECTILE"] = "弹药",
	["CATEGORY_PROJECTILE_BULLET"] = "弹药 (子弹)",
	["CATEGORY_PROJECTILE_ARROW"] = "弹药 (箭)",
	["CATEGORY_TRADE_GOODS"] = "商品",
	["CATEGORY_TRADE_GOODS_DEVICES"] = "装置",
	["CATEGORY_TRADE_GOODS_EXPLOSIVES"] = "爆炸物",
	["CATEGORY_TRADE_GOODS_PARTS"] = "零件",
	["CATEGORY_REPUTATION"] = "声望物品",
	
	["CATEGORY_DEFAULT"] = "预设",
	["CATEGORY_TRASH"] = "垃圾",
	["CATEGORY_SOULSHARD"] = "灵魂碎片",
	["CATEGORY_SOULBOUND"] = "已绑定",
	["CATEGORY_EQUIPMENT_SOULBOUND"] = "装备",
	["CATEGORY_EQUIPMENT"] = "装备 (未绑定)",
	["CATEGORY_MOUNT"] = "坐骑",
	["CATEGORY_PET_NONCOMBAT"] = "小宠物 (观赏用)",
	
	["CATEGORY_FOOD"] = "食物",
	["CATEGORY_FOOD_PET"] = "食物 (宠物)",
	["CATEGORY_DRINK"] = "饮料",
	["CATEGORY_POTION_MANA"] = "法力 (药水/宝石)",
	["CATEGORY_POTION_HEAL"] = "治疗 (药水/石)",
	["CATEGORY_CORE_MATS"] = "原始材料",
	["CATEGORY_POTION"] = "药水",
 
	["CATEGORY_UNKNOWN"] = "未知",
	
	
	-- empty categories
	["CATEGORY_EMPTY"] = "空格", -- generic empty, also used for category menu
	["CATEGORY_EMPTY_KEY"] = "空格 (钥匙链)",
	["CATEGORY_EMPTY_PROJECTILE"] = "空格 (弹药)",
	["CATEGORY_EMPTY_PROJECTILE_BULLET"] = "空格 (弹药 - 子弹)",
	["CATEGORY_EMPTY_PROJECTILE_ARROW"] = "空格 (弹药 - 箭)",
	["CATEGORY_EMPTY_SOULSHARD"] = "空格 (灵魂碎片)",
	["CATEGORY_EMPTY_HERB"] = "空格 (草药)",
	["CATEGORY_EMPTY_ENCHANTING"] = "空格 (附魔)",
	["CATEGORY_EMPTY_ENGINEERING"] = "空格 (工程)",
	["CATEGORY_EMPTY_GEM"] = "空格 (宝石)",
	["CATEGORY_EMPTY_MINING"] = "空格 (矿石)",
	["CATEGORY_EMPTY_LEATHERWORKING"] = "空格 (制皮)",
	["CATEGORY_EMPTY_BAG"] = "空格 (背包)",
	["CATEGORY_EMPTY_UNKNOWN"] = "空格 (未知)",

	
	-- skill categories
	["CATEGORY_SKILL_ALCHEMY"] = "炼金术：",
	["CATEGORY_SKILL_BLACKSMITHING"] = "锻造：",
	["CATEGORY_SKILL_COOKING"] = "烹饪：",
	["CATEGORY_SKILL_ENCHANTING"] = "附魔：",
	["CATEGORY_SKILL_ENGINEERING"] = "工程学：",
	["CATEGORY_SKILL_FIRST_AID"] = "急救：",
	["CATEGORY_SKILL_FISHING"] = "钓鱼：",
	["CATEGORY_SKILL_HERBALISM"] = "草药学：",
	["CATEGORY_SKILL_JEWELCRAFTING"] = "珠宝加工：",
	["CATEGORY_SKILL_LEATHERWORKING"] = "制皮：",
	["CATEGORY_SKILL_MINING"] = "采矿：",
	["CATEGORY_SKILL_SKINNING"] = "剥皮：",
	["CATEGORY_SKILL_TAILORING"] = "裁缝：",
  
  
	-- class categories
	["CATEGORY_CLASS_DRUID"] = "德鲁伊",
	["CATEGORY_CLASS_HUNTER"] = "猎人",
	["CATEGORY_CLASS_MAGE"] = "法师",
	["CATEGORY_CLASS_PALADIN"] = "圣骑士",
	["CATEGORY_CLASS_PRIEST"] = "牧师",
	["CATEGORY_CLASS_ROGUE"] = "潜行者",
	["CATEGORY_CLASS_SHAMAN"] = "萨满",
	["CATEGORY_CLASS_WARLOCK"] = "术士",
	["CATEGORY_CLASS_WARRIOR"] = "战士",

	
	-- bag names - used to name the empty slots in the status frame
	["STATUS_NAME_SOULSHARD"] = "碎片",
	["STATUS_NAME_HERB"] = "草药",
	["STATUS_NAME_ENCHANTING"] = "附魔",
	["STATUS_NAME_ENGINEERING"] = "工程",
	["STATUS_NAME_GEM"] = "珠宝",
	["STATUS_NAME_MINING"] = "矿石",
	["STATUS_NAME_LEATHERWORKING"] = "制皮",
	["STATUS_NAME_PROJECTILE"] = "子弹",
	["STATUS_NAME_PROJECTILE_BULLET"] = "子弹",
	["STATUS_NAME_PROJECTILE_ARROW"] = "箭",
	["STATUS_NAME_KEY"] = "钥匙",
	["STATUS_NAME_UNKNOWN"] = "未知",
	["STATUS_NAME_BAG"] = "背包",

	
	-- location names
	["LOCATION_ALL"] = "全部",
	["LOCATION_BAG"] = "背包",
	["LOCATION_BANK"] = "银行",
	--["LOCATION_KEY"] = "钥匙圈",
	--["LOCATION_VAULT"] = "公会银行",
	["LOCATION_WEARING"] = "装备",
	--["LOCATION_MAIL"] = "邮箱",
	--["BACKPACK"] = "背包",	
	
	["STATUS_OFFLINE"] = "脱机",
	["STATUS_NO_DATA"] = "无资料",
	["STATUS_FULL"] = "满",
	["STATUS_START"] = "开始",
	["STATUS_FINISH"] = "完成",
	["STATUS_PURCHASE"] = "买",
	
	
	-- vault tooltip text
	
	
	
	
	
	
	-- main menu
	["MOD_FRAME_MENU"] = "选单",
	
	["MOD_MENU_MAIN_SWITCH_CHARACTER"] = "切换角色",
	["MOD_MENU_MAIN_SWITCH_CHARACTER_TEXT"] = "切换显示其他角色",
	["MOD_MENU_MAIN_SWITCH_CHARACTER_CHOOSE_NONE"] = "没有其他角色数据",
	["MOD_MENU_MAIN_SWITCH_CHARACTER_CHOOSE_TEXT"] = "切换显示数据为 %1$s",
	["MOD_MENU_MAIN_SWITCH_CHARACTER_ERASE"] = "清除快照资料",
	["MOD_MENU_MAIN_SWITCH_CHARACTER_ERASE_TEXT"] = "清除所有 %1$s 的快照数据",
	
	["MOD_MENU_MAIN_SWITCH_LOCATION"] = "功能切换菜单",
	["MOD_MENU_MAIN_SWITCH_LOCATION_TEXT"] = "切换到 %1$s 窗口",
	
	["MOD_MENU_MAIN_SETTINGS"] = "使用设置",
	["MOD_MENU_MAIN_SETTINGS_TEXT"] = "如果需要的话，你可以对每个窗口单独定制",
	["MOD_MENU_MAIN_SETTINGS_LOCATION_TEXT"] = "在此窗口应用 %1$s 的设置",
	
	["MOD_MENU_MAIN_WINDOW"] = "窗口",
	["MOD_MENU_MAIN_WINDOW_SCALE_TEXT"] = "设定缩放窗口的大小比例",
	["MOD_MENU_MAIN_WINDOW_PADDING"] = "间隔",
	["MOD_MENU_MAIN_WINDOW_PADDING_TEXT"] = "设定窗口边缘至分组的间隔距离",
	["MOD_MENU_MAIN_WINDOW_WIDTH"] = "字段数目",
	["MOD_MENU_MAIN_WINDOW_WIDTH_TEXT"] = "设定一行所能包含的物品字段数目",
	["MOD_MENU_MAIN_WINDOW_BACKGROUND_COLOR"] = "背景颜色",
	["MOD_MENU_MAIN_WINDOW_BACKGROUND_COLOR_TEXT"] = "设定主要窗口的背景颜色",
	["MOD_MENU_MAIN_WINDOW_BORDER_SHOW_TEXT"] = "设定主窗口边框是否显示",
	["MOD_MENU_MAIN_WINDOW_BORDER_COLOR"] = "边框颜色",
	["MOD_MENU_MAIN_WINDOW_BORDER_COLOR_TEXT"] = "设定主要窗口的边框颜色",
	["MOD_MENU_MAIN_WINDOW_BAGHIGHLIGHT_COLOR"] = "背包标示颜色",
	["MOD_MENU_MAIN_WINDOW_BAGHIGHLIGHT_COLOR_TEXT"] = "设定标示鼠标目前指向的背包的对应字段颜色",
	["MOD_MENU_MAIN_WINDOW_ANCHOR_LOCK"] = "锁定位置",
	["MOD_MENU_MAIN_WINDOW_ANCHOR_LOCK_TEXT"] = "锁定 %1$s 窗口到当前移动的位置",
	
	["MOD_MENU_MAIN_BARS"] = "分组",
	["MOD_MENU_MAIN_BARS_PER_ROW"] = "横向分组数目",
	["MOD_MENU_MAIN_BARS_PER_ROW_TEXT"] = "设定横向所能包含的分组数目",
	["MOD_MENU_MAIN_BARS_PADDING"] = "间隔",
	["MOD_MENU_MAIN_BARS_DIRECTION"] = "排列方向",
	["MOD_MENU_MAIN_BARS_DIRECTION_HORIZONTAL_TEXT"] = "设定分组以水平方向扩展",
	["MOD_MENU_MAIN_BARS_DIRECTION_VERTICAL_TEXT"] = "设定分组以垂直方向扩展",
	["MOD_MENU_MAIN_BARS_COMPACT"] = "简洁模式",
	["MOD_MENU_MAIN_BARS_COMPACT_TEXT"] = "以现有顺序显示所有非空白字段",
	["MOD_MENU_MAIN_BARS_SHOW_EMPTY"] = "显示空格",
	["MOD_MENU_MAIN_BARS_SHOW_EMPTY_TEXT"] = "设定是否显示空白分组",
	["MOD_MENU_MAIN_BARS_BACKGROUND"] = "背景颜色",
	["MOD_MENU_MAIN_BARS_BACKGROUND_TEXT"] = "设定分组的背景颜色",
	["MOD_MENU_MAIN_BARS_BORDER_TEXT"] = "设定是否显示分组边框",
	["MOD_MENU_MAIN_BARS_BORDER_COLOUR"] = "边框颜色",
	["MOD_MENU_MAIN_BARS_BORDER_COLOUR_TEXT"] = "设定分组的边框颜色",
	["MOD_MENU_MAIN_BARS_NAME"] = "名称",
	["MOD_MENU_MAIN_BARS_NAME_TEXT"] = "分组名称设置",
	["MOD_MENU_MAIN_BARS_NAME_SHOW_TEXT"] = "是否显示分组名称",
	["MOD_MENU_MAIN_BARS_NAME_COLOUR_TEXT"] = "分组外框颜色设置",
	
	["MOD_MENU_MAIN_ITEMS"] = "物品",
	["MOD_MENU_MAIN_ITEMS_PADDING"] = "间隔",
	["MOD_MENU_MAIN_ITEMS_PADDING_TEXT"] = "设定物品字段的间隔距离",
	["MOD_MENU_MAIN_ITEMS_FADE"] = "淡化脱机物品",
	["MOD_MENU_MAIN_ITEMS_FADE_TEXT"] = "设定是否淡化显示脱机物品",
	["MOD_MENU_MAIN_ITEMS_BORDER_SHOW_TEXT"] = "设置物品边框是否显示",
	["MOD_MENU_MAIN_ITEMS_BORDER_RARITY"] = "稀有物品边框着色",
	["MOD_MENU_MAIN_ITEMS_BORDER_RARITY_TEXT"] = "物品边框是否按照稀有度进行着色",
	["MOD_MENU_MAIN_ITEMS_BORDER_TEXTURE_OFFSET"] = "附加设置",
	["MOD_MENU_MAIN_ITEMS_BORDER_TEXTURE_OFFSET_TEXT"] = "设置物品边框平滑度采用的像素数量 (用于与物品材质融合)",
	["MOD_MENU_MAIN_ITEMS_BORDER_SCALE_TEXT"] = "设置边框材质缩放",
	["MOD_MENU_MAIN_ITEMS_HIDDEN"] = "显示隐藏物品",
	["MOD_MENU_MAIN_ITEMS_HIDDEN_TEXT"] = "设定是否显示在隐藏分组内的物品",
	
	["MOD_MENU_MAIN_SORTING"] = "排序",
	["MOD_MENU_MAIN_SORTING_BAGSLOT"] = "依背包/字段",
	["MOD_MENU_MAIN_SORTING_BAGSLOT_TEXT"] = "依背包/字段编号排序物品",
	["MOD_MENU_MAIN_SORTING_USER"] = "自定义",
	["MOD_MENU_MAIN_SORTING_USER_TEXT"] = "排列物品时是否包含自定义排列",
	["MOD_MENU_MAIN_SORTING_INCLUDE_NAME"] = "物品名称", 
	["MOD_MENU_MAIN_SORTING_INCLUDE_NAME_TEXT"] = "排列物品时是否包含物品名称",
	["MOD_MENU_MAIN_SORTING_INCLUDE_NAME_REVERSE"] = "包括反转(!?)的名称",
	["MOD_MENU_MAIN_SORTING_INCLUDE_NAME_REVERSE_TEXT"] = "是否包括反转名称开关.\n\n例如超级法力合剂 -> 法力超级合剂",
	["MOD_MENU_MAIN_SORTING_INCLUDE_QUALITY"] = "包括物品稀有度",
	["MOD_MENU_MAIN_SORTING_INCLUDE_QUALITY_TEXT"] = "排列物品时是否包含物品稀有度",
	["MOD_MENU_MAIN_SORTING_INCLUDE_LOCATION"] = "包括物品装备位置",
	["MOD_MENU_MAIN_SORTING_INCLUDE_LOCATION_TEXT"] = "排列物品时是否包含物品装备位置.\n\n注：只影响可以装备的物品",
	["MOD_MENU_MAIN_SORTING_INCLUDE_ITEMTYPE"] = "物品类型和子类型",
	["MOD_MENU_MAIN_SORTING_INCLUDE_ITEMTYPE_TEXT"] = "排列物品时是否包含物品类型和子类型.",
	["MOD_MENU_MAIN_SORTING_INCLUDE_CATEGORY"] = "包括物品种类",
	["MOD_MENU_MAIN_SORTING_INCLUDE_CATEGORY_TEXT"] = "排列物品时是否包含物品种类",
	["MOD_MENU_MAIN_SORTING_INCLUDE_ITEMUSELEVEL"] = "物品（需要）等级",
	["MOD_MENU_MAIN_SORTING_INCLUDE_ITEMUSELEVEL_TEXT"] = "排列物品时是否包含物品（需要）等级.",
	["MOD_MENU_MAIN_SORTING_INCLUDE_ITEMSTATLEVEL"] = "物品 (本身) 等级",
	["MOD_MENU_MAIN_SORTING_INCLUDE_ITEMSTATLEVEL_TEXT"] = "排列物品时是否包含物品 (本身) 等级.",
	["MOD_MENU_MAIN_SORTING_INCLUDE_VENDORPRICE"] = "商品价格",
	["MOD_MENU_MAIN_SORTING_INCLUDE_VENDORPRICE_TEXT"] = "排列物品时是否参考商品价格（当前堆叠数量价格）.",
	["MOD_MENU_MAIN_SORTING_OPEN"] = "当窗口打开时",
	["MOD_MENU_MAIN_SORTING_OPEN_TEXT"] = "当窗口打开时是否采用",
	["MOD_MENU_MAIN_SORTING_INSTANT"] = "实时",
	["MOD_MENU_MAIN_SORTING_INSTANT_TEXT"] = "设定是否立即排序\n\n启用: 有改变则立即排序\n\n停用: 只有在窗口开启或手动更新时才排序\n\n注意: 如果背包置换区是开启的, 则会永远使用立即模式",
	["MOD_MENU_MAIN_SORTING_ASCENDING"] = "升序排列",
	["MOD_MENU_MAIN_SORTING_ASCENDING_TEXT"] = "设置物品升序、降序排列",
	
	["MOD_MENU_MAIN_SORTING_ORDER"] = "分类排序",
	["MOD_MENU_MAIN_SORTING_MOVE_UP"] = "上移",
	["MOD_MENU_MAIN_SORTING_MOVE_UP_TEXT"] = "将 %1$s 在分类排序中上移",
	["MOD_MENU_MAIN_SORTING_MOVE_DOWN"] = "下移",
	["MOD_MENU_MAIN_SORTING_MOVE_DOWN_TEXT"] = "将 %1$s 在分类排序中下移",
	["MOD_MENU_MAIN_SORTING_NOT_INCLUDED"] = "* 没有包含到当前排序 *",
	
	["MOD_MENU_MAIN_EMPTY"] = "空格",
	["MOD_MENU_MAIN_EMPTY_ICON"] = "使用图示",
	["MOD_MENU_MAIN_EMPTY_ICON_TEXT"] = "切换是否使用图示来表示空白字段",
	["MOD_MENU_MAIN_EMPTY_BORDER"] = "边框着色",
	["MOD_MENU_MAIN_EMPTY_BORDER_TEXT"] = "切换是否依空白字段的背包类别来着色边框",
	["MOD_MENU_MAIN_EMPTY_COLOUR"] = "空格着色",
	["MOD_MENU_MAIN_EMPTY_COLOUR_TEXT"] = "设定空白字段背景颜色",
	["MOD_MENU_MAIN_EMPTY_CLUMP"] = "整合空格",
	["MOD_MENU_MAIN_EMPTY_CLUMP_TEXT"] = "设定是否将同背包的空格跟非空格凑在一起，或将不同背包的空格视为一个特殊类别",
	["MOD_MENU_MAIN_EMPTY_SHOW"] = "显示数量",
	["MOD_MENU_MAIN_EMPTY_SHOW_TEXT"] = "是否显示空格数量",
	["MOD_MENU_MAIN_EMPTY_SHOW_COLOUR"] = "颜色",
	["MOD_MENU_MAIN_EMPTY_SHOW_COLOUR_TEXT"] = "设置空格数量文本颜色",
	
	
	
	
	["MOD_MENU_MAIN_OFFLINE"] = "离线",
	["MOD_MENU_MAIN_OFFLINE_TEXT"] = "记录 %1$s 的数据为 (%2$s) 角色， 使你可以在使用其他角色 (或离线！？)的时候进行查看.",
	
	["MOD_MENU_MAIN_HIDDEN"] = "隐藏框架",
	["MOD_MENU_MAIN_HIDDEN_TITLE"] = "隐藏标题",
	["MOD_MENU_MAIN_HIDDEN_TITLE_TEXT"] = "设定是否隐藏 %1$s 标题",
	["MOD_MENU_MAIN_HIDDEN_CHANGER"] = "隐藏背包置换区",
	["MOD_MENU_MAIN_HIDDEN_CHANGER_TEXT"] = "设定是否隐藏 %1$s 背包置换区",
	["MOD_MENU_MAIN_HIDDEN_STATUS"] = "隐藏状态",
	["MOD_MENU_MAIN_HIDDEN_STATUS_TEXT"] = "设定是否隐藏 %1$s 状态区 (含金钱、背包格数)",
	["MOD_MENU_MAIN_HIDDEN_BLIZZARD"] = "取代系统框架",
	["MOD_MENU_MAIN_HIDDEN_BLIZZARD_TEXT"] = "设定是否取代系统内建背包及银行\n\n停用此项功能的话，你只能在按键设定中设定，才能开启 %1$s",
	
	["MOD_MENU_MAIN_AUTO"] = "自动开关",
	["MOD_MENU_MAIN_AUTO_OPEN"] = "自动开启",
	["MOD_MENU_MAIN_AUTO_CLOSE"] = "自动关闭",
	
	["MOD_MENU_MAIN_NEWITEM"] = "新物品",
	["MOD_MENU_MAIN_NEWITEM_SHOW"] = "显示指示器",
	["MOD_MENU_MAIN_NEWITEM_SHOW_TEXT"] = "显示新物品文字",
	["MOD_MENU_MAIN_NEWITEM_COLOUR"] = "文字颜色",
	["MOD_MENU_MAIN_NEWITEM_COLOUR_TEXT"] = "设定新物品文字颜色",
	["MOD_MENU_MAIN_NEWITEM_RESET"] = "重置",
	["MOD_MENU_MAIN_NEWITEM_RESET_TEXT"] = "清除此角色之所有新物品记录",
	
	["MOD_MENU_MAIN_ACTIONS"] = "动作设置",
	
	["MOD_MENU_MAIN_AUTO_BANK_OPEN_TEXT"] = "设定是否要在开启银行时自动开启 %1$s 窗口",
	["MOD_MENU_MAIN_AUTO_BANK_CLOSE_TEXT"] = "设定是否要在关闭银行时自动关闭 %1$s 窗口",
	["MOD_MENU_MAIN_AUTO_VAULT_OPEN_TEXT"] = "设定是否要在开启公会银行时自动开启 %1$s 窗口",
	["MOD_MENU_MAIN_AUTO_VAULT_CLOSE_TEXT"] = "设定是否要在关闭公会银行时自动关闭 %1$s 窗口",
	--["MOD_MENU_MAIN_AUTO_MAILBOX"] = "邮箱",
	["MOD_MENU_MAIN_AUTO_MAILBOX_OPEN_TEXT"] = "设定是否要在开启邮箱时自动开启 %1$s 窗口",
	["MOD_MENU_MAIN_AUTO_MAILBOX_CLOSE_TEXT"] = "设定是否要在关闭邮箱时自动关闭 %1$s 窗口",
	["MOD_MENU_MAIN_AUTO_MERCHANT"] = "商人",
	["MOD_MENU_MAIN_AUTO_MERCHANT_OPEN_TEXT"] = "设定是否要在和商人对话时自动开启 %1$s 窗口",
	["MOD_MENU_MAIN_AUTO_MERCHANT_CLOSE_TEXT"] = "设定是否要在离开商人时自动关闭 %1$s 窗口",
	["MOD_MENU_MAIN_AUTO_TRADE"] = "交易",
	["MOD_MENU_MAIN_AUTO_TRADE_OPEN_TEXT"] = "设定是否要在和别人交易时自动开启 %1$s 窗口",
	["MOD_MENU_MAIN_AUTO_TRADE_CLOSE_TEXT"] = "设定是否要在结束交易时自动关闭 %1$s 窗口",
	["MOD_MENU_MAIN_AUTO_AUCTION"] = "拍卖场",
	["MOD_MENU_MAIN_AUTO_AUCTION_OPEN_TEXT"] = "设定是否要在进入拍卖场时自动开启 %1$s 窗口",
	["MOD_MENU_MAIN_AUTO_AUCTION_CLOSE_TEXT"] = "设定是否要在离开拍卖场时自动关闭 %1$s 窗口",
	["MOD_MENU_MAIN_AUTO_COMBAT"] = "战斗",
	["MOD_MENU_MAIN_AUTO_COMBAT_CLOSE_TEXT"] = "设定是否要在进入战斗时自动关闭 %1$s 窗口",
	
	["MOD_MENU_MAIN_TOOLTIP"] = "提示",
	["MOD_MENU_MAIN_TOOLTIP_ENABLE"] = "打开",
	["MOD_MENU_MAIN_TOOLTIP_ENABLE_TEXT"] = "是否使用提示",
	["MOD_MENU_MAIN_TOOLTIP_ITEMCOUNT_ADD"] = "显示物品数量",
	["MOD_MENU_MAIN_TOOLTIP_ITEMCOUNT_ADD_TEXT"] = "设定提示中是否显示物品数量",
	["MOD_MENU_MAIN_TOOLTIP_ITEMCOUNT_COLOUR"] = "文本颜色",
	["MOD_MENU_MAIN_TOOLTIP_ITEMCOUNT_COLOUR_TEXT"] = "设定物品数量文字颜色",
	["MOD_MENU_MAIN_TOOLTIP_VENDOR_ADD"] = "显示售价",
	["MOD_MENU_MAIN_TOOLTIP_VENDOR_ADD_TEXT"] = "设定提示中是否显示售价",
	["MOD_MENU_MAIN_TOOLTIP_VENDOR_COLOUR"] = "文本颜色",
	["MOD_MENU_MAIN_TOOLTIP_VENDOR_COLOUR_TEXT"] = "设定物品售价文字颜色",
	
	["MOD_MENU_MAIN_FONT"] = "字体",
	["MOD_MENU_MAIN_FONT_TEXT"] = "设置 %s 的字体",
	
	
	
	
	["MOD_MENU_MAIN_REFRESH"] = "更新",
	["MOD_MENU_MAIN_REFRESH_TEXT"] = "更新及排序窗口内容",
	
	["MOD_MENU_MAIN_RELOAD"] = "重载",
	["MOD_MENU_MAIN_RELOAD_TEXT"] = "重载窗口，当你使用换装软件时使用",
	
	["MOD_MENU_MAIN_EDITMODE"] = "开启编辑模式",
	["MOD_MENU_MAIN_EDITMODE_TEXT"] = "切换编辑模式，让你指定分组及调整样式",
	
	["MOD_MENU_MAIN_BAGCHANGE"] = "开启背包置换",
	["MOD_MENU_MAIN_BAGCHANGE_TEXT"] = "切换显示背包置换区，以供你替换背包",
	
	["MOD_MENU_MAIN_COMPRESS"] = "压缩并重新堆栈",
	["MOD_MENU_MAIN_COMPRESS_TEXT"] = "重新堆栈物品以减少物品占用的字段，特殊背包的字段将会优先被使用",
	
	["MOD_MENU_MAIN_RULES"] = "规则",
	--["MOD_MENU_MAIN_RULES_TEXT"] = "开启管理规则的对话框",
	
	["MOD_MENU_RULE_SHOWDISABLED"] = "显示禁用的规则",
	["MOD_MENU_RULE_SHOWDISABLED_TEXT"] = "禁用规则显示开关",
	
	["MOD_MENU_MAIN_SEARCH"] = "搜索",
	--["MOD_MENU_MAIN_SEARCH_TEXT"] = "打开搜索窗口",
	
	
	-- item menu
	["MOD_MENU_ITEM_INFORMATION_TITLE"] = "物品信息",
	["MOD_MENU_ITEM_ITEM"] = "物品",
	["MOD_MENU_ITEM_CURRENT_ASSIGNMENT"] = "目前指定",
	["MOD_MENU_ITEM_DEFAULT_ASSIGNMENT"] = "预设指定",
	["MOD_MENU_ITEM_MOVE"] = "移动 %1$s 至分组",
	["MOD_MENU_ITEM_RULE_NEW"] = "创建新规则",
	["MOD_MENU_ITEM_RULE_ADD"] = "增加物品至规则",
	["MOD_MENU_ITEM_DEBUG"] = "Debug 信息",
	["MOD_MENU_ITEM_DEBUG_BAG"] = "背包",
	["MOD_MENU_ITEM_DEBUG_SLOT"] = "包格",
	["MOD_MENU_ITEM_DEBUG_BAG_TYPE"] = "背包类别",
	["MOD_MENU_ITEM_DEBUG_AI_ID"] = "AI ID",
	["MOD_MENU_ITEM_DEBUG_AI_CATEGORY"] = "AI 类别",
	["MOD_MENU_ITEM_DEBUG_NAME"] = "名称",
	["MOD_MENU_ITEM_DEBUG_QUALITY"] = "品质",
	["MOD_MENU_ITEM_DEBUG_LVL_ITEM"] = "物品等级 (属性等级)",
	["MOD_MENU_ITEM_DEBUG_LVL_USE"] = "物品等级 (使用等级)",
	["MOD_MENU_ITEM_DEBUG_TYPE"] = "类别",
	["MOD_MENU_ITEM_DEBUG_SUBTYPE"] = "子类别",
	["MOD_MENU_ITEM_DEBUG_LOCATION"] = "位置",
	["MOD_MENU_ITEM_DEBUG_ID"] = "ID",
	["MOD_MENU_ITEM_DEBUG_STACK"] = "堆叠数量",
	["MOD_MENU_ITEM_DEBUG_TEXTURE"] = "材质",
	["MOD_MENU_ITEM_DEBUG_FAMILY"] = "族（Family）",
	["MOD_MENU_ITEM_DEBUG_PT"] = "PT 设置",
	["MOD_MENU_ITEM_DEBUG_PT_TEXT"] = "列出此物品所设置的 PT 类别",
	["MOD_MENU_ITEM_DEBUG_PT_NONE"] = "此物品当前没有设置任何 PT 类别",
	["MOD_MENU_ITEM_DEBUG_PT_TITLE"] = "设置此物品的 PT 类别",
	
	
	-- bar menu
	["MOD_MENU_BAR_INFORMATION_TITLE"] = "分组 %1$s 选项",
	["MOD_MENU_BAR_CATEGORY"] = "类别",
	["MOD_MENU_BAR_CATEGORY_TEXT"] = "指定 %1$s 到此分组",
	["MOD_MENU_BAR_CATEGORY_CURRENT"] = "目前使用",
	["MOD_MENU_BAR_CATEGORY_ASSIGN"] = "可使用类别",
	["MOD_MENU_BAR_CATEGORY_REMOVE"] = "移除",
	["MOD_MENU_BAR_CATEGORY_REMOVE_TEXT"] = "自分组 %2$s 中移除 %1$s，并将它放回预设分组", -- 1 is the category name, 2 is the bar number
	["MOD_MENU_BAR_CATEGORY_HIDDEN"] = "隐藏",
	["MOD_MENU_BAR_CATEGORY_HIDDEN_TEXT"] = "设定此分组是否为隐藏模式\n\n在隐藏分组内的物品，一般情况下将不会显示",
	["MOD_MENU_BAR_CLEAR"] = "清除此分组",
	["MOD_MENU_BAR_CLEAR_TEXT"] = "移除所有除了预设分类以外指定到此的类别",
	["MOD_MENU_BAR_INSERT"] = "插入空白分组",
	["MOD_MENU_BAR_INSERT_TEXT"] = "插入空白分组，将其他分组往后移",
	["MOD_MENU_BAR_REMOVE"] = "移除此分组",
	["MOD_MENU_BAR_REMOVE_TEXT"] = "移除此分组，此分组内的类别将会被放回预设分组",
	["MOD_MENU_BAR_MOVE_UP"] = "分组上移",
	["MOD_MENU_BAR_MOVE_UP_TEXT"] = "将此分组上移一格",
	["MOD_MENU_BAR_MOVE_DOWN"] = "分组下移",
	["MOD_MENU_BAR_MOVE_DOWN_TEXT"] = "将此分组下移一格",	

	
	-- bag menu
	["MOD_MENU_BAG_TITLE"] = "背包设置",
	["MOD_MENU_BAG_SHOW"] = "显示",
	["MOD_MENU_BAG_SHOW_TEXT"] = "显示此背包容那物",
	["MOD_MENU_BAG_ISOLATE"] = "隔离",
	["MOD_MENU_BAG_ISOLATE_TEXT"] = "只显示此背包容纳物",
	["MOD_MENU_BAG_SHOWALL"] = "显示所有",
	["MOD_MENU_BAG_SHOWALL_TEXT"] = "显示此位置所有背包容纳物",
	
	
	-- generic menu text
	["MOD_MENU_GENERIC_BOTTOMLEFT"] = "左下角",
	["MOD_MENU_GENERIC_BOTTOMRIGHT"] = "右下角",
	["MOD_MENU_GENERIC_TOPLEFT"] = "左上角",
	["MOD_MENU_GENERIC_TOPRIGHT"] = "右上角",
	["MOD_MENU_GENERIC_HORIZONTAL"] = "水平",
	["MOD_MENU_GENERIC_VERTICAL"] = "垂直",
	["MOD_MENU_GENERIC_CLOSE_MENU"] = "关闭选单",
	["MOD_MENU_GENERIC_ANCHOR"] = "锚点",
	["MOD_MENU_GENERIC_ANCHOR_TEXT1"] = "设置锚点",
	["MOD_MENU_GENERIC_ANCHOR_TEXT2"] = "将 %1$s 的锚点设置在 %2$s",
	["MOD_MENU_GENERIC_BORDER"] = "边框",
	["MOD_MENU_GENERIC_BORDER_TEXT"] = "边框设置",
	["MOD_MENU_GENERIC_SHOW"] = "显示",
	["MOD_MENU_GENERIC_FILE"] = "文件",
	["MOD_MENU_GENERIC_HEIGHT"] = "高",
	["MOD_MENU_GENERIC_SCALE"] = "缩放",
	["MOD_MENU_GENERIC_BORDER_TEXTURE"] = "材质",
	["MOD_MENU_GENERIC_BORDER_TEXTURE_TEXT"] = "物品材质选项",
	["MOD_MENU_GENERIC_BORDER_TEXTURE_FILE_TEXT"] = "用于边框的材质 (改变此设置将重置缩放比例为 100%)",
	["MOD_MENU_GENERIC_BORDER_TEXTURE_HEIGHT_TEXT"] = "材质高度 (像素) ",
	["MOD_MENU_GENERIC_FONT"] = "字体",
	["MOD_MENU_GENERIC_COLOUR"] = "颜色",
	
	
	-- rules frame
	["MOD_FRAME_RULE_RULE"] = "规则",
	["MOD_FRAME_RULE_ENABLED"] = "启用",
	["MOD_FRAME_RULE_HIDDEN"] = "隐藏",
	["MOD_FRAME_RULE_ORDER"] = "顺序",
	["MOD_FRAME_RULE_DESCRIPTION"] = "描述",
	["MOD_FRAME_RULE_FORMULA"] = "公式",
	["MOD_FRAME_RULE_SEARCH"] = "搜寻",
	["MOD_FRAME_RULE_VIEW"] = "查看",
	["MOD_FRAME_RULE_ADD"] = "新增",
	["MOD_FRAME_RULE_EDIT"] = "编辑",
	["MOD_FRAME_RULE_REMOVE"] = "移除",
	["MOD_FRAME_RULE_OK"] = "确定",
	["MOD_FRAME_RULE_CANCEL"] = "取消",	
	
	["MOD_FRAME_RULE_LIST_ENABLED"] = "使用",
	["MOD_FRAME_RULE_LIST_DAMAGED"] = "损坏",
	["MOD_FRAME_RULE_LIST_ID"] = "规则",
	["MOD_FRAME_RULE_LIST_ORDER"] = "排序",
	["MOD_FRAME_RULE_LIST_DESCRIPTION"] = "描述",	
	
	["RULE_DAMAGED"] = "当期规则设置 %s 为损坏的，除非修理不能使用",
	["RULE_FAILED_NIL_KEY"] = "失败: 旧的关键字为空",
	["RULE_FAILED_NIL_DATA"] = "失败: 旧数据为空",
	["RULE_FAILED_NIL_DESCRIPTION"] = "失败: 无法找到描述信息",
	["RULE_FAILED_NIL_FORMULA"] = "失败: 无法找到格式",

	
	-- new item indicators
	["NEW_ITEM_NEW"] = "New",
	["NEW_ITEM_INCREASE"] = "+++",
	["NEW_ITEM_DECREASE"] = "- - -",
	
	
	-- debug
	["MOD_MENU_MAIN_DEBUG"] = "Debug 模式",
	["MOD_MENU_MAIN_DEBUG_TEXT"] = "Debug 模式开关",
	
	
	-- slash commands
	["SLASH_UI"] = "UI",
	["SLASH_UI_TEXT"] = "UI 设置",
	["SLASH_UI_RESET"] = "重置",
	["SLASH_UI_RESET_TEXT"] = "将界面重置到屏幕中心",
	["SLASH_UI_RESET_COMPLETE_TEXT"] = "所有 UI 窗口将重置到屏幕中心",
	["SLASH_DB"] = "数据",
	["SLASH_DB_TEXT"] = "数据设置",
	["SLASH_DB_RESET"] = "重置",
	["SLASH_DB_RESET_TEXT"] = "重置所有设置为默认设置 - defaults ",
	["SLASH_DB_RESET_CONFIRM"] = "确认",
	["SLASH_DB_RESET_CONFIRM_TEXT"] = "确认数据重置",
	["SLASH_DB_RESET_COMPLETE_TEXT"] = "配置已重置，所有设置已设为默认 - defaults ",
	["SLASH_CACHE"] = "缓存",
	["SLASH_CACHE_TEXT"] = "缓存设置",
	["SLASH_CACHE_ERASE"] = "清除",
	["SLASH_CACHE_ERASE_TEXT"] = "清除所有缓存数据",
	["SLASH_CACHE_ERASE_CONFIRM"] = "确认",
	["SLASH_CACHE_ERASE_CONFIRM_TEXT"] = "确认清除缓存数据",
	["SLASH_CACHE_ERASE_COMPLETE_TEXT"] = "所有缓存数据清除！",
	["SLASH_MISC"] = "杂类",
	["SLASH_MISC_TEXT"] = "杂类选项",
	["SLASH_MISC_ALERT"] = "bug 修正警告",
	["SLASH_MISC_ALERT_TEXT"] = "改变bug修正警告的显示方式",
	["SLASH_MISC_ALERT_DISABLE"] = "禁用",
	["SLASH_MISC_ALERT_DISABLE_TEXT"] = "禁用bug修正警告",
	["SLASH_MISC_ALERT_SHORT"] = "短",
	["SLASH_MISC_ALERT_SHORT_TEXT"] = "以简短模式显示bug修正警告",
	["SLASH_MISC_ALERT_LONG"] = "长",
	["SLASH_MISC_ALERT_LONG_TEXT"] = "以详细模式显示bug修正警告",
	
	
	-- misc chat stuff
	["MOD_ENABLED"] = "v%1$s 启用.  键入 %2$s 或 %3$s 以查看帮助.",
	["MOD_DISABLED"] = "v%1$s 禁用.",
	["PROFILE_UPGRADE"] = "更新配置文件 %1$s 到 %2$.2f",
	["RESTACK_FAILED_OFFLINE"] = "离线模式，不能重新堆叠 %s ",
	["RESTACK_FAILED_RUNNING"] = "重新堆叠 %s 开始，请稍后 . . .",
	["RESTACK_FAILED_LOCATION"] = "不支持重新堆叠 —— %s",
	["MISC_ALERT"] = "警告!",
	["MISC_BUGFIX_SHORT"] = "Bug 修正完毕.",
	["MISC_BUGFIX_LONG"] = "当前 %1$s 窗口界面级别在 %2$s 并且被重置到 %3$s 以确保回收模式.  由于此 bug 修正带来的 lag 现象向您道歉.",
	
	
	-- item count tooltip
	["TOOLTIP_COUNT_ME"] = ">", -- note: theres no space between this and your characters name so add a trailing space if you need one (depending on what you have here)
	["TOOLTIP_VENDOR"] = "商人",
	
} end )
