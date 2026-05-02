local L = AceLibrary( "AceLocale-2.2" ):new( "ArkInventory" )

-- post updated translations at http://groups.google.com/group/wow-arkinventory (modify this file and include as an attachment)

-- Translated by: Anton P. Mukhin aka McFLY






L:RegisterTranslations( "ruRU", function() return {

	-- wow skill headers
	["WOW_SKILL_HEADER_PRIMARY"] = "Профессии",
	["WOW_SKILL_HEADER_SECONDARY"] = "Дополнительные профессии",


	-- wow skill names
	["WOW_SKILL_ALCHEMY"] = "Алхимия",
	["WOW_SKILL_BLACKSMITHING"] = "Кузнечное дело",
	["WOW_SKILL_COOKING"] = "Кулинария",
	["WOW_SKILL_ENCHANTING"] = "Чародейство",
	["WOW_SKILL_ENGINEERING"] = "Механика",
	["WOW_SKILL_FIRST_AID"] = "Первая помощь",
	["WOW_SKILL_FISHING"] = "Рыбная ловля",
	["WOW_SKILL_HERBALISM"] = "Травничество",
	["WOW_SKILL_JEWELCRAFTING"] = "Ювелирное дело",
	["WOW_SKILL_LEATHERWORKING"] = "Кожевенное дело",
	["WOW_SKILL_MINING"] = "Горное дело",
	["WOW_SKILL_SKINNING"] = "Свежевание",
	["WOW_SKILL_TAILORING"] = "Портняжное дело",
	["WOW_SKILL_RIDING"] = "Riding",


	-- wow class names
	["WOW_CLASS_DRUID"] = "Друид",
	["WOW_CLASS_HUNTER"] = "Охотник",
	["WOW_CLASS_MAGE"] = "Маг",
	["WOW_CLASS_PALADIN"] = "Паладин",
	["WOW_CLASS_PRIEST"] = "Жрец",
	["WOW_CLASS_ROGUE"] = "Разбойник",
	["WOW_CLASS_SHAMAN"] = "Шаман",
	["WOW_CLASS_WARLOCK"] = "Чернокнижник",
	["WOW_CLASS_WARRIOR"] = "Воин",


	-- wow item types
	["WOW_ITEM_TYPE_ARMOR"] = "Броня",
	["WOW_ITEM_TYPE_CONSUMABLE"] = "Расходуемое",
	["WOW_ITEM_TYPE_CONTAINER"] = "Сумка",
	["WOW_ITEM_TYPE_GEM"] = "Ювелирка",
	["WOW_ITEM_TYPE_KEY"] = "Ключ",
	["WOW_ITEM_TYPE_MISCELLANEOUS"] = "Разное",
	["WOW_ITEM_TYPE_REAGENT"] = "Реагент",
	["WOW_ITEM_TYPE_RECIPE"] = "Рецепт",
	["WOW_ITEM_TYPE_PROJECTILE"] = "Амуниция",
	["WOW_ITEM_TYPE_QUEST"] = "Задания",
	["WOW_ITEM_TYPE_QUIVER"] = "Колчан",
	["WOW_ITEM_TYPE_TRADE_GOODS"] = "На продажу",
	["WOW_ITEM_TYPE_WEAPON"] = "Оружие",

	["WOW_ITEM_TYPE_CONTAINER_BAG"] = "Сумка",
	["WOW_ITEM_TYPE_CONTAINER_SOULSHARD"] = "Сумка душ",
	["WOW_ITEM_TYPE_CONTAINER_HERB"] = "Сумка травника",
	["WOW_ITEM_TYPE_CONTAINER_ENCHANTING"] = "Сумка зачаровывателя",
	["WOW_ITEM_TYPE_CONTAINER_ENGINEERING"] = "Сумка инженера",
	["WOW_ITEM_TYPE_CONTAINER_GEM"] = "Сумка ювелира",
	["WOW_ITEM_TYPE_CONTAINER_MINING"] = "Шахтёрская сумка",
	["WOW_ITEM_TYPE_CONTAINER_LEATHERWORKING"] = "Сумка кожевника",
	["WOW_ITEM_TYPE_PROJECTILE_BULLET"] = "Пуля",
	["WOW_ITEM_TYPE_PROJECTILE_ARROW"] = "Стрела",
	["WOW_ITEM_TYPE_QUIVER_BULLET"] = "Подсумок",
	["WOW_ITEM_TYPE_QUIVER_ARROW"] = "Колчан",
	["WOW_ITEM_TYPE_TRADE_GOODS_DEVICES"] = "Устройства",
	["WOW_ITEM_TYPE_TRADE_GOODS_EXPLOSIVES"] = "Взрывчатка",
	["WOW_ITEM_TYPE_TRADE_GOODS_PARTS"] = "Запчасти",


	-- wow tooltip text
	["WOW_TOOLTIP_POTION"] = "зелье",
	["WOW_TOOLTIP_ELIXIR"] = "Эликсир",

	["WOW_TOOLTIP_FOOD"] = "Действие эффекта прерывается, если персонаж встает с места",
	["WOW_TOOLTIP_DRINK"] = "Действие эффекта прерывается, если персонаж встает с места",
	["WOW_TOOLTIP_PET"] = "Click to summon and dismiss your",
	["WOW_TOOLTIP_POTION_HEAL"] = "Восполнение %d+ - %d+ ед. здоровья",
	["WOW_TOOLTIP_POTION_MANA"] = "Восполнение %d+ - %d+ ед. маны",


	-- category names
	["CATEGORY_SYSTEM"] = "СИСТЕМНАЯ",
	["CATEGORY_SKILL"] = "УМЕНИЕ",
	["CATEGORY_CLASS"] = "КЛАСС",
	["CATEGORY_OTHER"] = "ДРУГОЕ",
	["CATEGORY_RULE"] = "ПРАВИЛО",


	-- basic (system) categories
	["CATEGORY_CONSUMABLE"] = "РАСХОДУЕМОЕ",
	["CATEGORY_CONTAINER"] = "СУМКА",
	["CATEGORY_KEY"] = "КЛЮЧ",
	["CATEGORY_MISCELLANEOUS"] = "РАЗНОЕ",
	["CATEGORY_QUEST"] = "ЗАДАНИЯ",
	["CATEGORY_REAGENT"] = "РЕАГЕНТ",
	["CATEGORY_RECIPE"] = "РЕЦЕПТ",
	["CATEGORY_PROJECTILE"] = "АМУНИЦИЯ",
	["CATEGORY_PROJECTILE_BULLET"] = "АМУНИЦИЯ (ПУЛЯ)",
	["CATEGORY_PROJECTILE_ARROW"] = "АМУНИЦИЯ (СТРЕЛА)",
	["CATEGORY_TRADE_GOODS"] = "ХОЗЯЙСТВЕННЫЕ ТОВАРЫ",
	["CATEGORY_TRADE_GOODS_DEVICES"] = "УСТРОЙСТВА",
	["CATEGORY_TRADE_GOODS_EXPLOSIVES"] = "ВЗРЫВЧАТКА",
	["CATEGORY_TRADE_GOODS_PARTS"] = "ЗАПЧАСТИ",
	["CATEGORY_REPUTATION"] = "РЕПУТАЦИЯ",

	["CATEGORY_DEFAULT"] = "ПО УМОЛЧАНИЮ",
	["CATEGORY_TRASH"] = "МУСОР",
	["CATEGORY_SOULSHARD"] = "ОСКОЛОК ДУШИ",
	["CATEGORY_SOULBOUND"] = "НЕОТЧУЖДАЕМЫЕ",
	["CATEGORY_EQUIPMENT_SOULBOUND"] = "ОСНАЩЕНИЕ (НЕОТЧУЖДАЕМОЕ)",
	["CATEGORY_EQUIPMENT"] = "ОСНАЩЕНИЕ (ОТЧУЖДАЕМЫЕ)",
	["CATEGORY_MOUNT"] = "МАУНТ",
	["CATEGORY_PET_NONCOMBAT"] = "ПИТОМЕЦ (НЕ БОЕВОЙ)",

	["CATEGORY_FOOD"] = "ЕДА",
	["CATEGORY_FOOD_PET"] = "ЕДА (ТОЛЬКО ДЛЯ ПИТОМЦЕВ)",
	["CATEGORY_DRINK"] = "ПИТЬЁ",
	["CATEGORY_POTION_MANA"] = "МАНА (ЗЕЛЬЕ/КАМЕНЬ)",
	["CATEGORY_POTION_HEAL"] = "ЗДОРОВЬЕ (ЗЕЛЬЕ/КАМЕНЬ)",
	["CATEGORY_CORE_MATS"] = "МАТЕРИАЛЫ",
	["CATEGORY_POTION"] = "ЗЕЛЬЕ",

	["CATEGORY_UNKNOWN"] = "НЕИЗВЕСТНОЕ",


	-- empty categories
	["CATEGORY_EMPTY"] = "ПУСТО", -- generic empty, also used for category menu
	["CATEGORY_EMPTY_KEY"] = "ПУСТО (БРЕЛОК)",
	["CATEGORY_EMPTY_PROJECTILE"] = "ПУСТО (АМУНИЦИЯ)",
	["CATEGORY_EMPTY_PROJECTILE_BULLET"] = "ПУСТО (АМУНИЦИЯ - ПУЛЯ)",
	["CATEGORY_EMPTY_PROJECTILE_ARROW"] = "ПУСТО (АМУНИЦИЯ - СТРЕЛА)",
	["CATEGORY_EMPTY_SOULSHARD"] = "ПУСТО (ОСКОЛОК ДУШИ)",
	["CATEGORY_EMPTY_HERB"] = "ПУСТО (ТРАВА)",
	["CATEGORY_EMPTY_ENCHANTING"] = "ПУСТО (НАЛОЖЕНИЕ ЧАР)",
	["CATEGORY_EMPTY_ENGINEERING"] = "ПУСТО (МЕХАНИКА)",
	["CATEGORY_EMPTY_GEM"] = "ПУСТО (ЮВЕЛИРНОЕ ДЕЛО)",
	["CATEGORY_EMPTY_MINING"] = "ПУСТО (РУДА)",
	["CATEGORY_EMPTY_LEATHERWORKING"] = "ПУСТО (КОЖЕВЕННОЕ ДЕЛО)",
	["CATEGORY_EMPTY_BAG"] = "ПУСТО (СУМКА)",
	["CATEGORY_EMPTY_UNKNOWN"] = "ПУСТО (НЕИЗВЕСТНО)",


	-- skill categories
	["CATEGORY_SKILL_ALCHEMY"] = "АЛХИМИЯ",
	["CATEGORY_SKILL_BLACKSMITHING"] = "КУЗНЕЧНОЕ ДЕЛО",
	["CATEGORY_SKILL_COOKING"] = "КУЛИНАРИЯ",
	["CATEGORY_SKILL_ENCHANTING"] = "НАЛОЖЕНИЕ ЧАР",
	["CATEGORY_SKILL_ENGINEERING"] = "МЕХАНИКА",
	["CATEGORY_SKILL_FIRST_AID"] = "ПЕРВАЯ ПОМОЩЬ",
	["CATEGORY_SKILL_FISHING"] = "РЫБНАЯ ЛОВЛЯ",
	["CATEGORY_SKILL_HERBALISM"] = "ТРАВНИЧЕСТВО",
	["CATEGORY_SKILL_JEWELCRAFTING"] = "ЮВЕЛИРНОЕ ДЕЛО",
	["CATEGORY_SKILL_LEATHERWORKING"] = "КОЖЕВЕННОЕ ДЕЛО",
	["CATEGORY_SKILL_MINING"] = "ГОРНОЕ ДЕЛО",
	["CATEGORY_SKILL_SKINNING"] = "СВЕЖЕВАНИЕ",
	["CATEGORY_SKILL_TAILORING"] = "ПОРТНЯЖНОЕ ДЕЛО",


	-- class categories
	["CATEGORY_CLASS_DRUID"] = "ДРУИД",
	["CATEGORY_CLASS_HUNTER"] = "ОХОТНИК",
	["CATEGORY_CLASS_MAGE"] = "МАГ",
	["CATEGORY_CLASS_PALADIN"] = "ПАЛАДИН",
	["CATEGORY_CLASS_PRIEST"] = "ЖРЕЦ",
	["CATEGORY_CLASS_ROGUE"] = "РАЗБОЙНИК",
	["CATEGORY_CLASS_SHAMAN"] = "ШАМАН",
	["CATEGORY_CLASS_WARLOCK"] = "ЧЕРНОКНИЖНИК",
	["CATEGORY_CLASS_WARRIOR"] = "ВОИН",


	-- bag names - used to name the empty slots in the status frame
	["STATUS_NAME_SOULSHARD"] = "Душа",
	["STATUS_NAME_HERB"] = "Трава",
	["STATUS_NAME_ENCHANTING"] = "Чары",
	["STATUS_NAME_ENGINEERING"] = "Механ",
	["STATUS_NAME_GEM"] = "Ювел",
	["STATUS_NAME_MINING"] = "Руда",
	["STATUS_NAME_LEATHERWORKING"] = "Кожа",
	["STATUS_NAME_PROJECTILE"] = "Аммун",
	["STATUS_NAME_PROJECTILE_BULLET"] = "Пуля",
	["STATUS_NAME_PROJECTILE_ARROW"] = "Стрела",
	["STATUS_NAME_KEY"] = "Ключ",
	["STATUS_NAME_UNKNOWN"] = "Неизв",
	["STATUS_NAME_BAG"] = "Сумка",


	-- location names
	["LOCATION_ALL"] = "Все",
	["LOCATION_BAG"] = "Сумка",
	["LOCATION_BANK"] = "Банк",
	--["LOCATION_KEY"] = "Брелок",
	--["LOCATION_VAULT"] = "Гильдийский Банк",
	["LOCATION_WEARING"] = "Одето",
	--["LOCATION_MAIL"] = "Почтовый ящик",
	--["BACKPACK"] = "Рюкзак",

	["STATUS_OFFLINE"] = "Оффлайн",
	["STATUS_NO_DATA"] = "???",
	["STATUS_FULL"] = "ПОЛН",
	["STATUS_START"] = "Начато",
	["STATUS_FINISH"] = "Закончено",
	["STATUS_PURCHASE"] = "КУП",


	-- vault tooltip text
	["VAULT_TAB_NAME"] = "Tab: |cffffffff%1$s - %2$s|r", -- tab number, tab name
	["VAULT_TAB_ACCESS"] = "Access: |cffffffff%1$s|r",
	["VAULT_TAB_ACCESS_NONE"] = "No Access",
	["VAULT_TAB_REMAINING_WITHDRAWALS"] = "Remaining Daily Withdrawals: |cffffffff%1$s|r",


	-- main menu
	["MOD_FRAME_MENU"] = "Меню",

	["MOD_MENU_MAIN_SWITCH_CHARACTER"] = "Сменить персонажа",
	["MOD_MENU_MAIN_SWITCH_CHARACTER_TEXT"] = "Изменяет, вещи какого персонажа отображать",
	["MOD_MENU_MAIN_SWITCH_CHARACTER_CHOOSE_NONE"] = "нет данных о персонажах",
	["MOD_MENU_MAIN_SWITCH_CHARACTER_CHOOSE_TEXT"] = "Изменяет отображаемые данные на %1$s",
	["MOD_MENU_MAIN_SWITCH_CHARACTER_ERASE"] = "Удалить данные %s",
	["MOD_MENU_MAIN_SWITCH_CHARACTER_ERASE_TEXT"] = "Удаляет данные %1$s для %2$s",

	["MOD_MENU_MAIN_SWITCH_LOCATION"] = "Отобразить окно",
	["MOD_MENU_MAIN_SWITCH_LOCATION_TEXT"] = "отображает или скрывает окно %1$s",

	["MOD_MENU_MAIN_SETTINGS"] = "Использовать Настройки",
	["MOD_MENU_MAIN_SETTINGS_TEXT"] = "позволяет изменить настройки каждого окна в отдельности",
	["MOD_MENU_MAIN_SETTINGS_LOCATION_TEXT"] = "использовать настройки окна %1$s для окна %2$s",

	["MOD_MENU_MAIN_WINDOW"] = "Окно",
	["MOD_MENU_MAIN_WINDOW_SCALE_TEXT"] = "устанавливает масштаб, делая окно меньше или больше",
	["MOD_MENU_MAIN_WINDOW_PADDING"] = "Зазор",
	["MOD_MENU_MAIN_WINDOW_PADDING_TEXT"] = "устанавливает зазор между краем окна и наборами ячеек",
	["MOD_MENU_MAIN_WINDOW_WIDTH"] = "Ширина",
	["MOD_MENU_MAIN_WINDOW_WIDTH_TEXT"] = "устанавливает количество столбцов для отображения",
	["MOD_MENU_MAIN_WINDOW_BACKGROUND_COLOR"] = "Цвет фона",
	["MOD_MENU_MAIN_WINDOW_BACKGROUND_COLOR_TEXT"] = "Устанавливает фоновый цвет главного окна",
	["MOD_MENU_MAIN_WINDOW_BORDER_SHOW_TEXT"] = "показать или скрыть кромку главного окна",
	["MOD_MENU_MAIN_WINDOW_BORDER_COLOR"] = "Цвет кромки",
	["MOD_MENU_MAIN_WINDOW_BORDER_COLOR_TEXT"] = "устанавливает цвет кромки главного окна",
	["MOD_MENU_MAIN_WINDOW_BAGHIGHLIGHT_COLOR"] = "Цвет подсветки сумок",
	["MOD_MENU_MAIN_WINDOW_BAGHIGHLIGHT_COLOR_TEXT"] = "Устанавливает цвет, который используется для подсветки ячеек сумки, над которой курсор мыши",
	["MOD_MENU_MAIN_WINDOW_ANCHOR_LOCK"] = "Зафиксировать",
	["MOD_MENU_MAIN_WINDOW_ANCHOR_LOCK_TEXT"] = "фиксирует положение окна %1$s",

	["MOD_MENU_MAIN_BARS"] = "Наборы ячеек",
	["MOD_MENU_MAIN_BARS_PER_ROW"] = "В ряду",
	["MOD_MENU_MAIN_BARS_PER_ROW_TEXT"] = "задает количество наборов ячеек в каждом ряду",
	["MOD_MENU_MAIN_BARS_PADDING"] = "Зазор",
	["MOD_MENU_MAIN_BARS_DIRECTION"] = "Направление",
	["MOD_MENU_MAIN_BARS_DIRECTION_HORIZONTAL_TEXT"] = "наборы ячеек будут увеличиваться по горизонтали",
	["MOD_MENU_MAIN_BARS_DIRECTION_VERTICAL_TEXT"] = "наборы ячеек будут увеличиваться по вертикали",
	["MOD_MENU_MAIN_BARS_COMPACT"] = "Компактно",
	["MOD_MENU_MAIN_BARS_COMPACT_TEXT"] = "отображает все непустые наборы ячеек в последовательном порядке",
	["MOD_MENU_MAIN_BARS_SHOW_EMPTY"] = "Показывать пустые",
	["MOD_MENU_MAIN_BARS_SHOW_EMPTY_TEXT"] = "отображать или нет пустые наборы ячеек",
	["MOD_MENU_MAIN_BARS_BACKGROUND"] = "Цвет фона",
	["MOD_MENU_MAIN_BARS_BACKGROUND_TEXT"] = "задает цвет фона наборов ячеек",
	["MOD_MENU_MAIN_BARS_BORDER_TEXT"] = "показать или скрыть кромку вокруг каждого набора ячеек",
	["MOD_MENU_MAIN_BARS_BORDER_COLOUR"] = "Цвет кромки",
	["MOD_MENU_MAIN_BARS_BORDER_COLOUR_TEXT"] = "задает цвет кромки наборов ячеек",
	["MOD_MENU_MAIN_BARS_NAME"] = "Название",
	["MOD_MENU_MAIN_BARS_NAME_TEXT"] = "Задает название для этого набора ячеек",
	["MOD_MENU_MAIN_BARS_NAME_SHOW_TEXT"] = "отображать или нет названия наборов ячеек",
	["MOD_MENU_MAIN_BARS_NAME_COLOUR_TEXT"] = "задает цвет кромки наборов ячеек",

	["MOD_MENU_MAIN_ITEMS"] = "Ячейки",
	["MOD_MENU_MAIN_ITEMS_PADDING"] = "Зазор",
	["MOD_MENU_MAIN_ITEMS_PADDING_TEXT"] = "задает расстояние медлу ячейками",
	["MOD_MENU_MAIN_ITEMS_FADE"] = "Затемнять недоступное",
	["MOD_MENU_MAIN_ITEMS_FADE_TEXT"] = "затемнять ли недоступные в данный момент ячейки",
	["MOD_MENU_MAIN_ITEMS_BORDER_SHOW_TEXT"] = "отображать ли кромку вокруг каждой ячейки",
	["MOD_MENU_MAIN_ITEMS_BORDER_RARITY"] = "Кромка в цвет качества",
	["MOD_MENU_MAIN_ITEMS_BORDER_RARITY_TEXT"] = "окрашивать ли кромку каждой ячейки в соответствии с качеством вещи",
	["MOD_MENU_MAIN_ITEMS_BORDER_TEXTURE_OFFSET"] = "Сдвиг",
	["MOD_MENU_MAIN_ITEMS_BORDER_TEXTURE_OFFSET_TEXT"] = "расстояние в пикселях между краем картинки предмета и внутренней стороной кромки ячейки",
	["MOD_MENU_MAIN_ITEMS_BORDER_SCALE_TEXT"] = "масштаб текстуры кромки",
	["MOD_MENU_MAIN_ITEMS_HIDDEN"] = "Показывать скрытые",
	["MOD_MENU_MAIN_ITEMS_HIDDEN_TEXT"] = "показывать ли предметы, находящиеся в скрытых категориях",

	["MOD_MENU_MAIN_SORTING"] = "Сортировка",
	["MOD_MENU_MAIN_SORTING_BAGSLOT"] = "Сумка / Ячейка",
	["MOD_MENU_MAIN_SORTING_BAGSLOT_TEXT"] = "сортирует инвентарь по номеру сумки и ячейки",
	["MOD_MENU_MAIN_SORTING_USER"] = "Ручная",
	["MOD_MENU_MAIN_SORTING_USER_TEXT"] = "сортирует инвентарь тем способом, который выберите Вы",
	["MOD_MENU_MAIN_SORTING_INCLUDE_NAME"] = "название предмета",
	["MOD_MENU_MAIN_SORTING_INCLUDE_NAME_TEXT"] = "использовать ли имя предмета при сортировке",
	["MOD_MENU_MAIN_SORTING_INCLUDE_NAME_REVERSE"] = "Обратить названия",
	["MOD_MENU_MAIN_SORTING_INCLUDE_NAME_REVERSE_TEXT"] = "использовать ли обращение названий предметов\n\nнапример вместо Super Mana Potion использовать Potion Mana Super",
	["MOD_MENU_MAIN_SORTING_INCLUDE_QUALITY"] = "качество вещи",
	["MOD_MENU_MAIN_SORTING_INCLUDE_QUALITY_TEXT"] = "использовать ли качество предмета при сортировке",
	["MOD_MENU_MAIN_SORTING_INCLUDE_LOCATION"] = "слот одеваемой вещи",
	["MOD_MENU_MAIN_SORTING_INCLUDE_LOCATION_TEXT"] = "использовать ли слот на который одевается вещь при сортировке\n\nвнимание: действует только на вещи, которые можно одеть",
	["MOD_MENU_MAIN_SORTING_INCLUDE_ITEMTYPE"] = "тип и подтип предмета",
	["MOD_MENU_MAIN_SORTING_INCLUDE_ITEMTYPE_TEXT"] = "использовать ли тип и подтип предмета при сортировке",
	["MOD_MENU_MAIN_SORTING_INCLUDE_CATEGORY"] = "категория предмета",
	["MOD_MENU_MAIN_SORTING_INCLUDE_CATEGORY_TEXT"] = "использовать ли категорию предмета при сортировке",
	["MOD_MENU_MAIN_SORTING_INCLUDE_ITEMUSELEVEL"] = "уровень (исп) предмета",
	["MOD_MENU_MAIN_SORTING_INCLUDE_ITEMUSELEVEL_TEXT"] = "использовать ли уровень (использования) предмета при сортировке",
	["MOD_MENU_MAIN_SORTING_INCLUDE_ITEMSTATLEVEL"] = "уровень (парам) предмета",
	["MOD_MENU_MAIN_SORTING_INCLUDE_ITEMSTATLEVEL_TEXT"] = "использовать ли уровень (по параметрам) предмета при сортировке",
	["MOD_MENU_MAIN_SORTING_INCLUDE_VENDORPRICE"] = "цена продажи",
	["MOD_MENU_MAIN_SORTING_INCLUDE_VENDORPRICE_TEXT"] = "использовать ли цену продажи предмета NPC-торговцу при сортировке",
	["MOD_MENU_MAIN_SORTING_OPEN"] = "При открытии окна",
	["MOD_MENU_MAIN_SORTING_OPEN_TEXT"] = "производить ли сортировку при открытии окна",
	["MOD_MENU_MAIN_SORTING_INSTANT"] = "Моментально",
	["MOD_MENU_MAIN_SORTING_INSTANT_TEXT"] = "производить ли сортировку незамедлительно.\n\nвключено: сортировка происходит как только что-либо меняется\n\nвыключено: сортировка происходит только при открытии окна или при ручном обновлении",
	["MOD_MENU_MAIN_SORTING_ASCENDING"] = "В порядке увеличения",
	["MOD_MENU_MAIN_SORTING_ASCENDING_TEXT"] = "производить сортировку в порядке увеличения или убывания?",

	["MOD_MENU_MAIN_SORTING_ORDER"] = "Порядок сортировки",
	["MOD_MENU_MAIN_SORTING_MOVE_UP"] = "Переместить вверх",
	["MOD_MENU_MAIN_SORTING_MOVE_UP_TEXT"] = "перемещает %1$s вверх в порядке сортировки",
	["MOD_MENU_MAIN_SORTING_MOVE_DOWN"] = "Переместить вниз",
	["MOD_MENU_MAIN_SORTING_MOVE_DOWN_TEXT"] = "перемещает %1$s вниз в порядке сортировки",
	["MOD_MENU_MAIN_SORTING_NOT_INCLUDED"] = "* не включено в сортировку *",

	["MOD_MENU_MAIN_EMPTY"] = "Пустые ячейки",
	["MOD_MENU_MAIN_EMPTY_ICON"] = "Использовать иконку",
	["MOD_MENU_MAIN_EMPTY_ICON_TEXT"] = "использовать иконку или сплошной цвет в качестве фона пустой ячейки?",
	["MOD_MENU_MAIN_EMPTY_BORDER"] = "Цветная кромка",
	["MOD_MENU_MAIN_EMPTY_BORDER_TEXT"] = "красить ли кромку пустой ячейки в соответствии с цветом типа сумки?",
	["MOD_MENU_MAIN_EMPTY_COLOUR"] = "Цвета ячеек",
	["MOD_MENU_MAIN_EMPTY_COLOUR_TEXT"] = "позволяет Вам изменять цвета ячеек",
	["MOD_MENU_MAIN_EMPTY_CLUMP"] = "Вместе",
	["MOD_MENU_MAIN_EMPTY_CLUMP_TEXT"] = "помещать ли пустые ячейки в тот же набор, что и непустые ячейки того же типа или расценивать их как отдельный тип?",
	["MOD_MENU_MAIN_EMPTY_SHOW"] = "Показывать количество",
	["MOD_MENU_MAIN_EMPTY_SHOW_TEXT"] = "отображать ли количество пустых ячеек на иконке сумки",
	["MOD_MENU_MAIN_EMPTY_SHOW_COLOUR"] = "Цвет",
	["MOD_MENU_MAIN_EMPTY_SHOW_COLOUR_TEXT"] = "задает цвет текста для количества пустых ячеек",

	["MOD_MENU_MAIN_MONITOR"] = "Следить",
	["MOD_MENU_MAIN_MONITOR_TEXT"] = "отслеживать ли изменения в данных %1$s для этого персонажа (%2$s)?",

	["MOD_MENU_MAIN_OFFLINE"] = "Оффлайн",
	["MOD_MENU_MAIN_OFFLINE_TEXT"] = "сохранять ли данные %1$s для этого персонажа (%2$s), чтобы они были доступны когда вы играете за другого персонажа?",

	["MOD_MENU_MAIN_HIDDEN"] = "Скрыть фреймы",
	["MOD_MENU_MAIN_HIDDEN_TITLE"] = "Заголовочный",
	["MOD_MENU_MAIN_HIDDEN_TITLE_TEXT"] = "скрыть заголовочный фрейм (тот, что сверху) окна %1$s",
	["MOD_MENU_MAIN_HIDDEN_CHANGER"] = "Сумки",
	["MOD_MENU_MAIN_HIDDEN_CHANGER_TEXT"] = "скрыть фрейм с иконками сумок в окне %1$s",
	["MOD_MENU_MAIN_HIDDEN_STATUS"] = "Статус",
	["MOD_MENU_MAIN_HIDDEN_STATUS_TEXT"] = "скрыть статус-фрейм (тот, где отображается количество денег и свободных ячеек) для окна %1$s",
	["MOD_MENU_MAIN_HIDDEN_BLIZZARD"] = "Blizzard",
	["MOD_MENU_MAIN_HIDDEN_BLIZZARD_TEXT"] = "скрыть стандартный интерфейс %2$s чтобы окно %1$s могло обрабатывать его действия.\n\nОтключение этой опции вернёт функционал стандартного %2$s.\n\nВы всё ещё сможете открыть %1$s %2$s когда эта опция выключена, но только используя специально назначенную клавишу",

	["MOD_MENU_MAIN_AUTO"] = "Автоматически открывать/закрывать",
	["MOD_MENU_MAIN_AUTO_OPEN"] = "Открывать",
	["MOD_MENU_MAIN_AUTO_CLOSE"] = "Закрывать",

	["MOD_MENU_MAIN_NEWITEM"] = "Новые предметы",
	["MOD_MENU_MAIN_NEWITEM_SHOW"] = "Отображать индикатор",
	["MOD_MENU_MAIN_NEWITEM_SHOW_TEXT"] = "отображать индикатор нового предмета в окне %s",
	["MOD_MENU_MAIN_NEWITEM_COLOUR"] = "Цвет текста",
	["MOD_MENU_MAIN_NEWITEM_COLOUR_TEXT"] = "задает цвет текста для индикатора нового предмета.",
	["MOD_MENU_MAIN_NEWITEM_RESET"] = "Сбросить",
	["MOD_MENU_MAIN_NEWITEM_RESET_TEXT"] = "сбросить метки нового предмета в этом окне",

	["MOD_MENU_MAIN_ACTIONS"] = "Действия",

	["MOD_MENU_MAIN_AUTO_BANK_OPEN_TEXT"] = "автоматически открывать окно %1$s когда Вы открываете Банк",
	["MOD_MENU_MAIN_AUTO_BANK_CLOSE_TEXT"] = "автоматически закрывать окно %1$s когда Вы покидаете Банк",
	["MOD_MENU_MAIN_AUTO_VAULT_OPEN_TEXT"] = "автоматически открывать окно %1$s когда Вы открываете Гильдийский Банк",
	["MOD_MENU_MAIN_AUTO_VAULT_CLOSE_TEXT"] = "автоматически закрывать окно %1$s когда Вы покидаете Гильдийский Банк",
	--["MOD_MENU_MAIN_AUTO_MAILBOX"] = "Почтовый ящик",
	["MOD_MENU_MAIN_AUTO_MAILBOX_OPEN_TEXT"] = "автоматически открывать окно %1$s когда Вы открываете Почтовый ящик",
	["MOD_MENU_MAIN_AUTO_MAILBOX_CLOSE_TEXT"] = "автоматически закрывать окно %1$s когда Вы отходите от Почтового ящика",
	["MOD_MENU_MAIN_AUTO_MERCHANT"] = "Продавец",
	["MOD_MENU_MAIN_AUTO_MERCHANT_OPEN_TEXT"] = "автоматически открывать окно %1$s когда вы начинаете диалог с Продавцом",
	["MOD_MENU_MAIN_AUTO_MERCHANT_CLOSE_TEXT"] = "автоматически закрывать окно %1$s когда вы уходите от Продавца",
	["MOD_MENU_MAIN_AUTO_TRADE"] = "Обмен",
	["MOD_MENU_MAIN_AUTO_TRADE_OPEN_TEXT"] = "автоматически открывать окно %1$s когда Вы открываете диалог Обмена",
	["MOD_MENU_MAIN_AUTO_TRADE_CLOSE_TEXT"] = "автоматически закрывать окно %1$s когда Вы закрываете диалог Обмена",
	["MOD_MENU_MAIN_AUTO_AUCTION"] = "Аукцион",
	["MOD_MENU_MAIN_AUTO_AUCTION_OPEN_TEXT"] = "автоматически открывать окно %1$s когда Вы открываете окно Аукциона",
	["MOD_MENU_MAIN_AUTO_AUCTION_CLOSE_TEXT"] = "автоматически закрывать окно %1$s когда вы покидаете Аукцион",
	["MOD_MENU_MAIN_AUTO_COMBAT"] = "Бой",
	["MOD_MENU_MAIN_AUTO_COMBAT_CLOSE_TEXT"] = "автоматически закрывать окно %1$s когда Вы входите в бой.",

	["MOD_MENU_MAIN_TOOLTIP"] = "Тултипы",
	["MOD_MENU_MAIN_TOOLTIP_ENABLE"] = "Включен",
	["MOD_MENU_MAIN_TOOLTIP_ENABLE_TEXT"] = "включить тултипы",
	["MOD_MENU_MAIN_TOOLTIP_ITEMCOUNT_ADD"] = "Показывать количество предметов",
	["MOD_MENU_MAIN_TOOLTIP_ITEMCOUNT_ADD_TEXT"] = "показывать ли количество предметов в тултипе?",
	["MOD_MENU_MAIN_TOOLTIP_ITEMCOUNT_COLOUR"] = "Цвет текста",
	["MOD_MENU_MAIN_TOOLTIP_ITEMCOUNT_COLOUR_TEXT"] = "задает цвет текста для количества предметов.",
	["MOD_MENU_MAIN_TOOLTIP_VENDOR_ADD"] = "Показывать цену продажи",
	["MOD_MENU_MAIN_TOOLTIP_VENDOR_ADD_TEXT"] = "показывать в тултипе цену продажи предмета продавцу.",
	["MOD_MENU_MAIN_TOOLTIP_VENDOR_COLOUR"] = "Цвет текста",
	["MOD_MENU_MAIN_TOOLTIP_VENDOR_COLOUR_TEXT"] = "задает цвет текста для цены продажи.",

	["MOD_MENU_MAIN_FONT"] = "Шрифт",
	["MOD_MENU_MAIN_FONT_TEXT"] = "задает шрифт для %s",

	["MOD_MENU_MAIN_LOCATION_STATUS"] = "Статус",
	["MOD_MENU_MAIN_LOCATION_STATUS_TEXT"] = "изменить настройки статуса окна %1$s для %2$s", -- location name, chacracter name

	["MOD_MENU_MAIN_REFRESH"] = "Обновить",
	["MOD_MENU_MAIN_REFRESH_TEXT"] = "обновляет окно",

	["MOD_MENU_MAIN_RELOAD"] = "Перезагрузить",
	["MOD_MENU_MAIN_RELOAD_TEXT"] = "перезагрузить окно. Используйти это действие, когда вы меняете сеты аутфита",

	["MOD_MENU_MAIN_EDITMODE"] = "Режим редактирования",
	["MOD_MENU_MAIN_EDITMODE_TEXT"] = "включает и выключает режим редактирования для изменения настроек наборов ячеек.",

	["MOD_MENU_MAIN_BAGCHANGE"] = "Сумки",
	["MOD_MENU_MAIN_BAGCHANGE_TEXT"] = "показать/скрыть фрейм сумок, в котором Вы можете добавлять или менять сумки",

	["MOD_MENU_MAIN_COMPRESS"] = "Сжать и собрать",
	["MOD_MENU_MAIN_COMPRESS_TEXT"] = "собрать предметы в как можно меньшее количество стэков, используя по возможности слоты специальных сумок",

	["MOD_MENU_MAIN_RULES"] = "Правила",
	--["MOD_MENU_MAIN_RULES_TEXT"] = "открыть окно Правил",

	["MOD_MENU_RULE_SHOWDISABLED"] = "Показывать отключенные правила",
	["MOD_MENU_RULE_SHOWDISABLED_TEXT"] = "отображать ли отключенные правила?",

	["MOD_MENU_MAIN_SEARCH"] = "Поиск",
	--["MOD_MENU_MAIN_SEARCH_TEXT"] = "открывает окно поиска предмета",


	-- item menu
	["MOD_MENU_ITEM_INFORMATION_TITLE"] = "Информация о предмете",
	["MOD_MENU_ITEM_ITEM"] = "Предмет",
	["MOD_MENU_ITEM_CURRENT_ASSIGNMENT"] = "Текущее назначение",
	["MOD_MENU_ITEM_DEFAULT_ASSIGNMENT"] = "Назначение по умолчанию",
	["MOD_MENU_ITEM_MOVE"] = "Переместить %1$s в набор",
	["MOD_MENU_ITEM_RULE_NEW"] = "Создать новое правило",
	["MOD_MENU_ITEM_RULE_ADD"] = "Добавить предмет в правило",
	["MOD_MENU_ITEM_DEBUG"] = "Отладочная информация",
	["MOD_MENU_ITEM_DEBUG_BAG"] = "Сумка",
	["MOD_MENU_ITEM_DEBUG_SLOT"] = "Ячейка",
	["MOD_MENU_ITEM_DEBUG_BAG_TYPE"] = "Тип",
	["MOD_MENU_ITEM_DEBUG_AI_ID"] = "AI ID",
	["MOD_MENU_ITEM_DEBUG_AI_CATEGORY"] = "Категория AI",
	["MOD_MENU_ITEM_DEBUG_NAME"] = "Название",
	["MOD_MENU_ITEM_DEBUG_QUALITY"] = "Качество",
	["MOD_MENU_ITEM_DEBUG_LVL_ITEM"] = "Уровень предмета (парам)",
	["MOD_MENU_ITEM_DEBUG_LVL_USE"] = "Уровень предмета (исп)",
	["MOD_MENU_ITEM_DEBUG_TYPE"] = "Тип",
	["MOD_MENU_ITEM_DEBUG_SUBTYPE"] = "Подтип",
	["MOD_MENU_ITEM_DEBUG_LOCATION"] = "Расположение",
	["MOD_MENU_ITEM_DEBUG_ID"] = "Blizzard ID",
	["MOD_MENU_ITEM_DEBUG_STACK"] = "Размер стэка",
	["MOD_MENU_ITEM_DEBUG_TEXTURE"] = "Текстура",
	["MOD_MENU_ITEM_DEBUG_FAMILY"] = "Семейство",
	["MOD_MENU_ITEM_DEBUG_PT"] = "PT Сеты",
	["MOD_MENU_ITEM_DEBUG_PT_TEXT"] = "Показывает в каких PT сетах находится этот предмет",
	["MOD_MENU_ITEM_DEBUG_PT_NONE"] = "этот предмет не состоит ни в одном PT сете",
	["MOD_MENU_ITEM_DEBUG_PT_TITLE"] = "PT сеты, в которых есть этот предмет",


	-- bar menu
	["MOD_MENU_BAR_INFORMATION_TITLE"] = "Настройки набора %1$s",
	["MOD_MENU_BAR_CATEGORY"] = "Категория",
	["MOD_MENU_BAR_CATEGORY_TEXT"] = "Закрепить категорию %1$s за этим набором",
	["MOD_MENU_BAR_CATEGORY_CURRENT"] = "текущее назначение",
	["MOD_MENU_BAR_CATEGORY_ASSIGN"] = "Возможные Категории",
	["MOD_MENU_BAR_CATEGORY_REMOVE"] = "Убрать",
	["MOD_MENU_BAR_CATEGORY_REMOVE_TEXT"] = "клик для удаления %1$s из набора %2$s и возврата в набор по умолчанию", -- 1 is the category name, 2 is the bar number
	["MOD_MENU_BAR_CATEGORY_HIDDEN"] = "Скрыть",
	["MOD_MENU_BAR_CATEGORY_HIDDEN_TEXT"] = "клик для назначения данной категории статуса скрытой.\n\nпредметы в скрытых категориях не будут видны в обычном режиме.",
	["MOD_MENU_BAR_CLEAR"] = "Очистить этот набор",
	["MOD_MENU_BAR_CLEAR_TEXT"] = "убирает все категории, закрепленные за этим набором, за исключением категории по умолчанию.",
	["MOD_MENU_BAR_INSERT"] = "Добавить пустой набор",
	["MOD_MENU_BAR_INSERT_TEXT"] = "добавить пустой набор ячеек сюда, сдвигая все категории на один набор вверх.",
	["MOD_MENU_BAR_REMOVE"] = "Убрать этот набор",
	["MOD_MENU_BAR_REMOVE_TEXT"] = "перемещает все категории, закрепленные за этим набором в их наборы по умолчанию и сдвигает все категории над этим набором на 1 набор вниз.\n\nЕсли категория по умолчанию находится в этом наборе, то она будет закреплена за набором 1",
	["MOD_MENU_BAR_MOVE_UP"] = "Переместить набор вверх",
	["MOD_MENU_BAR_MOVE_UP_TEXT"] = "меняет все категории, закрепленные за этим набором с набором, находящимся выше",
	["MOD_MENU_BAR_MOVE_DOWN"] = "Переместить набор вниз",
	["MOD_MENU_BAR_MOVE_DOWN_TEXT"] = "меняет все категории, закрепленные за этим набором с набором, находящимся ниже",


	-- bag menu
	["MOD_MENU_BAG_TITLE"] = "Настройки сумки",
	["MOD_MENU_BAG_SHOW"] = "Показывать",
	["MOD_MENU_BAG_SHOW_TEXT"] = "показывать содержимое этой сумки",
	["MOD_MENU_BAG_ISOLATE"] = "Изолировать",
	["MOD_MENU_BAG_ISOLATE_TEXT"] = "показывать содержимое только этой сумки",
	["MOD_MENU_BAG_SHOWALL"] = "Показывать всё",
	["MOD_MENU_BAG_SHOWALL_TEXT"] = "показывать содержимое всех сумок в этом окне",


	-- generic menu text
	["MOD_MENU_GENERIC_BOTTOMLEFT"] = "Нижний Левый",
	["MOD_MENU_GENERIC_BOTTOMRIGHT"] = "Нижний Правый",
	["MOD_MENU_GENERIC_TOPLEFT"] = "Верхний Левый",
	["MOD_MENU_GENERIC_TOPRIGHT"] = "Верхний Правый",
	["MOD_MENU_GENERIC_HORIZONTAL"] = "Горизонтально",
	["MOD_MENU_GENERIC_VERTICAL"] = "Вертикально",
	["MOD_MENU_GENERIC_CLOSE_MENU"] = "Закрыть меню",
	["MOD_MENU_GENERIC_ANCHOR"] = "Точка Закрепления",
	["MOD_MENU_GENERIC_ANCHOR_TEXT1"] = "задает точку закрепления (Anchor point)",
	["MOD_MENU_GENERIC_ANCHOR_TEXT2"] = "прикрепляет %1$s к %2$s",
	["MOD_MENU_GENERIC_BORDER"] = "Кромка",
	["MOD_MENU_GENERIC_BORDER_TEXT"] = "настройки кромки",
	["MOD_MENU_GENERIC_SHOW"] = "Показать",
	["MOD_MENU_GENERIC_FILE"] = "Файл",
	["MOD_MENU_GENERIC_HEIGHT"] = "Высота",
	["MOD_MENU_GENERIC_SCALE"] = "Масштаб",
	["MOD_MENU_GENERIC_BORDER_TEXTURE"] = "Текстура",
	["MOD_MENU_GENERIC_BORDER_TEXTURE_TEXT"] = "настройки текстуры кромки",
	["MOD_MENU_GENERIC_BORDER_TEXTURE_FILE_TEXT"] = "текстура, для использования на кромке (изменение этого параметра сбросит масштаб на 100%)",
	["MOD_MENU_GENERIC_BORDER_TEXTURE_HEIGHT_TEXT"] = "высота (в пикселах) текстуры",
	["MOD_MENU_GENERIC_FONT"] = "Шрифт",
	["MOD_MENU_GENERIC_COLOUR"] = "Цвет",


	-- rules frame
	["MOD_FRAME_RULE_RULE"] = "Правило",
	["MOD_FRAME_RULE_ENABLED"] = "Активно",
	["MOD_FRAME_RULE_HIDDEN"] = "Скрыто",
	["MOD_FRAME_RULE_ORDER"] = "Порядок",
	["MOD_FRAME_RULE_DESCRIPTION"] = "Описание",
	["MOD_FRAME_RULE_FORMULA"] = "Формула",
	["MOD_FRAME_RULE_SEARCH"] = "Поиск",
	["MOD_FRAME_RULE_VIEW"] = "Вид",
	["MOD_FRAME_RULE_ADD"] = "Добавить",
	["MOD_FRAME_RULE_EDIT"] = "Изменить",
	["MOD_FRAME_RULE_REMOVE"] = "Удалить",
	["MOD_FRAME_RULE_OK"] = "OK",
	["MOD_FRAME_RULE_CANCEL"] = "Отмена",

	["MOD_FRAME_RULE_LIST_ENABLED"] = "Использовать",
	["MOD_FRAME_RULE_LIST_DAMAGED"] = "Повреждено",
	["MOD_FRAME_RULE_LIST_ID"] = "Правило",
	["MOD_FRAME_RULE_LIST_ORDER"] = "Порядок",
	["MOD_FRAME_RULE_LIST_DESCRIPTION"] = "Описание",

	["RULE_DAMAGED"] = "Правило %s помечено как повреждённое и более не будет работать, пока Вы его не исправите.",
	["RULE_FAILED_NIL_KEY"] = "ОШИБКА: нет ключа",
	["RULE_FAILED_NIL_DATA"] = "ОШИБКА: нет данных",
	["RULE_FAILED_NIL_DESCRIPTION"] = "ОШИБКА: отсутствует описание",
	["RULE_FAILED_NIL_FORMULA"] = "ОШИБКА: отсутствует формула",


	-- new item indicators
	["NEW_ITEM_NEW"] = "НОВ",
	["NEW_ITEM_INCREASE"] = "+++",
	["NEW_ITEM_DECREASE"] = "- - -",


	-- debug
	["MOD_MENU_MAIN_DEBUG"] = "Режим отладки",
	["MOD_MENU_MAIN_DEBUG_TEXT"] = "использовать ли код режима отладки?",


	-- slash commands
	["SLASH_UI"] = "ui",
	["SLASH_UI_TEXT"] = "ui options",
	["SLASH_UI_RESET"] = "reset",
	["SLASH_UI_RESET_TEXT"] = "перемещает всё в центр экрана",
	["SLASH_UI_RESET_COMPLETE_TEXT"] = "все окна интерфейса перемещаются в центр экрана",
	["SLASH_DB"] = "db",
	["SLASH_DB_TEXT"] = "db options",
	["SLASH_DB_RESET"] = "reset",
	["SLASH_DB_RESET_TEXT"] = "сбросить все настройки",
	["SLASH_DB_RESET_CONFIRM"] = "confirm",
	["SLASH_DB_RESET_CONFIRM_TEXT"] = "подтверждает сброс базы данных",
	["SLASH_DB_RESET_COMPLETE_TEXT"] = "Профиль сброшен. Все настройки возвращены к значению по умолчанию.",
	["SLASH_CACHE"] = "cache",
	["SLASH_CACHE_TEXT"] = "cache options",
	["SLASH_CACHE_ERASE"] = "erase",
	["SLASH_CACHE_ERASE_TEXT"] = "очищает весь кэш",
	["SLASH_CACHE_ERASE_CONFIRM"] = "confirm",
	["SLASH_CACHE_ERASE_CONFIRM_TEXT"] = "подтверждает очистку кэша",
	["SLASH_CACHE_ERASE_COMPLETE_TEXT"] = "Сбросить все данные для всех персонажей",
	["SLASH_MISC"] = "misc",
	["SLASH_MISC_TEXT"] = "misc options",
	["SLASH_MISC_ALERT"] = "bug fix alerts",
	["SLASH_MISC_ALERT_TEXT"] = "изменяет как будут показаны сообщения о багфиксах",
	["SLASH_MISC_ALERT_DISABLE"] = "disable",
	["SLASH_MISC_ALERT_DISABLE_TEXT"] = "отключает сообщения о багфиксах",
	["SLASH_MISC_ALERT_SHORT"] = "short",
	["SLASH_MISC_ALERT_SHORT_TEXT"] = "показывать сокращённую версию сообщений о багфиксах",
	["SLASH_MISC_ALERT_LONG"] = "long",
	["SLASH_MISC_ALERT_LONG_TEXT"] = "показывать полную версию сообщений о багфиксах",


	-- misc chat stuff
	["MOD_ENABLED"] = "v%1$s Активирован. Наберите %2$s или %3$s для помощи.",
	["MOD_DISABLED"] = "v%1$s Деактивирован.",
	["PROFILE_UPGRADE"] = "Обновление профиля [%1$s] до %2$.2f",
	["RESTACK_FAILED_OFFLINE"] = "Невозможно сжать %s в режиме оффлайн",
	["RESTACK_FAILED_RUNNING"] = "Сжатие %s уже в процессе. Пожалуйста подождите...",
	["RESTACK_FAILED_LOCATION"] = "Сжатие %s не поддерживается",
	["MISC_ALERT"] = "Внимание!",
	["MISC_BUGFIX_SHORT"] = "Выполнен багфикс.",
	["MISC_BUGFIX_LONG"] = "FrameLevel для окна %1$s был равен %2$s и сброшен до %3$s для уверенной работоспособности. Извините за небольшой лаг, вызванный этим фиксом.",


	-- item count tooltip
	["TOOLTIP_COUNT_ME"] = ">", -- note: theres no space between this and your characters name so add a trailing space if you need one (depending on what you have here)
	["TOOLTIP_VENDOR"] = "Vendor",

} end )
