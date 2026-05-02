ArkInventory = AceLibrary( "AceAddon-2.0" ):new( "AceConsole-2.0", "AceEvent-2.0", "AceDB-2.0", "AceHook-2.1" )

ArkInventory.Localise = AceLibrary( "AceLocale-2.2" ):new( "ArkInventory" )

ArkInventory.Lib = { -- libraries live here
	PeriodicTable = AceLibrary( "LibPeriodicTable-3.1" ),
	DewDrop = AceLibrary( "Dewdrop-2.0" ),
	--Waterfall = AceLibrary( "Waterfall-1.0" ),
	SharedMedia = AceLibrary( "LibSharedMedia-3.0" ),
}

ArkInventory.Table = { } -- table functions live here, coded elsewhere

ArkInventory.Const = { -- constants

	Program = {
		Name = "ArkInventory",
		Version = 2.2707,
		UIVersion = "2.27.07",
		Beta = nil, --"2008-FEB-16-11-00",
		--PTR = false,
	},

	Frame = {
		Main = {
			Name = "ARKINV_Frame",
		},
		Title = {
			Name = "Title",
			Height = 58,
		},
		Container = {
			Name = "Container",
		},
		Log = {
			Name = "Log",
		},
		Changer = {
			Name = "Changer",
			Height = 58,
		},
		Status = {
			Name = "Status",
			Height = 40,
		},
		Menu = {
			Name = "Waterfall",
		},
		Scrolling = {
			List = "List",
			ScrollBar = "ScrollBar",
		},
	},
	
	Debug = false,
	
	Profiler = false,

	Location = {
		Bag = 1, -- hardcoded, do not change, should match xml id
		Key = 2, -- hardcoded, do not change, should match xml id
		Bank = 3, -- hardcoded, do not change, should match xml id
		Vault = 4, -- hardcoded, do not change, should match xml id
		Mail = 5, -- hardcoded, do not change, should match xml id
		Wearing = 6, -- hardcoded, do not change, should match xml id
	},

	Offset = {
		Vault = 1000,
		Mail = 2000,
		Wearing = 3000,
	},
	
	Bag = {
		Status = {
			Unknown = nil,
			Active = -1,
			Empty = -2,
			Purchase = -3,
		},
	},
	
	Slot = {
	
		Type = { -- slot type numbers, do not change this order, just add new ones to the end of the list
			Unknown = 0,
			Bag = 1,
			Key = 3,
			Soulshard = 5,
			Herb = 6,
			Enchanting = 7,
			Engineering = 8,
			Gem = 9,
			Mining = 10,
			Bullet = 11,
			Arrow = 12,
			Leatherworking = 13,
			Wearing = 14,
			Mail = 15,
		},

		New = {
			None = 0,
			New = 1,
			Increased = 2,
			Decreased = 3,
		},

		DefaultColour = {
			r = 0.3,
			g = 0.3,
			b = 0.3
		},

		Data = nil,
		
	},

	Anchor = {
		BottomRight = 1,
		BottomLeft = 2,
		TopLeft = 3,
		TopRight = 4,
	},
	
	Direction = {
		Horizontal = 1,
		Vertical = 2,
	},
	
	Window = {
	
		Offset = 9, -- hardcoded padding size for gap inside container
		
		Min = {
			Rows = 1,
			Columns = 6,
			Width = 400,
			Height = 40,
		},
		
		Draw = {
			Init = 0, -- first time
			Recalculate = 1, -- calculate
			Resort = 1, -- sort
			Refresh = 3, -- item changes
			None = 4, -- nothing
		},

	},

	Font = {
		Face = [[Friz Quadrata TT]],
	},
	
	Fade = 0.6,

	BAR_DEFAULT_COLOUR = { r = 0.0, g = 0.0, b = 0.4, a = 0.4 },

	InventorySlotName = { "HeadSlot", "NeckSlot", "ShoulderSlot", "BackSlot", "ChestSlot", "ShirtSlot", "TabardSlot", "WristSlot", "HandsSlot", "WaistSlot", "LegsSlot", "FeetSlot", "Finger0Slot", "Finger1Slot", "Trinket0Slot", "Trinket1Slot", "MainHandSlot", "SecondaryHandSlot", "RangedSlot" },

	Categories = {
	
		Default = -401,

		System = { -- do NOT change the indicies - if you have to then see the ConvertOldOptions() function to remap it
			[-401] = ArkInventory.Localise["CATEGORY_DEFAULT"],
			[-402] = ArkInventory.Localise["CATEGORY_TRASH"],
			[-403] = ArkInventory.Localise["CATEGORY_SOULBOUND"],
			[-404] = ArkInventory.Localise["CATEGORY_CONSUMABLE"],
			[-405] = ArkInventory.Localise["CATEGORY_CONTAINER"],
			[-406] = ArkInventory.Localise["CATEGORY_KEY"],
			[-407] = ArkInventory.Localise["CATEGORY_MISCELLANEOUS"],
			[-408] = ArkInventory.Localise["CATEGORY_REAGENT"],
			[-409] = ArkInventory.Localise["CATEGORY_RECIPE"],
			[-410] = ArkInventory.Localise["CATEGORY_PROJECTILE"],
			[-411] = ArkInventory.Localise["CATEGORY_QUEST"],
			[-412] = ArkInventory.Localise["CATEGORY_TRADE_GOODS"],
			[-413] = ArkInventory.Localise["CATEGORY_SOULSHARD"],
			[-414] = ArkInventory.Localise["CATEGORY_EQUIPMENT"],
			[-415] = ArkInventory.Localise["CATEGORY_MOUNT"],
			[-416] = ArkInventory.Localise["CATEGORY_EQUIPMENT_SOULBOUND"],
			[-417] = ArkInventory.Localise["CATEGORY_FOOD"],
			[-418] = ArkInventory.Localise["CATEGORY_DRINK"],
			[-419] = ArkInventory.Localise["CATEGORY_POTION_MANA"],
			[-420] = ArkInventory.Localise["CATEGORY_POTION_HEAL"],
			[-421] = ArkInventory.Localise["CATEGORY_PROJECTILE_BULLET"],
			[-422] = ArkInventory.Localise["CATEGORY_PROJECTILE_ARROW"],
			[-423] = ArkInventory.Localise["CATEGORY_PET_NONCOMBAT"],
			[-424] = ArkInventory.Localise["CATEGORY_POTION"],
			[-428] = ArkInventory.Localise["CATEGORY_REPUTATION"],
			[-429] = ArkInventory.Localise["CATEGORY_UNKNOWN"],
		},
		Skill = { -- do NOT change the indicies
			[-101] = ArkInventory.Localise["CATEGORY_SKILL_ALCHEMY"],
			[-102] = ArkInventory.Localise["CATEGORY_SKILL_BLACKSMITHING"],
			[-103] = ArkInventory.Localise["CATEGORY_SKILL_COOKING"],
			[-104] = ArkInventory.Localise["CATEGORY_SKILL_ENGINEERING"],
			[-105] = ArkInventory.Localise["CATEGORY_SKILL_ENCHANTING"],
			[-106] = ArkInventory.Localise["CATEGORY_SKILL_FIRST_AID"],
			[-107] = ArkInventory.Localise["CATEGORY_SKILL_FISHING"],
			[-108] = ArkInventory.Localise["CATEGORY_SKILL_HERBALISM"],
			[-109] = ArkInventory.Localise["CATEGORY_SKILL_JEWELCRAFTING"],
			[-110] = ArkInventory.Localise["CATEGORY_SKILL_LEATHERWORKING"],
			[-111] = ArkInventory.Localise["CATEGORY_SKILL_MINING"],
			[-112] = ArkInventory.Localise["CATEGORY_SKILL_SKINNING"],
			[-113] = ArkInventory.Localise["CATEGORY_SKILL_TAILORING"],
		},
		Class = { -- do NOT change the indicies
			[-201] = ArkInventory.Localise["CATEGORY_CLASS_DRUID"],
			[-202] = ArkInventory.Localise["CATEGORY_CLASS_HUNTER"],
			[-203] = ArkInventory.Localise["CATEGORY_CLASS_MAGE"],
			[-204] = ArkInventory.Localise["CATEGORY_CLASS_PALADIN"],
			[-205] = ArkInventory.Localise["CATEGORY_CLASS_PRIEST"],
			[-206] = ArkInventory.Localise["CATEGORY_CLASS_ROGUE"],
			[-207] = ArkInventory.Localise["CATEGORY_CLASS_SHAMAN"],
			[-208] = ArkInventory.Localise["CATEGORY_CLASS_WARLOCK"],
			[-209] = ArkInventory.Localise["CATEGORY_CLASS_WARRIOR"],
		},
		Empty = { -- do NOT change the indicies
			[-312] = ArkInventory.Localise["CATEGORY_EMPTY_UNKNOWN"],
			[-301] = ArkInventory.Localise["CATEGORY_EMPTY"],
			[-302] = ArkInventory.Localise["CATEGORY_EMPTY_BAG"],
			[-303] = ArkInventory.Localise["CATEGORY_EMPTY_KEY"],
			[-304] = ArkInventory.Localise["CATEGORY_EMPTY_SOULSHARD"],
			[-305] = ArkInventory.Localise["CATEGORY_EMPTY_HERB"],
			[-306] = ArkInventory.Localise["CATEGORY_EMPTY_ENCHANTING"],
			[-307] = ArkInventory.Localise["CATEGORY_EMPTY_ENGINEERING"],
			[-308] = ArkInventory.Localise["CATEGORY_EMPTY_GEM"],
			[-309] = ArkInventory.Localise["CATEGORY_EMPTY_MINING"],
			[-312] = ArkInventory.Localise["CATEGORY_EMPTY_LEATHERWORKING"],
			[-310] = ArkInventory.Localise["CATEGORY_EMPTY_PROJECTILE_BULLET"],
			[-311] = ArkInventory.Localise["CATEGORY_EMPTY_PROJECTILE_ARROW"],
		},
		Other = { -- do NOT change the indicies - if you have to then see the ConvertOldOptions() function to remap it
			[-425] = ArkInventory.Localise["CATEGORY_TRADE_GOODS_DEVICES"],
			[-426] = ArkInventory.Localise["CATEGORY_TRADE_GOODS_EXPLOSIVES"],
			[-427] = ArkInventory.Localise["CATEGORY_TRADE_GOODS_PARTS"],
			[-901] = ArkInventory.Localise["CATEGORY_CORE_MATS"],
			[-902] = ArkInventory.Localise["CATEGORY_FOOD_PET"],
		},
	
	},

	Texture = {
		Missing = [[Interface\Icons\Temp]],
		Empty = {
			Bag = [[Interface\PaperDoll\UI-PaperDoll-Slot-Bag]], -- [[Interface\PaperDoll\UI-PaperDoll-Slot-Bag]]
			Slot = [[Interface\PaperDoll\UI-Backpack-EmptySlot]], -- [[Interface\PaperDoll\UI-Backpack-EmptySlot]]
			Vault = [[Interface\PaperDoll\UI-PaperDoll-Slot-Bag]], -- [[Interface\PaperDoll\UI-PaperDoll-Slot-Bag]]
			Ammo = [[Interface\paperDoll\UI-PaperDoll-Slot-Ammo]], -- [[Interface\paperDoll\UI-PaperDoll-Slot-Ammo]]
			--Mail = [[]],
		},
		Action = {
			Refresh = [[Interface\Icons\Spell_Frost_Stun]],
			Edit = [[Interface\Icons\Trade_Engineering]],
			Changer = [[Interface\Icons\INV_Misc_EngGizmos_17]],
			Compress = [[Interface\Icons\Spell_Shadow_DestructiveSoul]],
			Rules = [[Interface\Icons\INV_Gizmo_02]],
			Search = [[Interface\Icons\INV_Misc_EngGizmos_20]],
		},
		Border = {
			["Tooltip"] = {
				["file"] = [[Interface\Tooltips\UI-Tooltip-Border]],
				["size"] = 16,
				["offset"] = 3,
			},
			["Dialog Box"] = {
				["file"] = [[Interface\DialogFrame\UI-DialogBox-Border]],
				["size"] = 32,
				["offset"] = 9,
			},
			["Solid"] = {
				["file"] = [[Interface\AddOns\ArkInventory\Images\BorderPlain2.tga]],
				["size"] = 8,
				["offset"] = 2,
			},
			["Minimap"] = {
				["file"] = [[Interface\Minimap\TooltipBackdrop]],
				["size"] = 16,
				["offset"] = 5,
			},
		},
	},
	
	SortKeys = {
		category = true,
		location = true,
		itemuselevel = true,
		itemstatlevel = true,
		itemtype = true,
		quality = true,
		name = true,
		vendorprice = false,
	},

	Skills = "ALCHEMY,BLACKSMITHING,ENCHANTING,ENGINEERING,JEWELCRAFTING,LEATHERWORKING,TAILORING,HERBALISM,MINING,SKINNING,COOKING,FIRST_AID,FISHING,RIDING", -- primary build, primary collect, secondary
	
	Classes = "DRUID,HUNTER,MAGE,PALADIN,PRIEST,ROGUE,SHAMAN,WARLOCK,WARRIOR",
	
	SlashCommandOptions = {
		type = "group",
		args = {
	
			ui = {
				type = "group",
				name = ArkInventory.Localise["SLASH_UI"],
				desc = ArkInventory.Localise["SLASH_UI_TEXT"],
				args = {
					reset = {
						type = "execute",
						name = ArkInventory.Localise["SLASH_UI_RESET"],
						desc = ArkInventory.Localise["SLASH_UI_RESET_TEXT"],
						func = function()
							for loc_id in ipairs( ArkInventory.Global.Location ) do
								getfenv()[ArkInventory.Const.Frame.Main.Name .. loc_id]:SetPoint( "CENTER", UiParent, "CENTER" )
							end
							ArkInventory.PrintPlus( { GREEN_FONT_COLOR_CODE, ArkInventory.Localise["SLASH_UI_RESET_COMPLETE_TEXT"] } )
						end
					},
				},
			},
			
			db = {
				type = "group",
				name = ArkInventory.Localise["SLASH_DB"],
				desc = ArkInventory.Localise["SLASH_DB_TEXT"],
				args = {
					reset = {
						type = "group",
						name = ArkInventory.Localise["SLASH_DB_RESET"],
						desc = ArkInventory.Localise["SLASH_DB_RESET_TEXT"],
						args = {
							confirm = {
								type = "execute",
								name = ArkInventory.Localise["SLASH_DB_RESET_CONFIRM"],
								desc = ArkInventory.Localise["SLASH_DB_RESET_CONFIRM_TEXT"],
								func = function() ArkInventory.DatabaseReset() end
							},
						},
					},
				},
			},
			
			cache = {
				type = "group",
				name = ArkInventory.Localise["SLASH_CACHE"],
				desc = ArkInventory.Localise["SLASH_CACHE_TEXT"],
				args = {
					erase = {
						type = "group",
						name = ArkInventory.Localise["SLASH_CACHE_ERASE"],
						desc = ArkInventory.Localise["SLASH_CACHE_ERASE_TEXT"],
						args = {
							confirm = {
								type = "execute",
								name = ArkInventory.Localise["SLASH_CACHE_ERASE_CONFIRM"],
								desc = ArkInventory.Localise["SLASH_CACHE_ERASE_CONFIRM_TEXT"],
								func = function() ArkInventory.OfflineDataErase() end
							},
						},
					},
				},
			},

			misc = {
				type = "group",
				name = ArkInventory.Localise["SLASH_MISC"],
				desc = ArkInventory.Localise["SLASH_MISC_TEXT"],
				args = {
					alert = {
						type = "group",
						name = ArkInventory.Localise["SLASH_MISC_ALERT"],
						desc = ArkInventory.Localise["SLASH_MISC_ALERT_TEXT"],
						args = {
							disable = {
								type = "execute",
								name = ArkInventory.Localise["SLASH_MISC_ALERT_DISABLE"],
								desc = ArkInventory.Localise["SLASH_MISC_ALERT_DISABLE_TEXT"],
								func = function()
									ArkInventory.db.account.option.bugfix_alert_framelevel = 0
									ArkInventory.PrintPlus( { ArkInventory.Localise["SLASH_MISC_ALERT"], " = ", ArkInventory.Localise["SLASH_MISC_ALERT_DISABLE"] } )
								end
							},
							short = {
								type = "execute",
								name = ArkInventory.Localise["SLASH_MISC_ALERT_SHORT"],
								desc = ArkInventory.Localise["SLASH_MISC_ALERT_SHORT_TEXT"],
								func = function()
									ArkInventory.db.account.option.bugfix_alert_framelevel = 1
									ArkInventory.PrintPlus( { ArkInventory.Localise["SLASH_MISC_ALERT"], " = ", ArkInventory.Localise["SLASH_MISC_ALERT_SHORT"] } )
								end
							},
							long = {
								type = "execute",
								name = ArkInventory.Localise["SLASH_MISC_ALERT_LONG"],
								desc = ArkInventory.Localise["SLASH_MISC_ALERT_LONG_TEXT"],
								func = function()
									ArkInventory.db.account.option.bugfix_alert_framelevel = 2
									ArkInventory.PrintPlus( { ArkInventory.Localise["SLASH_MISC_ALERT"], " = ", ArkInventory.Localise["SLASH_MISC_ALERT_LONG"] } )
								end
							},
						},
					},
				},
			},
			
		},
	},
	
	DatabaseDefaults = {
		["profile"] = { },
		["account"] = { },
	},
	
}

ArkInventory.Global = { -- globals

	Me = { },

	Mode = {
		Edit = false,
		Bank = false,
		Combat = false,
		Vault = false,
		Mail = false,
		Merchant = false,
	},

	ScanTooltip = nil,
	
	Category = { }, -- see Category_Generate() for how this gets populated

	Location = {
		
		[ArkInventory.Const.Location.Bag] = {
			Name = ArkInventory.Localise["LOCATION_BAG"],
			Texture = [[Interface\Icons\INV_Misc_Bag_07_Green]], --Interface\Buttons\Button-Backpack-Up
			Bags = { },
			
			layout = { },
			bar_max = 0,
			slot_max = { },
			
			offline = false,
			restack = true,
			
			hasChanger = true,
			canView = true,
			canOverride = true,

			draw_state = ArkInventory.Const.Window.Draw.Init,
		},
	
		[ArkInventory.Const.Location.Key] = {
			Name = KEYRING,
			Texture = [[Interface\Icons\INV_Misc_Key_03]],
			Bags = { },
			
			layout = { },
			bar_max = 0,
			slot_max = { },
			
			offline = false,
			restack = true,
			
			hasChanger = nil,
			canView = true,
			canOverride = true,
			
			draw_state = ArkInventory.Const.Window.Draw.Init,
		},

		[ArkInventory.Const.Location.Bank] = {
			Name = ArkInventory.Localise["LOCATION_BANK"],
			Texture = [[Interface\Icons\INV_Box_02]],
			Bags = { },
			
			layout = { },
			bar_max = 0,
			slot_max = { },
			
			offline = true,
			restack = true,
			
			hasChanger = true,
			canView = true,
			canOverride = true,
			canPurge = true,

			draw_state = ArkInventory.Const.Window.Draw.Init,
		},
	
		[ArkInventory.Const.Location.Vault] = {
			Name = GUILD_BANK,
			Texture = [[Interface\Icons\INV_Misc_Coin_02]],
			Bags = { },
			
			layout = { },
			bar_max = 0,
			slot_max = { },
			
			current_tab = 1,
	
			offline = true,
			restack = nil,
			
			hasChanger = true,
			canView = true,
			canOverride = true,
			canPurge = true,
			
			draw_state = ArkInventory.Const.Window.Draw.Init,
		},
	
		[ArkInventory.Const.Location.Mail] = {
			Name = MAIL_LABEL,
			Texture = [[Interface\Icons\INV_Letter_01]],
			Bags = { },
			
			layout = { },
			bar_max = 0,
			slot_max = { },
			
			offline = true,
			restack = nil,
			
			hasChanger = nil,
			canView = true,
			canOverride = nil,
			canPurge = true,
			
			draw_state = ArkInventory.Const.Window.Draw.Init,
		},

		[ArkInventory.Const.Location.Wearing] = {
			Name = ArkInventory.Localise["LOCATION_WEARING"],
			Texture = [[Interface\Icons\INV_Boots_05]],
			Bags = { },

			layout = { },
			bar_max = 0,
			slot_max = { },
	
			offline = false,
			restack = nil,
			
			hasChanger = nil,
			canView = true,
			canOverride = nil,

			draw_state = ArkInventory.Const.Window.Draw.Init,
		},

	},

	Cache = {
		Default = { }, -- key generated via ItemGetCacheIDCategory( i )
		-- Current = { } -- not cached in memory, use ArkInventory.db.profile.option.category[key] instead
		Rule = { }, -- key generated via ItemGetCacheIDRule( i )
--		Tooltip = { },  -- key generated via TooltipItemID( h )
		ItemCount = { }, -- key generated via TooltipItemID( h )
	},
	
	BAG_SLOT_SIZE = 32,

	Waterfall = {
		Tree = { },
	},
	
	Thread = {
		Restack = nil,
	},
	
}


ArkInventory.Const.Slot.Data = {
	[ArkInventory.Const.Slot.Type.Unknown] = {
		["item"] = 0,
		["name"] = ArkInventory.Localise["STATUS_NAME_UNKNOWN"],
		["long"] = ArkInventory.Localise["CATEGORY_EMPTY_UNKNOWN"],
		["colour"] = { r = 1.0, g = 0.0, b = 0.0 }, -- red
	},
	[ArkInventory.Const.Slot.Type.Key] = {
		["item"] = 0,
		["name"] = ArkInventory.Localise["STATUS_NAME_KEY"],
		["long"] = ArkInventory.Localise["CATEGORY_EMPTY_KEY"],
		["colour"] = { r = 1.0, g = 1.0, b = 0.0 }, -- yellow,
	},
	[ArkInventory.Const.Slot.Type.Bag] = {
		["item"] = 27680,
		["name"] = ArkInventory.Localise["STATUS_NAME_BAG"],
		["long"] = ArkInventory.Localise["CATEGORY_EMPTY_BAG"],
		["type"] = ArkInventory.Localise["WOW_ITEM_TYPE_CONTAINER_BAG"],
		["colour"] = ArkInventory.Const.Slot.DefaultColour,
	},
	[ArkInventory.Const.Slot.Type.Soulshard] = {
		["item"] = 21341,
		["name"] = ArkInventory.Localise["STATUS_NAME_SOULSHARD"],
		["long"] = ArkInventory.Localise["CATEGORY_EMPTY_SOULSHARD"],
		["type"] = ArkInventory.Localise["WOW_ITEM_TYPE_CONTAINER_SOULSHARD"],
		["colour"] = { r = 1.0, g = 0.0, b = 1.0 }, -- magenta
		--["pt"] = ArkInventory.Localise["PT_CONTAINS_SOULSHARD"],
	},
	[ArkInventory.Const.Slot.Type.Herb] = {
		["item"] = 22250,
		["name"] = ArkInventory.Localise["STATUS_NAME_HERB"],
		["long"] = ArkInventory.Localise["CATEGORY_EMPTY_HERB"],
		["type"] = ArkInventory.Localise["WOW_ITEM_TYPE_CONTAINER_HERB"],
		["colour"] = { r = 0.0, g = 1.0, b = 0.0 }, -- green
		--["pt"] = ArkInventory.Localise["PT_CONTAINS_HERB"],
	},
	[ArkInventory.Const.Slot.Type.Enchanting] = {
		["item"] = 30748,
		["name"] = ArkInventory.Localise["STATUS_NAME_ENCHANTING"],
		["long"] = ArkInventory.Localise["CATEGORY_EMPTY_ENCHANTING"],
		["type"] = ArkInventory.Localise["WOW_ITEM_TYPE_CONTAINER_ENCHANTING"],
		["colour"] = { r = 0.0, g = 0.0, b = 1.0 }, -- blue
		--["pt"] = ArkInventory.Localise["PT_CONTAINS_ENCHANTING"],
	},
	[ArkInventory.Const.Slot.Type.Engineering] = {
		["item"] = 30745,
		["name"] = ArkInventory.Localise["STATUS_NAME_ENGINEERING"],
		["long"] = ArkInventory.Localise["CATEGORY_EMPTY_ENGINEERING"],
		["type"] = ArkInventory.Localise["WOW_ITEM_TYPE_CONTAINER_ENGINEERING"],
		["colour"] = ArkInventory.Const.Slot.DefaultColour,
		--["pt"] = ArkInventory.Localise["PT_CONTAINS_ENGINEERING"],
	},
	[ArkInventory.Const.Slot.Type.Gem] = {
		["item"] = 30747,
		["name"] = ArkInventory.Localise["STATUS_NAME_GEM"],
		["long"] = ArkInventory.Localise["CATEGORY_EMPTY_GEM"],
		["type"] = ArkInventory.Localise["WOW_ITEM_TYPE_CONTAINER_GEM"],
		["colour"] = ArkInventory.Const.Slot.DefaultColour,
		--["pt"] = ArkInventory.Localise["PT_CONTAINS_GEM"],
	},
	[ArkInventory.Const.Slot.Type.Mining] = {
		["item"] = 30746,
		["name"] = ArkInventory.Localise["STATUS_NAME_MINING"],
		["long"] = ArkInventory.Localise["CATEGORY_EMPTY_MINING"],
		["type"] = ArkInventory.Localise["WOW_ITEM_TYPE_CONTAINER_MINING"],
		["colour"] = ArkInventory.Const.Slot.DefaultColour,
		--["pt"] = ArkInventory.Localise["PT_CONTAINS_MINING"],
	},
	[ArkInventory.Const.Slot.Type.Leatherworking] = {
		["item"] = 34482,
		["name"] = ArkInventory.Localise["STATUS_NAME_LEATHERWORKING"],
		["long"] = ArkInventory.Localise["CATEGORY_EMPTY_LEATHERWORKING"],
		["type"] = ArkInventory.Localise["WOW_ITEM_TYPE_CONTAINER_LEATHERWORKING"],
		["colour"] = ArkInventory.Const.Slot.DefaultColour,
		--["pt"] = ArkInventory.Localise["PT_CONTAINS_LEATHERWORKING"],
	},
	[ArkInventory.Const.Slot.Type.Bullet] = {
		["item"] = 5441,
		["name"] = ArkInventory.Localise["STATUS_NAME_PROJECTILE_BULLET"],
		["long"] = ArkInventory.Localise["CATEGORY_EMPTY_PROJECTILE_BULLET"],
		["type"] = ArkInventory.Localise["WOW_ITEM_TYPE_QUIVER_BULLET"],
		["texture"] = ArkInventory.Const.Texture.Empty.Ammo,
		["colour"] = { r = 1.0, g = 0.5, b = 0.15 }, -- orange
		["emptycolour"] = GREEN_FONT_COLOR_CODE,
		--["pt"] = ArkInventory.Localise["PT_CONTAINS_BULLET"],
	},
	[ArkInventory.Const.Slot.Type.Arrow] = {
		["item"] = 5439,
		["name"] = ArkInventory.Localise["STATUS_NAME_PROJECTILE_ARROW"],
		["long"] = ArkInventory.Localise["CATEGORY_EMPTY_PROJECTILE_ARROW"],
		["type"] = ArkInventory.Localise["WOW_ITEM_TYPE_QUIVER_ARROW"],
		["texture"] = ArkInventory.Const.Texture.Empty.Ammo,
		["colour"] = { r = 1.0, g = 0.5, b = 0.15 }, -- orange
		["emptycolour"] = GREEN_FONT_COLOR_CODE,
		--["pt"] = ArkInventory.Localise["PT_CONTAINS_ARROW"],
	},
	[ArkInventory.Const.Slot.Type.Wearing] = {
		["name"] = ArkInventory.Localise["STATUS_NAME_BAG"],
		["long"] = ArkInventory.Localise["CATEGORY_EMPTY_BAG"],
		["type"] = ArkInventory.Localise["WOW_ITEM_TYPE_CONTAINER_BAG"],
		["colour"] = ArkInventory.Const.Slot.DefaultColour,
	},
	[ArkInventory.Const.Slot.Type.Mail] = {
		["name"] = ArkInventory.Localise["STATUS_NAME_BAG"],
		["long"] = ArkInventory.Localise["CATEGORY_EMPTY_BAG"],
		["type"] = ArkInventory.Localise["WOW_ITEM_TYPE_CONTAINER_BAG"],
		["colour"] = ArkInventory.Const.Slot.DefaultColour,
	},
}


-- Binding Variables
BINDING_HEADER_ARKINV = ArkInventory.Const.Program.Name
BINDING_NAME_ARKINV_TOGGLE_BAG = ArkInventory.Localise["LOCATION_BAG"]
BINDING_NAME_ARKINV_TOGGLE_BANK = ArkInventory.Localise["LOCATION_BANK"]
BINDING_NAME_ARKINV_TOGGLE_KEY = KEYRING
BINDING_NAME_ARKINV_TOGGLE_VAULT = GUILD_BANK
BINDING_NAME_ARKINV_TOGGLE_MAIL = MAIL_LABEL
BINDING_NAME_ARKINV_TOGGLE_WEARING = ArkInventory.Localise["LOCATION_WEARING"]
BINDING_NAME_ARKINV_TOGGLE_EDIT = ArkInventory.Localise["MOD_MENU_MAIN_EDITMODE"]
BINDING_NAME_ARKINV_TOGGLE_RULES = ArkInventory.Localise["MOD_MENU_MAIN_RULES"]
BINDING_NAME_ARKINV_TOGGLE_SEARCH = ArkInventory.Localise["MOD_MENU_MAIN_SEARCH"]
BINDING_NAME_ARKINV_RESTACK_BAG = ArkInventory.Localise["MOD_MENU_MAIN_COMPRESS"]
BINDING_NAME_ARKINV_MENU = ArkInventory.Localise["MOD_FRAME_MENU"]


ArkInventory:RegisterChatCommand( { "/" .. ArkInventory.Const.Program.Name, "/arkinv", "/ai" }, ArkInventory.Const.SlashCommandOptions )

ArkInventory:RegisterDB( "ARKINVDB" )

ArkInventory.Const.DatabaseDefaults.profile = {
	["option"] = {
		["version"] = 0,
		["category"] = { }, -- ["item id"] = category number to put item in - only for system categories, rules are not included
		["rule"] = {
			["*"] = false, --[rule number] = true (enabled) / false (disabled)
		},
		["use"] = {
			["*"] = ArkInventory.Const.Location.Bag,
		},
		["location"] = {
			["*"] = {
				["window"] = {
					["scale"] = 1,
					["width"] = 16,
					["border"] = {
						["show"] = true,
						["file"] = nil,
						["size"] = nil,
					},
					["colour"] = {
						["background"] = {
							["r"] = 0,
							["g"] = 0,
							["b"] = 0,
							["a"] = 0.75,
						},
						["border"] = {
							["r"] = 1,
							["g"] = 1,
							["b"] = 1,
						},
						["baghighlight"] = {
							["r"] = 0,
							["g"] = 1,
							["b"] = 0,
						},
					},
					["pad"] = 8,
				},
				["bar"] = {
					["per"] = 5,
					["pad"] = {
						["internal"] = 8,
						["external"] = 8,
					},
					["border"] = {
						["show"] = true,
						["file"] = nil,
						["size"] = nil,
					},
					["colour"] = {
						["background"] = ArkInventory.Const.BAR_DEFAULT_COLOUR,
						["border"] = ArkInventory.Const.BAR_DEFAULT_COLOUR,
					},
					["showempty"] = false,
					["anchor"] = ArkInventory.Const.Anchor.BottomRight,
					["compact"] = false,
					["hide"] = false,
					["name"] = {
						["show"] = true,
						["colour"] = {
							["r"] = 1,
							["b"] = 1,
							["g"] = 1,
						},
						["label"] = {
							["*"] = "",
						},
					},
				},
				["slot"] = {
					["empty"] = {
						["alpha"] = 0.1,
						["icon"] = true,
						["border"] = true,
						["clump"] = false,
						["show"] = true,
						["colour"] = {
							["r"] = 1,
							["g"] = 1,
							["b"] = 1,
						},
					},
					["data"] = ArkInventory.Const.Slot.Data,
					["pad"] = 4,
					["border"] = {
						["show"] = true,
						["rarity"] = true,
						["file"] = nil,
						["size"] = nil,
						["offset"] = nil,
					},
					["ignorehidden"] = false,
					["anchor"] = ArkInventory.Const.Anchor.BottomRight,
					["new"] = {
						["show"] = false,
						["colour"] = {
							["r"] = 1,
							["g"] = 1,
							["b"] = 1,
						},
					},
					["offline"] = {
						["fade"] = true,
					},
				},
				["sort"] = {
					["ascending"] = true,
					["bagslot"] = true,
					["instant"] = false,
					["open"] = true,
					["reversed"] = false,
					["category"] = false,
					["location"] = false,
					["itemuselevel"] = false,
					["itemstatlevel"] = false,
					["itemtype"] = false,
					["quality"] = false,
					["name"] = false,
					--["vendorprice"] = false,
				},
				["sortorder"] = { },
				["category"] = { }, -- [category number] = bar number to put rule on
				["framehide"] = {
					["*"] = false,
				},
				["anchor"] = {
					["*"] = {
						["point"] = ArkInventory.Const.Anchor.TopRight,
						["locked"] = false,
						["t"] = 0,
						["b"] = 0,
						["l"] = 0,
						["r"] = 0,
					},
				},
			},
		},
		["font"] = {
			["name"] = nil,
		},
		["ui"] = {
			["search"] = {
				["scale"] = 1,
				["font"] = {
					["name"] = nil,
				},
				["border"] = {
					["show"] = true,
					["file"] = nil,
					["size"] = nil,
					["scale"] = nil,
					["colour"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
			},
			["rules"] = {
				["scale"] = 1,
				["font"] = {
					["name"] = nil,
				},
				["border"] = {
					["show"] = true,
					["file"] = nil,
					["size"] = nil,
					["scale"] = nil,
					["colour"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
			},
		},
	},
}

ArkInventory.Const.DatabaseDefaults.account = {
	["option"] = {
		["version"] = 0,
		["auto"] = {
			["open"] = {
				["*"] = true,
			},
			["close"] = {
				["*"] = true,
			},
		},
--[[
		["control"] = { -- which locations to take control of
			[ArkInventory.Const.Location.Bag] = true,
			[ArkInventory.Const.Location.Bank] = true,
			[ArkInventory.Const.Location.Key] = true,
			[ArkInventory.Const.Location.Vault] = true,
			["*"] = false,
		},
]]--
		["rule"] = { }, -- [rule number] = { rule data }
		["nextrule"] = 1,
		["showdisabled"] = true,
		["bugfix_alert_framelevel"] = 2,
		["tooltip"] = {
			["show"] = true, -- show tooltips for items
			["add"] = { -- things to add to the tooltip
				["count"] = true, -- item count
				["vendor"] = true, -- vendor price
			},
			["colour"] = {
				["count"] =  {
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0.15,
				},
				["vendor"] =  {
					["r"] = 0.5,
					["g"] = 0.5,
					["b"] = 0.5,
				},
			},
		},
	},
	["player"] = {
		["version"] = 0,
		["data"] = {
			["*"] = { -- player id
				["info"] = {
					["skills"] = { },
				},
				["monitor"] = {
					["*"] = true,
				},
				["offline"] = {
					["*"] = true,
				},
				["control"] = { -- which locations to take control of
					[ArkInventory.Const.Location.Bag] = true,
					[ArkInventory.Const.Location.Bank] = true,
					[ArkInventory.Const.Location.Key] = true,
					[ArkInventory.Const.Location.Vault] = true,
					["*"] = false,
				},
				["display"] = {
					["*"] = {
						["bag"] = {
							["*"] = true,
						},
					}
				},
			},
		},
	},
	["cache"] = {
		["version"] = 0,
--[[
		["realm"] = {
			["*"] = {
				["faction"] = {
					["*"] = {
						["character"] = {
							["*"] = {
								["location"] = {
									["*"] = {
										["bag"] = { },
										["slot_count"] = 0, -- total number of slots for this location
										["layout"] = {
											["container"] = { },
											["bar"] = { },
											["bar_count"] = 0,
										},
									},
								},
							},
						},
					},
				},
			},
		},
]]--
	},
	["vendor"] = { }, -- vendor price data

}

ArkInventory:RegisterDefaults( "profile", ArkInventory.Const.DatabaseDefaults.profile )
ArkInventory:RegisterDefaults( "account", ArkInventory.Const.DatabaseDefaults.account )


function ArkInventory.DatabaseReset()

	-- /ai db reset confirm

	ArkInventory.Frame_Main_Hide()

	ArkInventory:ResetDB( "profile" )
	
	ArkInventory.PrintPlus( { GREEN_FONT_COLOR_CODE, ArkInventory.Localise["SLASH_DB_RESET_COMPLETE_TEXT"] } )
	
	ArkInventory.Category_Generate()
	ArkInventory.LocationSetValue( nil, "resort", true )
	ArkInventory.ScanLocation()
	ArkInventory.Frame_Main_Generate( nil, ArkInventory.Const.Window.Draw.Recalculate )

end

function ArkInventory.OfflineDataErase( cp, arg2, silent )

	-- arg2 = location id

	-- /ai cache erase confirm

	-- hide the main windows
	ArkInventory.Frame_Main_Hide()

	-- hide the item frames already used
	for loc_id, loc in ipairs( ArkInventory.Global.Location ) do
		if arg2 == nil or arg2 == loc_id then
			for _, bag_id in pairs( loc.Bags ) do
				for slot_id = 1, loc.slot_max[bag_id] or 0 do
					local framename = ArkInventory.ContainerItemNameGet( loc_id, bag_id, slot_id )
					local frame = getfenv()[framename]
					if frame then
						frame:Hide()
					end	
				end
			end
		end
	end
	

	if not cp then
	
		-- clear the saved data for all characters
	
		ArkInventory.Table.Clean( ArkInventory.db.account.cache, "realm", true )

		if not silent then
			ArkInventory.PrintPlus( { ArkInventory.Localise["SLASH_CACHE_ERASE_COMPLETE_TEXT"], " - ", ArkInventory.Localise["STATUS_FINISH"] } )
		end
	
	else
	
		local n
		
		if arg2 == nil then
			-- clear the saved data for one character
			ArkInventory.Table.Clean( ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character, cp.name, true )
			n = string.format( ArkInventory.Localise["MOD_MENU_MAIN_SWITCH_CHARACTER_ERASE_TEXT"], ArkInventory.Localise["LOCATION_ALL"], cp.display2 )
		else
			-- clear the saved data for one character for one location
			ArkInventory.Table.Clean( ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location, arg2, true )
			n = string.format( ArkInventory.Localise["MOD_MENU_MAIN_SWITCH_CHARACTER_ERASE_TEXT"], ArkInventory.Global.Location[arg2].Name, cp.display2 )
		end
		
		if not silent then
			ArkInventory.PrintPlus( { n, " - ", ArkInventory.Localise["STATUS_FINISH"] } )
		end
	
	end

	-- init
	ArkInventory.PlayerInfoSet()
	ArkInventory.Category_Generate()
	ArkInventory.LocationSetValue( nil, "resort", true )
	ArkInventory.Frame_Main_Generate( nil, ArkInventory.Const.Window.Draw.Init )
	
end

function ArkInventory.LocationCacheSetup( loc_id, cp )

	local tbl = ArkInventory.db.account.cache
	
	if not tbl["realm"] then
		tbl["realm"] = { }
	end
	tbl = tbl.realm
	
	if not tbl[cp.realm] then
		tbl[cp.realm] = { }
	end
	tbl = tbl[cp.realm]

	if not tbl["faction"] then
		tbl["faction"] = { }
	end
	tbl = tbl.faction
	
	if not tbl[cp.faction] then
		tbl[cp.faction] = { }
	end
	tbl = tbl[cp.faction]
	
	if not tbl["character"] then
		tbl["character"] = { }
	end
	tbl = tbl.character
	
	if not tbl[cp.name] then
		tbl[cp.name] = { }
	end
	tbl = tbl[cp.name]
	
	tbl["player_id"] = cp.player_id
	
	if not tbl["location"] then
		tbl["location"] = { }
	end
	tbl = tbl.location
	
	if not tbl[loc_id] then
		tbl[loc_id] = {
			["bag"] = { },
		}
	end
	tbl = tbl[loc_id]
	
	for _, bag_id in pairs( ArkInventory.Global.Location[loc_id].Bags ) do
	
		if not tbl.bag[bag_id] then
			tbl.bag[bag_id] = { }
		end
		
		local tbl2 = tbl.bag[bag_id]
		
		if not tbl2["count"] then
			tbl2["count"] = 0
		end
		
		if not tbl2["empty"] then
			tbl2["empty"] = 0
		end
		
		if not tbl2.slot then
			tbl2["slot"] = { }
		end
		
		if not tbl2["type"] then
			tbl2["type"] = ArkInventory.Const.Slot.Type.Unknown
		end
		
	end
	
end

function ArkInventory.Table.Sum( tbl, fcn )
	local r = 0
	for k, v in pairs( tbl ) do
		r = r + ( fcn( v ) or 0 )
	end
	return r
end

function ArkInventory.Table.Max( tbl, fcn )
	local r = nil
	for k, v in pairs( tbl ) do
		if not r then
			r = ( fcn( v ) or 0 )
		else
			if ( fcn( v ) or 0 ) > r then
				r = ( fcn( v ) or 0 )
			end
		end
	end
	return r
end

function ArkInventory.Table.Elements( tbl )
	-- #table only returns the number of elements where the table keys are numeric and does not take into account missing values
	local r = 0
	for _, _ in pairs( tbl ) do
		r = r + 1
	end
	return r
end

function ArkInventory.Table.Concat2( t, d )

	if type( t ) ~= "table" then
		return t
	end
	
	local n = { }
	
	for i in pairs( t ) do
	
		if t[i] ~= nil then
		
			local z = type( t[i] )
		
			if z == "table" then
				tinsert( n, "[" .. i .. "]={ " .. ArkInventory.Table.Concat2( t[i], ", " ) .. " }" )
				--tinsert( n, i .. "={table}" )
			elseif z == "boolean" then
				if t[i] then
					tinsert( n, "[" .. i .. "]=true" )
				else
					tinsert( n, "[" .. i .. "]=false" )
				end
			elseif z == "string" or z == "number" then
				tinsert( n, "[" .. i .. "]=" .. t[i] )
			else
				tinsert( n, "[" .. i .. "]=**" .. z .. "**" )
			end
			
		else
			tinsert( n, "[" .. i .. "]=nil" )
		end
		
	end

	if d then
		return table.concat( n, d )
	else
		return table.concat( n )
	end
	
end

function ArkInventory.Table.Concat( t, d )

	if type( t ) ~= "table" then
		return t
	end
	
	local n = { }
	
	local mx = 0
	for k, v in pairs( t ) do
		if k > mx then mx = k end
	end
	
	if mx == 0 then return "nil" end
	
	for i = 1, mx do
	
		if t[i] ~= nil then
		
			local z = type( t[i] )
	
			if z == "table" then
				tinsert( n, "{ " .. ArkInventory.Table.Concat2( t[i], ", " ) .. " }" )
				--tinsert( n, "{table}" )
			elseif z == "boolean" then
				if t[i] then
					tinsert( n, "true" )
				else
					tinsert( n, "false" )
				end
			elseif z == "string" or z == "number" then
				tinsert( n, t[i] )
			else
				tinsert( n, "**" .. z .. "**" )
			end
		else
			tinsert( n, "nil" )
		end
	end

	if d then
		return table.concat( n, d )
	else
		return table.concat( n )
	end
	
end

function ArkInventory.Table.Clean( tbl, key, full )

	-- tbl = table to be cleaned

	-- key = a specific key you want cleaned (nil for all keys)

	-- sub (true) = if a value is a table then clean it as well
	-- sub (false) = only clean the values from this table

	-- full (true) = if a value is a table then nil it as well
	-- full (false) = if a value is a table then leave the skeleton there
	
	if type( tbl ) ~= "table" then
		return
	end
	
	local sub = true
	
	for k, v in pairs( tbl ) do
		
		if key == nil or key == k then
		
			if type( v ) == "table" then
			
				if sub then
					--ArkInventory.PrintPlus( { "cleaning subtable ", k } )
					ArkInventory.Table.Clean( v, nil, full )
				end
				
				if full then
					--ArkInventory.PrintPlus( { "erasing subtable ", k } )
					tbl[k] = nil
				end
				
			else
			
				--ArkInventory.PrintPlus( { "erasing value ", k } )
				tbl[k] = nil

			end
			
		end
		
	end

end

function ArkInventory.spairs( tbl, comparator )

	if type( tbl ) ~= "table" then
		return
	end
	
	local sortedKeys = {}
	for k in pairs( tbl ) do
		tinsert( sortedKeys, k )
	end
	
	sort( sortedKeys, comparator )
	
	local i = 0
	local function _f( _s, _v )
		i = i + 1
		local k = sortedKeys[i]
		if k ~= nil then
			return k, tbl[k]
		end
	end
	
	return _f, nil, nil

end

function ArkInventory.nilStringEmpty( arg )
	if arg == nil then arg = "" end
	return tostring( arg )
end

function ArkInventory.nilStringText( arg )
	if arg == nil then arg = "nil" end
	return tostring( arg )
end

function ArkInventory.round( n, dp )
	local m = 10 ^ ( dp or 0 )
	return math.floor( n * m + 0.5 ) / m
end

function ArkInventory.DebugTimeDiff( t )

	if not t or type( t ) ~= "number" then return -1 end
	
	return math.floor( ( GetTime() - t ) * 1000 + 0.5 )

end

function ArkInventory.ClassColourRGB( class )

	if not class then
		return
	end
	
	local c = RAID_CLASS_COLORS[class]
	
	if class == "GUILD" then
		c = { r = 1, g = 0.5, b = 0.15 }
	end
	
	if not c then
		return
	end
	
	c.r = c.r <= 1 and c.r >= 0 and c.r or 0
	c.g = c.g <= 1 and c.g >= 0 and c.g or 0
	c.b = c.b <= 1 and c.b >= 0 and c.b or 0
	
	return c

end

function ArkInventory.ClassColour( class )

	local c = ArkInventory.ClassColourRGB( class )
	
	if not c then
		return FONT_COLOR_CODE_CLOSE
	end
	
	return string.format( "|cff%02x%02x%02x", c.r * 255, c.g * 255, c.b * 255 )

end

function ArkInventory.PrintPlus( msg_in, debuginfo )

	-- local msg = { date( "%X" ), " " }
	local msg = { }
	if debuginfo then
		msg = { string.sub( string.format( "%05.3f", GetTime() ), -6 ), " " }
	end
	
	if msg_in == nil then
	
		tinsert( msg, "nil" )
	
	elseif type( msg_in ) == "table" then
	
		tinsert( msg, ArkInventory.Table.Concat( msg_in ) )
	
	else
	
		tinsert( msg, msg_in )
	
	end
	
	if debuginfo and debuginfo["m"] and debuginfo["t"] then
		tinsert( msg, " [" )
		tinsert( msg, gcinfo() - debuginfo.m )
		tinsert( msg, "Kb / " )
		tinsert( msg, ArkInventory.DebugTimeDiff( debuginfo.t ) )
		tinsert( msg, "ms]" )
	end
	
	ArkInventory:Print( table.concat( msg ) )
	
end
	
function ArkInventory.Debug( msgdata, debuginfo )
	if ArkInventory.Const.Debug and DEFAULT_CHAT_FRAME then
		ArkInventory.PrintPlus( msgdata, debuginfo )
	end
end




function ArkInventory.PT_ItemInSets( item, setnames )

	if not item or not setnames then return false end

	for setname in string.gmatch( setnames, "[^,]+" ) do
		
		local r = ArkInventory.Lib.PeriodicTable:ItemInSet( item, strtrim( setname ) )
		if r then
			return true
		end
		
	end

	return false
	
end

function ArkInventory.ItemGetTexture( h )

	local t = GetItemIcon( h )
	
	if t == nil then
		t = ArkInventory.Const.Texture.Missing
	end
	
	return t
	
end

function ArkInventory.ItemGetID( h )
	local id, suffix, enchant, _, j1, j2, j3, j4 = ArkInventory.ItemStringDecode( h )
	return string.format( "%s:%s:%s:%s:%s:%s:%s", id, enchant, suffix, j1, j2, j3, j4 )
end

function ArkInventory.ItemGetName( h )
	return select( 1, ArkInventory.ItemInfoGet( h ) )
end

function ArkInventory.ItemInfoGet( obj )

	if obj ~= nil then
	
		local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture = GetItemInfo( obj )
		itemTexture = ArkInventory.ItemGetTexture( obj )
		
		return itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture
		
	end
	
end

function ArkInventory.ItemStringDecode( itemLink )
	
	local id, enchant, j1, j2, j3, j4, suffix, unique
	
	if type( itemLink ) == "number" then
		id = itemLink
	elseif type( itemLink ) == "string" then
		-- item:itemId:enchantId:jewelId1:jewelId2:jewelId3:jewelId4:suffixId:uniqueId
		id, enchant, j1, j2, j3, j4, suffix, unique = strmatch( ( itemLink or "" ), "item:(%-?%d+):(%-?%d+):(%-?%d+):(%-?%d+):(%-?%d+):(%-?%d+):(%-?%d+):(%-?%d+)" )
	end
	
	id = tonumber( id ) or 0
	suffix = tonumber( suffix ) or 0
	enchant = tonumber( enchant ) or 0
	unique = tonumber( unique ) or 0
	enchant = tonumber( enchant ) or 0
	j1 = tonumber( j1 ) or 0
	j2 = tonumber( j2 ) or 0
	j3 = tonumber( j3 ) or 0
	j4 = tonumber( j4 ) or 0
	
	return id, suffix, enchant, unique, j1, j2, j3, j4
	
end

function ArkInventory.ItemGetCacheIDRule( i )

	local soulbound = 0
	if i.sb then soulbound = 1 end
	
	--return string.format( "%i:%s", soulbound, i.id )
	return string.format( "%i:%i:%i:%s", i.bag_id, i.slot_id, soulbound, i.id )
	
end

function ArkInventory.ItemGetCacheIDCategory( i )

	local soulbound = 0
	if i.sb then
		soulbound = 1
	end
	
	local item_id = ArkInventory.ItemStringDecode( i.h )
	
	return string.format( "%s:%s", soulbound or 0, item_id )
	
end

function ArkInventory.PlayerInfoSet( w )
	
	--ArkInventory.PrintPlus( { "PlayerInfoSet()" } )
	
	if type( w ) ~= "table" then
		w = { }
	end
	
	w["realm"] = GetRealmName()
	w["faction"], w["faction_local"] = UnitFactionGroup( "player" )
	w["name"] = UnitName( "player" )
	w["player_id"] = ArkInventory.PlayerIDGenerate( w.realm, w.faction, w.name )
	
	-- WARNING, most of this stuff is not available upon first login, even when the mod gets to OnEnabled (ui reloads are fine), and some are not available on logout
	
	w["guild"] = GetGuildInfo( "player" ) -- usually nil on login and for a short time after that as well
	if w.guild then
		w["guild_id"] = ArkInventory.GuildIDGenerate( w.realm, w.faction, w.guild )
	end
	
	w["level"] = UnitLevel( "player" )
	w["race_local"], w["race"] = UnitRace( "player" )
	w["gender"] = UnitSex( "player" )
	
	if GetMoney() > 0 then  -- returns 0 on logout so dont wipe the current value
		w["money"] = GetMoney()
	end
	
	w["class_local"], w["class"] = UnitClass( "player" )
	
	w["display"] = string.format( "%s\n%s > %s", w.name, w.faction_local, w.realm ) -- window titles
	w["display2"] = string.format( "%s > %s > %s", w.realm, w.faction_local, w.name ) -- switch menu
	w["display3"] = w.name  -- tooltip item count

	local p = ArkInventory.db.account.player.data[w.player_id].info
	for k, v in pairs( w ) do
		p[k] = v
	end
	
	if w.guild then
	
		local g = { }
		
		g["realm"] = w.realm
		g["faction"], g["faction_local"] = w.faction, w.faction_local
		g["name"] = "+" .. w.guild
		g["player_id"] = w.guild_id
		
		g["guild"] = w.guild
		g["guild_id"] = w.guild_id
		
		g["level"] = 0
		
		g["money"] = GetGuildBankMoney()
		
		g["class_local"], g["class"] = GUILD, "GUILD"
		
		g["display"] = string.format( "%s\n%s > %s", g.guild, g.faction_local, g.realm )
		g["display2"] = string.format( "%s > %s > %s", g.realm, g.faction_local, g.guild )
		g["display3"] = w.guild
	
		local p = ArkInventory.db.account.player.data[g.player_id].info
		for k, v in pairs( g ) do
			p[k] = v
		end
	
	end
	
end

function ArkInventory.PlayerInfoGet( id )
	--ArkInventory.PrintPlus( { "id=[", id, "]" } )
	if ArkInventory.db.account.player.data[id] then
		return ArkInventory.db.account.player.data[id].info
	end
end

function ArkInventory.PlayerIDGenerate( r, f, n )
	return string.format( "%s!%s!%s", r, f, n )
end

function ArkInventory.GuildIDGenerate( r, f, g )
	--ArkInventory.PrintPlus( { "r=[", r, "], f=[", f, "], g=[", g, "]" } )
	return string.format( "%s!%s!+%s", r, f, g )
end

function ArkInventory.LocationPlayerInfoGet( loc_id )

	if loc_id == nil or ArkInventory.Global.Location[loc_id].player_id == nil then
		ArkInventory.PrintPlus( { "player id not set for location (", loc_id, ")" } )
		assert( false, "code error" )
	end

	--ArkInventory.PrintPlus( { "LocationPlayerInfoGet( ", loc_id, " ) player id=[", ArkInventory.Global.Location[loc_id].player_id, "]" } )
	local cp = ArkInventory.PlayerInfoGet( ArkInventory.Global.Location[loc_id].player_id )
	
	if cp == nil then
		ArkInventory.PrintPlus( { "invalid player id (", player_id, ") at location (", loc_id, ")" } )
		assert( false, "code error" )
	end
	
	if loc_id == ArkInventory.Const.Location.Vault then
	
		local guild_id = cp.guild_id
		if guild_id then
			--ArkInventory.PrintPlus( { "shift to guild (", guild_id, ")" } )
			cp = ArkInventory.PlayerInfoGet( guild_id )

			if cp == nil then
				ArkInventory.PrintPlus( { "player id (", player_id, ") has an invalid guild id (", guild_id, ") at location (", loc_id, ")" } )
				assert( false, "code error" )
			end
		end
		
	end
	
	return cp
	
end

function ArkInventory.OnInitialize()

	-- Called when the addon is loaded

	ArkInventory.PlayerInfoSet( ArkInventory.Global.Me )
	--ArkInventory.PrintPlus( { "init player id = ", ArkInventory.Global.Me.player_id } )
	
	-- setup bag id's for player
	tinsert( ArkInventory.Global.Location[ArkInventory.Const.Location.Bag].Bags, BACKPACK_CONTAINER )
	for x = 1, NUM_BAG_SLOTS do
		tinsert( ArkInventory.Global.Location[ArkInventory.Const.Location.Bag].Bags, x )
	end

	-- setup bag id's for keyring
	tinsert( ArkInventory.Global.Location[ArkInventory.Const.Location.Key].Bags, KEYRING_CONTAINER )

	-- setup bag id's for bank
	tinsert( ArkInventory.Global.Location[ArkInventory.Const.Location.Bank].Bags, BANK_CONTAINER )
	for x = NUM_BAG_SLOTS + 1, NUM_BAG_SLOTS + NUM_BANKBAGSLOTS do
		tinsert( ArkInventory.Global.Location[ArkInventory.Const.Location.Bank].Bags, x )
	end

	-- setup tab id's for vault
	for x = 1, MAX_GUILDBANK_TABS do
		tinsert( ArkInventory.Global.Location[ArkInventory.Const.Location.Vault].Bags, ArkInventory.Const.Offset.Vault + x )
	end
	
	-- setup bag id for mail
	tinsert( ArkInventory.Global.Location[ArkInventory.Const.Location.Mail].Bags, ArkInventory.Const.Offset.Mail + 1 )
	
	-- setup bag id for wearing
	tinsert( ArkInventory.Global.Location[ArkInventory.Const.Location.Wearing].Bags, ArkInventory.Const.Offset.Wearing + 1 )
	
	ArkInventory.Global.ScanTooltip = ARKCORE_Class_ScanTooltip:new( "ARKINV_ScanTooltip" )
	
	--ArkInventory.MenuMainWaterfallRegister()
	
end

function ArkInventory.OnEnable()

	-- Called when the addon is enabled

	ArkInventory.PlayerInfoSet( ArkInventory.Global.Me )
	
	ArkInventory.ConvertOldOptions()
	ArkInventory.OfflineDataCleanup()
	ArkInventory.Category_Generate()
	
	ArkInventory.BlizzardAPIHooks()

	-- tag all locations as changed
	ArkInventory.LocationSetValue( nil, "changed", true )
	
	-- tag all locations as needing resorting/recategorisation
	ArkInventory.LocationSetValue( nil, "resort", true )
	
	-- init location player_id
	ArkInventory.LocationSetValue( nil, "player_id", ArkInventory.Global.Me.player_id )


	-- register for events

	ArkInventory:RegisterBucketEvent( "EVENT_ARKINVENTORY_BAG_UPDATE_BUCKET", 0.5 )
	
	ArkInventory:RegisterEvent( "BAG_UPDATE", "EVENT_WOW_BAG_UPDATE" )
	ArkInventory:RegisterEvent( "PLAYERBANKSLOTS_CHANGED", "EVENT_WOW_PLAYERBANKSLOTS_CHANGED" ) -- a bag_update event for the bank (-1)

	ArkInventory:RegisterEvent( "PLAYERBANKBAGSLOTS_CHANGED", "EVENT_WOW_PLAYERBANKBAGSLOTS_CHANGED" ) -- triggered when you purchase a new bank bag slot
	
	ArkInventory:RegisterEvent( "PLAYER_ENTERING_WORLD", "EVENT_WOW_PLAYER_ENTERING_WORLD" ) -- not really needed but seems to fix a bug where ace doesnt seem to init again
	ArkInventory:RegisterEvent( "PLAYER_LEAVING_WORLD", "EVENT_WOW_PLAYER_LEAVING_WORLD" ) --when the player logs out or the UI is reloaded.

	ArkInventory:RegisterEvent( "ITEM_LOCK_CHANGED", "EVENT_WOW_ITEM_LOCK_CHANGED" )
	
	ArkInventory:RegisterEvent( "PLAYER_REGEN_DISABLED", "EVENT_WOW_PLAYER_REGEN_DISABLED" ) -- player about to enter combat
	ArkInventory:RegisterEvent( "PLAYER_REGEN_ENABLED", "EVENT_WOW_PLAYER_REGEN_ENABLED" ) -- player left combat

	ArkInventory:RegisterEvent( "BANKFRAME_OPENED", "EVENT_WOW_BANKFRAME_OPENED" )
	ArkInventory:RegisterEvent( "BANKFRAME_CLOSED", "EVENT_WOW_BANKFRAME_CLOSED" )
	
	ArkInventory:RegisterEvent( "GUILDBANKFRAME_OPENED", "EVENT_WOW_GUILDBANKFRAME_OPENED" )
	ArkInventory:RegisterEvent( "GUILDBANKFRAME_CLOSED", "EVENT_WOW_GUILDBANKFRAME_CLOSED" )
	ArkInventory:RegisterEvent( "GUILDBANK_ITEM_LOCK_CHANGED", "EVENT_WOW_GUILDBANK_ITEM_LOCK_CHANGED" )
	ArkInventory:RegisterEvent( "GUILDBANKBAGSLOTS_CHANGED", "EVENT_WOW_GUILDBANKBAGSLOTS_CHANGED" )
	ArkInventory:RegisterEvent( "GUILDBANK_UPDATE_MONEY", "EVENT_WOW_GUILDBANK_UPDATE_MONEY" )
	ArkInventory:RegisterEvent( "GUILDBANK_UPDATE_TABS", "EVENT_WOW_GUILDBANK_UPDATE_TABS" )
	--ArkInventory:RegisterEvent( "GUILDBANK_UPDATE_WITHDRAWMONEY", "EVENT_WOW_GUILDBANK_UPDATE_WITHDRAWMONEY" ) -- seems to trigger the main update anyway
	ArkInventory:RegisterEvent( "GUILDBANKLOG_UPDATE", "EVENT_WOW_GUILDBANKLOG_UPDATE" )

	ArkInventory:RegisterEvent( "MAIL_SHOW", "EVENT_WOW_MAIL_SHOW" )
	ArkInventory:RegisterEvent( "MAIL_CLOSED", "EVENT_WOW_MAIL_CLOSED" )
	ArkInventory:RegisterEvent( "MAIL_INBOX_UPDATE", "EVENT_WOW_MAIL_INBOX_UPDATE" )
	ArkInventory:RegisterBucketEvent( "EVENT_ARKINVENTORY_MAIL_INBOX_UPDATE_BUCKET", 0.5 )
	
	ArkInventory:RegisterEvent( "TRADE_SHOW", "EVENT_WOW_TRADE_SHOW" )
	ArkInventory:RegisterEvent( "TRADE_CLOSED", "EVENT_WOW_TRADE_CLOSED" )

	ArkInventory:RegisterEvent( "AUCTION_HOUSE_SHOW", "EVENT_WOW_AUCTION_HOUSE_SHOW" )
	ArkInventory:RegisterEvent( "AUCTION_HOUSE_CLOSED", "EVENT_WOW_AUCTION_HOUSE_CLOSED" )

	ArkInventory:RegisterEvent( "MERCHANT_SHOW", "EVENT_WOW_MERCHANT_SHOW" )
	ArkInventory:RegisterEvent( "MERCHANT_CLOSED", "EVENT_WOW_MERCHANT_CLOSED" )
	
	ArkInventory:RegisterBucketEvent( "EVENT_ARKINVENTORY_UNIT_INVENTORY_CHANGED_BUCKET", 0.5 )
	ArkInventory:RegisterEvent( "UNIT_INVENTORY_CHANGED", "EVENT_WOW_UNIT_INVENTORY_CHANGED" )
	
	ArkInventory:RegisterEvent( "SKILL_LINES_CHANGED", "EVENT_WOW_SKILL_LINES_CHANGED" ) -- triggered when you gain or lose a skill, skillup, collapse/expand a skill header

	
	-- force scan of all bags
	ArkInventory.ScanLocation()
	--ArkInventory.ScanMail()
	--ArkInventory.ScanWearing()
	
	ArkInventory.PrintPlus( string.format( ArkInventory.Localise["MOD_ENABLED"], ArkInventory.Const.Program.UIVersion, "/ARKINV", "/AI" ) )
	
end

function ArkInventory.OnDisable()

	ArkInventory.Frame_Main_Hide()
	
	ArkInventory.BlizzardAPIHooks( true )
	
	ArkInventory.PrintPlus( string.format( ArkInventory.Localise["MOD_DISABLED"], ArkInventory.Const.Program.UIVersion ) )
	
end

function ArkInventory.OnProfileEnable()
    -- this is called every time your profile changes (after the change)
	ArkInventory.ConvertOldOptions()
	ArkInventory.ItemCacheClear()
	ArkInventory.PlayerInfoSet()
	ArkInventory.Frame_Main_Generate( nil, ArkInventory.Const.Window.Draw.Init )
end

function ArkInventory.OnProfileDisable()
    -- this is called every time your profile changes (before the change)
	ArkInventory.Lib.DewDrop:Close()
	ArkInventory.Frame_Main_Hide()
	ArkInventory.Frame_Rules_Hide()
end

function ArkInventory:EVENT_ARKINVENTORY_BAG_UPDATE_BUCKET( arg1 )

	--local debuginfo = { ["m"]=gcinfo(), ["t"]=GetTime() }

	-- arg1 = table in the format bag_id=true so we need to pull out the id's

	local id = { }
	local loc = { }
	for k in pairs( arg1 ) do
		tinsert( id, k )
		loc[ArkInventory.BagGetLocation( k )] = true
	end
	
	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "EVENT_ARKINVENTORY_BAG_UPDATE_BUCKET( ", id, " )" } )
	ArkInventory.Scan( id )
	
	-- re-scan empty bag slots to wipe their data - no events are triggered when you move a bag from one bag slot into an empty bag slot (for the original empty slot, new slot is fine)
	for loc_id in pairs( loc ) do
		if loc_id == ArkInventory.Const.Location.Bag or loc_id == ArkInventory.Const.Location.Bank then
			for _, bag_id in pairs( ArkInventory.Global.Location[loc_id].Bags ) do
				if GetContainerNumSlots( bag_id ) == 0 then
					ArkInventory.ScanBag( bag_id )
				end
			end
		end
	end
		
	ArkInventory.Frame_Main_Generate( nil, ArkInventory.Const.Window.Draw.Refresh )
	
	--ArkInventory.Frame_Changer_Player_Update()
	--ArkInventory.Frame_Changer_Bank_Update()

	--ArkInventory.Debug( { RED_FONT_COLOR_CODE, "EVENT_ARKINVENTORY_BAG_UPDATE_BUCKET() " }, debuginfo )
	
end

function ArkInventory:EVENT_WOW_BAG_UPDATE( arg1 )
	
	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "EVENT_WOW_BAG_UPDATE( ", arg1, " )" } )
	
	ArkInventory.RestackResume()

	ArkInventory:TriggerEvent( "EVENT_ARKINVENTORY_BAG_UPDATE_BUCKET", arg1 )

end

function ArkInventory:EVENT_WOW_PLAYERBANKSLOTS_CHANGED()

	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "PLAYERBANKSLOTS_CHANGED" } )

	ArkInventory:TriggerEvent( "EVENT_ARKINVENTORY_BAG_UPDATE_BUCKET", BANK_CONTAINER )
	
end

function ArkInventory:EVENT_WOW_PLAYERBANKBAGSLOTS_CHANGED()

	-- ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "PLAYERBANKBAGSLOTS_CHANGED" } )
	
	-- player just purchased another bank bag slot

	ArkInventory.Frame_Changer_Bank_Update()
	
end

function ArkInventory:EVENT_WOW_PLAYER_REGEN_DISABLED()
	
	--ArkInventory.Debug( { RED_FONT_COLOR_CODE, "PLAYER_REGEN_DISABLED()" } )
	
	ArkInventory.Global.Mode.Combat = true
	
	if ArkInventory.db.account.option.auto.close.combat then
		ArkInventory.Frame_Main_Hide()
	end
	
end

function ArkInventory:EVENT_WOW_PLAYER_REGEN_ENABLED()
	
	--ArkInventory.Debug( { RED_FONT_COLOR_CODE, "PLAYER_REGEN_ENABLED()" } )
	
	ArkInventory.Global.Mode.Combat = false
	
end

function ArkInventory:EVENT_WOW_BANKFRAME_OPENED()

	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "BANKFRAME_OPENED()" } )
	
	ArkInventory.Frame_Changer_Vault_Update()
	
	ArkInventory.Global.Mode.Bank = true
	local loc_id = ArkInventory.Const.Location.Bank
	ArkInventory.ScanLocation( loc_id )
	
	if ArkInventory.LocationIsControlled( loc_id ) then
		ArkInventory.Frame_Main_Show( loc_id )
	end

	if ArkInventory.db.account.option.auto.open.bank and ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Bag ) then
		ArkInventory.Frame_Main_Show( ArkInventory.Const.Location.Bag )
	end
	
end

function ArkInventory:EVENT_WOW_BANKFRAME_CLOSED()

	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "BANKFRAME_CLOSED()" } )
	
	ArkInventory.Global.Mode.Bank = false
	local loc_id = ArkInventory.Const.Location.Bank

	ArkInventory.OfflineDataCleanup()
	
	if ArkInventory.db.account.option.auto.close.bank then
		-- close windows on leaving the bank
		ArkInventory.Frame_Main_Hide()
	else
		-- refresh the bank window so it shows offline
		ArkInventory.Frame_Main_Generate( ArkInventory.Const.Location.Bank, ArkInventory.Const.Window.Draw.Refresh )
	end
	
end

function ArkInventory:EVENT_WOW_MAIL_SHOW()
	
	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "MAIL_SHOW" } )
	
	ArkInventory.Global.Mode.Mail = true
	
	if ArkInventory.db.account.option.auto.open.mail and ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Bag ) then
		ArkInventory.Frame_Main_Show( ArkInventory.Const.Location.Bag )
	end
	
end

function ArkInventory:EVENT_WOW_MAIL_CLOSED()

	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "MAIL_CLOSED" } )
	
	ArkInventory.Global.Mode.Mail = false
	
	ArkInventory.OfflineDataCleanup()
	
	if ArkInventory.db.account.option.auto.close.mail and ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Bag ) then
		ArkInventory.Frame_Main_Hide( ArkInventory.Const.Location.Bag )
	end
	
end

function ArkInventory:EVENT_ARKINVENTORY_MAIL_INBOX_UPDATE_BUCKET()

	ArkInventory.ScanMail()
	
	--ArkInventory.LocationSetValue( loc_id, "resort", true )
	ArkInventory.Frame_Main_Generate( ArkInventory.Const.Location.Mail, ArkInventory.Const.Window.Draw.Recalculate )
	
end

function ArkInventory:EVENT_WOW_MAIL_INBOX_UPDATE()

	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "MAIL_INBOX_UPDATE" } )
	
	ArkInventory.RestackResume()

	ArkInventory:TriggerEvent( "EVENT_ARKINVENTORY_MAIL_INBOX_UPDATE_BUCKET" )
	
end

function ArkInventory:EVENT_WOW_TRADE_SHOW()
	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "TRADE_SHOW" } )
	if ArkInventory.db.account.option.auto.open.trade and ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Bag ) then
		ArkInventory.Frame_Main_Show( ArkInventory.Const.Location.Bag )
	end
end

function ArkInventory:EVENT_WOW_TRADE_CLOSED()
	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "TRADE_CLOSED" } )
	if ArkInventory.db.account.option.auto.close.trade then
		ArkInventory.Frame_Main_Hide( ArkInventory.Const.Location.Bag )
	end
end

function ArkInventory:EVENT_WOW_AUCTION_HOUSE_SHOW()
	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "AUCTION_HOUSE_SHOW" } )
	if ArkInventory.db.account.option.auto.open.auction and ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Bag ) then
		ArkInventory.Frame_Main_Show( ArkInventory.Const.Location.Bag )
	end
end

function ArkInventory:EVENT_WOW_AUCTION_HOUSE_CLOSED()
	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "AUCTION_HOUSE_CLOSED" } )
	if ArkInventory.db.account.option.auto.close.auction then
		ArkInventory.Frame_Main_Hide( ArkInventory.Const.Location.Bag )
	end
end

function ArkInventory:EVENT_WOW_MERCHANT_SHOW()

	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "MERCHANT_SHOW" } )
	
	ArkInventory.Global.Mode.Merchant = true
	
	if ArkInventory.db.account.option.auto.open.merchant and ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Bag ) then
		ArkInventory.Frame_Main_Show( ArkInventory.Const.Location.Bag )
	end
	
	ArkInventory.TooltipVendorScan()
	
end

function ArkInventory:EVENT_WOW_MERCHANT_CLOSED()

	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "MERCHANT_CLOSED" } )
	
	ArkInventory.Global.Mode.Merchant = false
	
	if ArkInventory.db.account.option.auto.close.merchant then
		ArkInventory.Frame_Main_Hide( ArkInventory.Const.Location.Bag )
	end
	
end

function ArkInventory:EVENT_ARKINVENTORY_UNIT_INVENTORY_CHANGED_BUCKET()
	
	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "EVENT_ARKINVENTORY_UNIT_INVENTORY_CHANGED_BUCKET()" } )
	
	local loc_id = ArkInventory.Const.Location.Wearing
	
	ArkInventory.ScanWearing()
	
	ArkInventory.Frame_Main_Generate( nil, ArkInventory.Const.Window.Draw.Refresh )
	
end

function ArkInventory:EVENT_WOW_UNIT_INVENTORY_CHANGED( arg1 )
	
	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "UNIT_INVENTORY_CHANGED( ", arg1, " )" } )

	if arg1 == "player" then
		ArkInventory:TriggerEvent( "EVENT_ARKINVENTORY_UNIT_INVENTORY_CHANGED_BUCKET" )
	end
	
end

function ArkInventory:EVENT_WOW_SKILL_LINES_CHANGED()

	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "SKILL_LINES_CHANGED" } )
	
	ArkInventory.SkillGet()
	
end

function ArkInventory:EVENT_WOW_PLAYER_ENTERING_WORLD()

	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "PLAYER_ENTERING_WORLD" } )
	
	ArkInventory.PlayerInfoSet( ArkInventory.Global.Me )
	
end

function ArkInventory:EVENT_WOW_PLAYER_LEAVING_WORLD()

	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "PLAYER_LEAVING_WORLD" } )
	
	ArkInventory.Frame_Main_Hide()
	ArkInventory.OfflineDataCleanup()
	ArkInventory.PlayerInfoSet()
	
end

function ArkInventory:EVENT_WOW_ITEM_LOCK_CHANGED()

	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "EVENT_WOW_ITEM_LOCK_CHANGED[", arg1, ",", arg2, "]" } )

	if arg1 ~= nil and type( arg1 ) == "number" and arg2 ~= nil and type( arg2 ) == "number" then
	
		--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "EVENT_WOW_ITEM_LOCK_CHANGED[", arg1, ",", arg2, "] (processing)" } )
	
		-- bag/slot (item) locks
		
		local loc_id = ArkInventory.BagGetLocation( arg1 )
		local framename = ArkInventory.ContainerItemNameGet( loc_id, arg1, arg2 )
		if framename then
			local frame = getfenv()[framename]
			ArkInventory.Frame_Item_Update_Lock( frame )
		end

	end
	
end


function ArkInventory:EVENT_WOW_GUILDBANKFRAME_OPENED()

	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "GUILDBANKFRAME_OPENED()" } )

	ArkInventory.Global.Mode.Vault = true
	
	local loc_id = ArkInventory.Const.Location.Vault

	local cp = ArkInventory.Global.Me

	ArkInventory.LocationCacheSetup( loc_id, cp )
	
	for tab_id = 1, MAX_GUILDBANK_TABS do
		ArkInventory.ScanVaultHeader( tab_id )
	end
	
	if ArkInventory.LocationIsControlled( loc_id ) then
		GuildBankFrame.mode = "bank"
		ArkInventory.QueryVault()
		ArkInventory.Frame_Main_Show( loc_id )
	end
	
	if ArkInventory.db.account.option.auto.open.vault and ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Bag ) then
		ArkInventory.Frame_Main_Show( ArkInventory.Const.Location.Bag )
	end

end

function ArkInventory:EVENT_WOW_GUILDBANKFRAME_OPENED_20080403()

	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "GUILDBANKFRAME_OPENED()" } )

	local loc_id = ArkInventory.Const.Location.Vault

	ArkInventory.Global.Mode.Vault = true

	if ArkInventory.LocationIsControlled( loc_id ) then
		
		for tab_id = 1, GetNumGuildBankTabs() do
			ArkInventory.QueryVault( tab_id )
		end
	
		ArkInventory.QueryVault()
	
		GuildBankFrame.mode = "bank"
		ArkInventory.Frame_Main_Show( loc_id )

		if ArkInventory.db.account.option.auto.open.vault then
			ArkInventory.Frame_Main_Show( ArkInventory.Const.Location.Bag )
		end

	end
	
end

function ArkInventory:EVENT_WOW_GUILDBANKFRAME_CLOSED()

	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "GUILDBANKFRAME_CLOSED()" } )
	
	ArkInventory.Global.Mode.Vault = false
	local loc_id = ArkInventory.Const.Location.Vault

	ArkInventory.OfflineDataCleanup()
	
--[[
	for tab_id = 1, MAX_GUILDBANK_TABS do
		--ArkInventory.ScanVault( tab_id )
		ArkInventory.ScanVaultHeader( tab_id )
	end
]]--

	if ArkInventory.db.account.option.auto.close.vault then
		-- close windows on leaving the bank
		ArkInventory.Frame_Main_Hide()
	end

	ArkInventory.Frame_Main_Generate( loc_id, ArkInventory.Const.Window.Draw.Refresh )
	
end

function ArkInventory:EVENT_WOW_GUILDBANKBAGSLOTS_CHANGED()

	ArkInventory.RestackResume()

	local loc_id = ArkInventory.Const.Location.Vault

	tab_id = GetCurrentGuildBankTab()

	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "EVENT_WOW_GUILDBANKBAGSLOTS_CHANGED( ", tab_id, " )" } )

	ArkInventory.ScanVault( tab_id )

	ArkInventory.LocationSetValue( loc_id, "resort", true )
	ArkInventory.Frame_Main_Generate( loc_id, ArkInventory.Const.Window.Draw.Refresh )
	
end

function ArkInventory:EVENT_WOW_GUILDBANKBAGSLOTS_CHANGED_20080403()

	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "EVENT_WOW_GUILDBANKBAGSLOTS_CHANGED" } )

	ArkInventory.RestackResume()
	
	local loc_id = ArkInventory.Const.Location.Vault
	local tab_id = ArkInventory.Global.Location[loc_id].updates[1]
	
	local loc_id = ArkInventory.Const.Location.Vault

	if ArkInventory.LocationIsControlled( loc_id ) then

		if tab_id ~= nil then --# ArkInventory.Global.Location[loc_id].updates > 0
	
			-- ai triggered

			ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "EVENT_WOW_GUILDBANKBAGSLOTS_CHANGED( ", tab_id, " *** )" } )
		
			table.remove( ArkInventory.Global.Location[loc_id].updates, 1 )
	
		else
	
			tab_id = GetCurrentGuildBankTab()
		
			ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "EVENT_WOW_GUILDBANKBAGSLOTS_CHANGED( ", tab_id, " )" } )
		
		end
		
		ArkInventory.ScanVault( tab_id )
		
	end

	ArkInventory.Frame_Main_Generate( nil, nil )
	
end

function ArkInventory:EVENT_WOW_GUILDBANK_ITEM_LOCK_CHANGED( arg1 )

	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "EVENT_WOW_GUILDBANK_ITEM_LOCK_CHANGED( ", arg1, " )" } )
	
	local loc_id = ArkInventory.Const.Location.Vault

	if ArkInventory.LocationIsControlled( loc_id ) then
		ArkInventory.Frame_Vault_Item_Update_Lock()
	end
	
end

function ArkInventory:EVENT_WOW_GUILDBANK_UPDATE_MONEY()

	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "EVENT_WOW_GUILDBANK_UPDATE_MONEY" } )
	
	ArkInventory.Frame_Changer_Vault_Update()
	
end

function ArkInventory:EVENT_WOW_GUILDBANK_UPDATE_WITHDRAWMONEY()

	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "EVENT_WOW_GUILDBANK_UPDATE_WITHDRAWMONEY" } )

	ArkInventory.Frame_Changer_Vault_Update()
	
end

function ArkInventory:EVENT_WOW_GUILDBANK_UPDATE_TABS()

	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "EVENT_WOW_GUILDBANK_UPDATE_TABS" } )
	
	for tab_id = 1, MAX_GUILDBANK_TABS do
		--ArkInventory.ScanVault( tab_id )
		ArkInventory.ScanVaultHeader( tab_id )
	end

end


function ArkInventory:EVENT_WOW_GUILDBANKLOG_UPDATE()

	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "EVENT_WOW_GUILDBANKLOG_UPDATE" } )

	loc_id = ArkInventory.Const.Location.Vault
	
	ArkInventory.Frame_Vault_Log_Update()

end


function ArkInventory.ItemSortKeyClear( loc_id )

	-- clear sort keys
	
	--local cp = ArkInventory.LocationPlayerInfoGet( loc_id )
	local layout = ArkInventory.Global.Location[loc_id].layout
	
	if not layout.bar then
		return
	end
	
	for _, bar in pairs( layout.bar ) do
		for _, item in pairs( bar.item ) do
			item.sortkey = nil
			item.cat = nil
		end
	end

end

function ArkInventory.ItemSortKeyGenerate( loc_id, i )

	--ArkInventory.PrintPlus( { "ItemSortKeyGenerate( ", loc_id, ", i )" } )

	if not i then
		return nil
	end
	
	-- generate category if mising
	if i.catdef == nil or i.cat == nil then
		--ArkInventory.PrintPlus( { i.h, " has nil category" } )
		ArkInventory.ItemCategoryGetPrimary( i )
	end
	
	local s = { }
	s["!bagslot"] = string.format( "%04i %04i", i.bag_id, i.slot_id )

	if not ArkInventory.LocationOptionGet( loc_id, { "sort", "bagslot" } ) then
	
		local t
		
		-- slot type (system)
		t = 0
		if not i.h then
			t = ArkInventory.BagType( i.bag_id )
		end
		s["!slottype"] = string.format( "%04i", t )


		-- item count (system)
		s["!count"] = string.format( "%04i", i.count )

	
		-- item name
		t = "!"
		if i.h and ArkInventory.LocationOptionGet( loc_id, { "sort", "name" } ) then
		
			t = ArkInventory.ItemGetName( i.h ) or strmatch( i.h, "%[(.+)%]" ) or "!"
		
			if ArkInventory.LocationOptionGet( loc_id, { "sort", "reversed" } ) then
				t = ArkInventory.ReverseName( t )
			end
			
		end
		s["name"] = t


		-- item quality
		t = 0
		if i.q and ArkInventory.LocationOptionGet( loc_id, { "sort", "quality" } ) then
			t = i.q
		end
		s["quality"] = string.format( "%02i", t )
		

		-- location
		t = "!"
		if i.h and ArkInventory.LocationOptionGet( loc_id, { "sort", "location" } ) then
		
			t = select( 9, ArkInventory.ItemInfoGet( i.h ) )
				
			if not t or t == "" then
				t = "!"
			else
				t = getfenv()[t]
			end

		end
		s["location"] = t

		
		-- item type / subtype
		local item_type = "!"
		local item_subtype = "!"
		
		if i.h and ArkInventory.LocationOptionGet( loc_id, { "sort", "itemtype" } ) then
		
			local _
		
			_, _, _, _, _, item_type, item_subtype = ArkInventory.ItemInfoGet( i.h )
				
			if not item_type or item_type == "" then
				item_type = "!"
			end
			
			if not item_subtype or item_subtype == "" then
				item_subtype = "!"
			end

		end
		s["itemtype"] = string.format( "%s %s", item_type, item_subtype )

		
		-- item (use) level
		t = 0
		if i.h and ArkInventory.LocationOptionGet( loc_id, { "sort", "itemuselevel" } ) then
			t = select( 5, ArkInventory.ItemInfoGet( i.h ) )
		end
		s["itemuselevel"] = string.format( "%04i", t or 0 )

		
		-- item (stat) level
		t = 0
		if i.h and ArkInventory.LocationOptionGet( loc_id, { "sort", "itemstatlevel" } ) then
			t = select( 4, ArkInventory.ItemInfoGet( i.h ) )
		end
		s["itemstatlevel"] = string.format( "%04i", t or 0 )

		-- vendor price
--[[
		t = 0
		if i.h and ArkInventory.LocationOptionGet( loc_id, { "sort", "vendorprice" } ) then
			local price_per = GetSellValue( i.h )
			if price_per > 0 then
				local count = i.count or 1
				local t = price_per * count
			end
		end
		s["vendorprice"] = string.format( "%08i", t or 0 )
]]--

		-- category
		local c_type = 0
		local c_index = 0
		local c_order = 0
		
		if i.h and ArkInventory.LocationOptionGet( loc_id, { "sort", "category" } ) then
			
			if i.cat == nil then
				c_index = abs( ArkInventory.ItemCategoryGetSystemID( "CATEGORY_UNKNOWN" ) )
			elseif i.cat > 0 then
				c_type = 1
				c_index = i.cat
				c_order = ArkInventory.db.account.option.rule[i.cat].order
			else
				c_index = abs( i.cat )
			end
			
		end
		s["category"] = string.format( "%02i %06i %06i", c_type, c_order, c_index )

	else
	
		--ArkInventory.PrintPlus( "bag sort" )
	
	end

	
	-- build sort key
	local sx = { }
	if ArkInventory.LocationOptionGet( loc_id, { "sort", "bagslot" } ) then
	
		tinsert( sx, s["!bagslot"] )
		
	else

		for k, v in ipairs( ArkInventory.LocationOptionGet( loc_id, { "sortorder" } ) ) do
			if s[v] then
				tinsert( sx, s[v] )
			end
		end
	
		tinsert( sx, s["!slottype"] )
		tinsert( sx, s["!count"] )
		tinsert( sx, s["!bagslot"] )

	end
	
	return table.concat( sx, " " )

end

function ArkInventory.ItemSortKeyMoveDown( loc_id, s )

	local p = false
	local t = ArkInventory.LocationOptionGet( loc_id, { "sortorder" } )
	
	for k, v in ipairs( t ) do
		if s == v then
			p = k
			break
		end
	end

	if not p then
		return
	end
	
	if not t[p+1] then
		-- already at the bottom
		return
	end
	
	local x, y = t[p+1], t[p]
	t[p], t[p+1] = x, y
	
end

function ArkInventory.ItemSortKeyMoveUp( loc_id, s )

	local p = false
	local t = ArkInventory.LocationOptionGet( loc_id, { "sortorder" } )
	
	for k, v in ipairs( t ) do
		if s == v then
			p = k
			break
		end
	end

	if not p or p == 1 then
		return
	end
	
	local x, y = t[p-1], t[p]
	t[p], t[p-1] = x, y
	
end

function ArkInventory.SortKeyCheck()

	for loc_id in ipairs( ArkInventory.Global.Location ) do
	
		local t = ArkInventory.LocationOptionGetReal( loc_id, { "sortorder" } )

		if type( t ) ~= "table" then
			t = { }
		end

		-- add mising keys
		for s in pairs( ArkInventory.Const.SortKeys ) do
			
			local ok = false
			
			for k, v in ipairs( t ) do
			
				if s == v then
					ok = true
					break
				end
			
			end
			
			if not ok then
				tinsert( t, s )
			end
			
		end
		
		-- remove old keys
		for k, v in ipairs( t ) do
			if not ArkInventory.Const.SortKeys[v] then
				tremove( t, k )
			end
		end

		ArkInventory.LocationOptionSetReal( loc_id, { "sortorder" }, t )
		
	end
	
end

function ArkInventory.NewItemIndicator( loc_id )

	c = getfenv()[ArkInventory.Const.Frame.Main.Name .. loc_id .. ArkInventory.Const.Frame.Container.Name]
	if c and c:IsVisible() then
	
		local cp = ArkInventory.LocationPlayerInfoGet( loc_id )
		for _, bag_id in pairs( ArkInventory.Global.Location[loc_id].Bags ) do
		
			for slot_id in pairs( ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].bag[bag_id].slot ) do
				s = getfenv()[c:GetName() .. "Bag" .. bag_id .. "Item" .. slot_id]
				if s and s:IsVisible() then
					ArkInventory.Frame_Item_Update_NewIndicator( s )
				end
			end
			
		end
		
	end
	
end

function ArkInventory.NewItemReset( loc_id )

	-- reset new item text
	
	local cp = ArkInventory.LocationPlayerInfoGet( loc_id )
	
	for bag_id, bag in pairs( ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].bag ) do
		for slot_id, slot in pairs( bag.slot ) do
			slot.new = ArkInventory.Const.Slot.New.None --~~~~ check this still works
		end
	end

end

function ArkInventory.BagGetLocation( id )

	if id == nil then
		return
	end
	
	for loc_id, loc_data in ipairs( ArkInventory.Global.Location ) do
		for _, bag_id in pairs( loc_data.Bags ) do
			if id == bag_id then
				return loc_id
			end
		end
	end

	return nil
	
end

function ArkInventory.BagType( id )

	if id == nil then
		return ArkInventory.Const.Slot.Type.Unknown
	end

	if id == KEYRING_CONTAINER then
		return ArkInventory.Const.Slot.Type.Key
	elseif id == BANK_CONTAINER or id == 0 then
		return ArkInventory.Const.Slot.Type.Bag
	end

	if id >= ArkInventory.Const.Offset.Vault + 1 and id <= ArkInventory.Const.Offset.Vault + MAX_GUILDBANK_TABS then
		return ArkInventory.Const.Slot.Type.Bag
	end
	
	if id == ArkInventory.Const.Offset.Mail + 1 then
		return ArkInventory.Const.Slot.Type.Unknown
	end
	
	if id == ArkInventory.Const.Offset.Wearing + 1 then
		return ArkInventory.Const.Slot.Type.Wearing
	end
	
	local h = GetInventoryItemLink( "player", ContainerIDToInventoryID( id ) )
	
	if h then
	
		local _, _, _, _, _, t, s = ArkInventory.ItemInfoGet( h )

		if t == ArkInventory.Localise["WOW_ITEM_TYPE_CONTAINER"] then
		
			if s == ArkInventory.Localise["WOW_ITEM_TYPE_CONTAINER_BAG"] then
				return ArkInventory.Const.Slot.Type.Bag
			elseif s == ArkInventory.Localise["WOW_ITEM_TYPE_CONTAINER_SOULSHARD"] then
				return ArkInventory.Const.Slot.Type.Soulshard
			elseif s == ArkInventory.Localise["WOW_ITEM_TYPE_CONTAINER_HERB"] then
				return ArkInventory.Const.Slot.Type.Herb
			elseif s == ArkInventory.Localise["WOW_ITEM_TYPE_CONTAINER_ENCHANTING"] then
				return ArkInventory.Const.Slot.Type.Enchanting
			elseif s == ArkInventory.Localise["WOW_ITEM_TYPE_CONTAINER_ENGINEERING"] then
				return ArkInventory.Const.Slot.Type.Engineering
			elseif s == ArkInventory.Localise["WOW_ITEM_TYPE_CONTAINER_GEM"] then
				return ArkInventory.Const.Slot.Type.Gem
			elseif s == ArkInventory.Localise["WOW_ITEM_TYPE_CONTAINER_MINING"] then
				return ArkInventory.Const.Slot.Type.Mining
			elseif s == ArkInventory.Localise["WOW_ITEM_TYPE_CONTAINER_LEATHERWORKING"] then
				return ArkInventory.Const.Slot.Type.Leatherworking
			end
			
		elseif t == ArkInventory.Localise["WOW_ITEM_TYPE_QUIVER"] then
		
			if s == ArkInventory.Localise["WOW_ITEM_TYPE_QUIVER_ARROW"] then
				return ArkInventory.Const.Slot.Type.Arrow
			elseif s == ArkInventory.Localise["WOW_ITEM_TYPE_QUIVER_BULLET"] then
				return ArkInventory.Const.Slot.Type.Bullet
			end
			
		end
	
		--ArkInventory.PrintPlus( "debug unknown bag type: bag_id=" .. id .. ", type=" .. t .. " (" .. ArkInventory.Localise["WOW_ITEM_TYPE_CONTAINER"] .. ") , subtype=" .. s .. " (" .. ArkInventory.Localise["WOW_ITEM_TYPE_CONTAINER_BAG"] .. ")" )
		return ArkInventory.Const.Slot.Type.Unknown
	
	else

		-- empty bag slots
		return ArkInventory.Const.Slot.Type.Bag
	
	end
	
end

function ArkInventory.LocationSetValue( l, k, v )
	for loc_id in pairs( ArkInventory.Global.Location ) do
		if l == nil or l == loc_id then
			if ArkInventory.Global.Location[loc_id] then
				ArkInventory.Global.Location[loc_id][k] = v
			end
		end
	end
end


function ArkInventory.ScanLocation( arg1 )
	for loc_id, loc in pairs( ArkInventory.Global.Location ) do
		if arg1 == nil or arg1 == loc_id then
			for _, bag_id in pairs( loc.Bags ) do
				ArkInventory:TriggerEvent( "EVENT_ARKINVENTORY_BAG_UPDATE_BUCKET", bag_id )
			end
		end
	end
end

function ArkInventory.Scan( arg1 )

	for _, bag_id in pairs( arg1 ) do
	
		local loc_id = ArkInventory.BagGetLocation( bag_id )
		
		if loc_id == nil then
			--ArkInventory.PrintPlus( { "aborted scan of bag ", bag_id, ", not an AI controlled bag" } )
			return
		elseif loc_id == ArkInventory.Const.Location.Bag or loc_id == ArkInventory.Const.Location.Bank or loc_id == ArkInventory.Const.Location.Key then
			ArkInventory.ScanBag( bag_id )
		elseif loc_id == ArkInventory.Const.Location.Vault then
			local tab_id = bag_id - ArkInventory.Const.Offset.Vault
			ArkInventory.ScanVault( tab_id )
		elseif loc_id == ArkInventory.Const.Location.Wearing then
			ArkInventory.ScanWearing()
		elseif loc_id == ArkInventory.Const.Location.Mail then
			ArkInventory.ScanMail()
		else
			ArkInventory.PrintPlus( { "uncoded location [", loc_id, "] for bag [", bag_id, "]" } )
		end
		
	end

end

function ArkInventory.ScanBag( bag_id )

	--ArkInventory.PrintPlus( { GREEN_FONT_COLOR_CODE, "ScanBag( ", bag_id, " ) start" } )

	if bag_id == nil then
		--ArkInventory.PrintPlus( { "aborted scan of bag - nil bag_id" } )
		return
	end
	
	local loc_id = ArkInventory.BagGetLocation( bag_id )
	if not loc_id then
		--ArkInventory.PrintPlus( { "aborted scan of bag ", bag_id, ", not an AI controlled bag" } )
		return
	else
		--ArkInventory.PrintPlus( { "bag ", bag_id, ", found in location ", loc_id, " (", ArkInventory.Global.Location[loc_id].Name, ")" } )
	end
	
	if ArkInventory.LocationIsMonitored( loc_id ) == false then
		--ArkInventory.PrintPlus( { "aborted scan of bag ", bag_id, ", location ", loc_id, " (", ArkInventory.Global.Location[loc_id].Name, ") is not being monitored" } )
		return
	end
	
	local cp = ArkInventory.Global.Me
	
	if loc_id == ArkInventory.Const.Location.Bank and ArkInventory.Global.Mode.Bank == false then
		--ArkInventory.PrintPlus( { "aborted scan of bag ", bag_id, ", not at bank" } )
		return
	end
	
	--ArkInventory.PrintPlus( { "scaning bag ", bag_id, " in location ", loc_id, " (", ArkInventory.Global.Location[loc_id].Name, ")" } )
	
	ArkInventory.LocationCacheSetup( loc_id, cp )
	
	local bag = { }

	bag["count"] = 0
	bag["empty"] = GetContainerNumFreeSlots( bag_id )
	bag["type"] = ArkInventory.BagType( bag_id )
	bag["status"] = ArkInventory.Const.Bag.Status.Unknown
	bag["slot"] = { }

	
	if loc_id == ArkInventory.Const.Location.Bag then
		
		bag.count = GetContainerNumSlots( bag_id )
		
		if bag_id == BACKPACK_CONTAINER then
			bag["texture"] = ArkInventory.Global.Location[loc_id].Texture
			bag["status"] = ArkInventory.Const.Bag.Status.Active
		else
			bag["h"] = GetInventoryItemLink( "player", ContainerIDToInventoryID( bag_id ) )
			bag["texture"] = ArkInventory.ItemGetTexture( bag.h ) or ArkInventory.Const.Texture.Missing
		end
		
		if bag.count == 0 then
			bag["status"] = ArkInventory.Const.Bag.Status.Empty
		else
			bag["status"] = ArkInventory.Const.Bag.Status.Active
		end
		
	end

	
	if loc_id == ArkInventory.Const.Location.Key then
	
		bag.count = GetContainerNumSlots( bag_id )
		
		bag["texture"] = ArkInventory.Global.Location[loc_id].Texture
		
		bag["status"] = ArkInventory.Const.Bag.Status.Active
		
	end

	
	if loc_id == ArkInventory.Const.Location.Bank then
	
		bag.count = GetContainerNumSlots( bag_id )
		
		if bag_id == BANK_CONTAINER then
			bag["texture"] = ArkInventory.Global.Location[loc_id].Texture
			bag["status"] = ArkInventory.Const.Bag.Status.Active
		else
			bag["h"] = GetInventoryItemLink( "player", ContainerIDToInventoryID( bag_id ) )
			bag["texture"] = ArkInventory.ItemGetTexture( bag.h ) or ArkInventory.Const.Texture.Missing
		end
		
		if bag_id - NUM_BAG_SLOTS > GetNumBankSlots() then
			bag["status"] = ArkInventory.Const.Bag.Status.Purchase
		else
			bag["status"] = ArkInventory.Const.Bag.Status.Active
			if bag.count == 0 then
				bag["status"] = ArkInventory.Const.Bag.Status.Empty
			end
		end

	end


	local i, old_bag, old_slot, item_id, item_suffix, item_enchant
	
	--ArkInventory.PrintPlus( { "player ", cp.player_id, ", bag ", bag_id, " has ", bag.count, " slots" } )
	--ArkInventory.PrintPlus( { "cache.realm[", cp.realm, "].faction[", cp.faction, "].character[", cp.name, "].location[", loc_id, "].bag[", bag_id, "]" } )
	old_bag = ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].bag[bag_id]
	
	if old_bag and old_bag.count == nil then
		-- if theres no bag count then it's just leftover from a table clean so nil it to make it work properly
		old_bag = nil
	end
	
	if old_bag and bag.count ~= old_bag.count then
		--ArkInventory.PrintPlus( { "tainted, bag=", bag_id, ", bag size changed" } )
		ArkInventory.Frame_Main_DrawStatus( loc_id, ArkInventory.Const.Window.Draw.Recalculate )
	end

	for slot_id = 1, bag.count do
	
		local i = { }
		
		i["bag_id"] = bag_id
		i["slot_id"] = slot_id
		i["h"] = GetContainerItemLink( bag_id, slot_id )
		
		if i.h then
		
			i["count"] = select( 2, GetContainerItemInfo( bag_id, slot_id ) ) or 1

			-- check for soulbound
			ArkInventory.Global.ScanTooltip:SetItem( i )
			if ArkInventory.Global.ScanTooltip:Contains( "^" .. ITEM_SOULBOUND .. "$" ) then
				i["sb"] = true
			end

			i["q"] = select( 3, ArkInventory.ItemInfoGet( i.h ) ) or 1

			ArkInventory.Global.Cache.ItemCount[ArkInventory.TooltipItemID( i.h )] = nil

		--else

			-- empty slot count
			--if not ArkInventory.Const.Program.PTR then
			--	bag.empty = bag.empty + 1
			--end

		end

		i["count"] = i["count"] or 0
		i["q"] = i["q"] or 0
		i["sb"] = i["sb"] or false
		
		i["id"] = ArkInventory.ItemGetID( i.h )
		
		ArkInventory.ScanChanged( loc_id, i, old_bag )
		
		-- save the data
		bag.slot[slot_id] = i

	end

	ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].bag[bag_id] = bag
	
	if bag.count > 0 then
		ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id]["active"] = true
	end
	
	ArkInventory.Global.Location[loc_id].changed = true
	
	ArkInventory.Table.Clean( old_bag, nil, true )
	
	--ArkInventory.PrintPlus( { GREEN_FONT_COLOR_CODE, "ScanBag( ", bag_id, " ) end" } )
	
end

function ArkInventory.QueryVault( tab_id )

	if ArkInventory.Global.Mode.Vault then

		if tab_id == nil or tab_id < 1 or tab_id > GetNumGuildBankTabs() then
			tab_id = GetCurrentGuildBankTab()
		end
	
		local _, _, isViewable, canDeposit = GetGuildBankTabInfo( tab_id )

		if isViewable or canDeposit then
			--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "QueryGuildBankTab( ", tab_id, " )" } )
			QueryGuildBankTab( tab_id )
		else
			--ArkInventory.ScanVault( tab_id )
		end
		
	end

end

function ArkInventory.QueryVault_old( tab_id )

	--ArkInventory.PrintPlus( { "QueryVault( ", tab_id, " )" } )

	local loc_id = ArkInventory.Const.Location.Vault

	if tab_id == nil or tab_id < 1 or tab_id > GetNumGuildBankTabs() then
		tab_id = GetCurrentGuildBankTab()
	end
	
	if ArkInventory.Global.Mode.Vault then -- not ArkInventory.Global.Location[loc_id].offline
		table.insert( ArkInventory.Global.Location[loc_id].updates, tab_id )
		--ArkInventory.PrintPlus( { "QueryGuildBankTab( ", tab_id, " )" } )
		QueryGuildBankTab( tab_id )
	else
		--ArkInventory.PrintPlus( { "ScanVault( ", tab_id, " )" } )
		ArkInventory.ScanVault( tab_id )
	end

end

function ArkInventory.ScanVault( tab_id )

	--ArkInventory.PrintPlus( { GREEN_FONT_COLOR_CODE, "ScanVault( ", tab_id, " ) start" } )

	if tab_id == nil then
		--ArkInventory.PrintPlus( { "aborted scan of tab - nil tab_id" } )
		return
	end
	
	local loc_id = ArkInventory.Const.Location.Vault
	
	if ArkInventory.Global.Mode.Vault == false then
		--ArkInventory.PrintPlus( { "aborted scan of tab ", tab_id, ", not at vault" } )
		return
	end
	
	if ArkInventory.LocationIsMonitored( loc_id ) == false then
		--ArkInventory.PrintPlus( { "aborted scan of tab ", tab_id, ", location ", loc_id, " (", ArkInventory.Global.Location[loc_id].Name, ") is not being monitored" } )
		return
	end

	local cp = ArkInventory.Global.Me

	if not cp.guild_id then
		--ArkInventory.PrintPlus( { "aborted scan of tab ", tab_id, ", not in a guild" } )
		return
	end
	
	if tab_id < 1 or tab_id > GetNumGuildBankTabs() then
		--ArkInventory.PrintPlus( { "aborted scan of tab ", tab_id, ", invalid tab id" } )
		return
	end

	--ArkInventory.PrintPlus( { "scaning tab ", tab_id, " in location ", loc_id, " (", ArkInventory.Global.Location[loc_id].Name, ")" } )
	
	ArkInventory.LocationCacheSetup( loc_id, cp )

	local bag_id = tab_id + ArkInventory.Const.Offset.Vault
	
	local bag = { }

	bag["count"] = MAX_GUILDBANK_SLOTS_PER_TAB
	bag["empty"] = MAX_GUILDBANK_SLOTS_PER_TAB
	bag["type"] = ArkInventory.Const.Slot.Type.Bag
	bag["status"] = ArkInventory.Const.Bag.Status.Unknown
	bag["slot"] = { }
	
	--ArkInventory.PrintPlus( { "player=", cp.player_id, ", guild=", cp.guild_id } )
	cp = ArkInventory.PlayerInfoGet( cp.guild_id )
	ArkInventory.LocationCacheSetup( loc_id, cp )
	--ArkInventory.PrintPlus( { "guild=", cp.player_id, ", guild=", cp.guild_id } )
	
	local _, _, isViewable, canDeposit = GetGuildBankTabInfo( tab_id )

	if isViewable or canDeposit then
		--bag.count = MAX_GUILDBANK_SLOTS_PER_TAB
		bag["status"] = ArkInventory.Const.Bag.Status.Active
	end

	
	local i, old_bag, old_slot
	
	old_bag = ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].bag[bag_id]

	if old_bag then
		bag["reload"] = old_bag.reload
	else
		bag["reload"] = true
	end
	
	if old_bag and old_bag.count == nil then
		-- if theres no bag count then it's just leftover from a table clean so nil it to make it work properly
		old_bag = nil
	end
		
	if old_bag and bag.count ~= old_bag.count then
		ArkInventory.Frame_Main_DrawStatus( loc_id, ArkInventory.Const.Window.Draw.Recalculate )
	end

	for slot_id = 1, bag.count do
	
		local i = { }
		
		i["bag_id"] = bag_id
		i["slot_id"] = slot_id
		
		local texture, count = GetGuildBankItemInfo( tab_id, slot_id )
		
		if texture then
		
			i["h"] = GetGuildBankItemLink( tab_id, slot_id )		
			
			if i.h == nil then
				GameTooltip:SetGuildBankItem( tab_id, i.slot_id )
				local _, itemlink = GameTooltip:GetItem()
				i["h"] = itemlink
			end
			
			if i.h then
				i["q"] = select( 3, ArkInventory.ItemInfoGet( i.h ) ) or 1
				ArkInventory.Global.Cache.ItemCount[ArkInventory.TooltipItemID( i.h )] = nil
			end
			
			i["count"] = count

			bag.empty = bag.empty - 1
			
		end

		i["count"] = i["count"] or 0
		i["q"] = i["q"] or 0
		i["sb"] = i["sb"] or false
		
		i["id"] = ArkInventory.ItemGetID( i.h )
		
		ArkInventory.ScanChanged( loc_id, i, old_bag )
		
		-- save the data
		bag.slot[slot_id] = i

	end

	if bag.reload then
		ArkInventory.Frame_Main_DrawStatus( loc_id, ArkInventory.Const.Window.Draw.Recalculate )
		bag.reload = false
	end
	
	
	ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].bag[bag_id] = bag

	ArkInventory.ScanVaultHeader( tab_id )
	
	if bag.count > 0 then
		ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id]["active"] = true
	end
	
	ArkInventory.Global.Location[loc_id].changed = true

	ArkInventory.Table.Clean( old_bag, nil, true )
	
	--ArkInventory.PrintPlus( { GREEN_FONT_COLOR_CODE, "ScanVault( ", tab_id, " ) end" } )
	
end

function ArkInventory.ScanVaultHeader( tab_id )

	--ArkInventory.PrintPlus( { GREEN_FONT_COLOR_CODE, "ScanVaultHeader( ", tab_id, " ) start" } )

	local loc_id = ArkInventory.Const.Location.Vault
	
	if ArkInventory.Global.Mode.Vault == false then
		--ArkInventory.PrintPlus( { "aborted scan of tab ", tab_id, ", header, not at vault" } )
		return
	end
	
	if ArkInventory.LocationIsMonitored( loc_id ) == false then
		--ArkInventory.PrintPlus( { "aborted scan of tab ", tab_id, " header, location ", loc_id, " (", ArkInventory.Global.Location[loc_id].Name, ") is not being monitored" } )
		return
	end

	if tab_id < 1 or tab_id > MAX_GUILDBANK_TABS then
		--ArkInventory.PrintPlus( { "aborted scan of tab ", tab_id, " header, invalid tab id" } )
		return
	end

	local cp = ArkInventory.Global.Me
	
	ArkInventory.LocationCacheSetup( loc_id, cp )
	
	if not cp.guild_id then
		--ArkInventory.PrintPlus( { "aborted scan of tab ", tab_id, " header, not in a guild" } )
		return
	end
	
	cp = ArkInventory.PlayerInfoGet( cp.guild_id )
	
	ArkInventory.LocationCacheSetup( loc_id, cp )
	
	--ArkInventory.PrintPlus( { "scaning tab ", tab_id, " header" } )
	
	local bag_id = tab_id + ArkInventory.Const.Offset.Vault
	
	local bag = ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].bag[bag_id]

	if bag == nil then
		bag = { }
		bag["count"] = MAX_GUILDBANK_SLOTS_PER_TAB
		bag["empty"] = MAX_GUILDBANK_SLOTS_PER_TAB
		bag["slot"] = { }
		bag["texture"] = ArkInventory.Const.Texture.Empty.Vault
		bag["status"] = ArkInventory.Const.Bag.Status.Unknown
	end
	
	bag["type"] = ArkInventory.Const.Slot.Type.Bag

	if tab_id <= GetNumGuildBankTabs() then
		
		local name, icon, isViewable, canDeposit, numWithdrawals, remainingWithdrawals = GetGuildBankTabInfo( tab_id )

		if name then
			name = string.format( ArkInventory.Localise["VAULT_TAB_NAME"], tab_id, name )
		end
		
		local access -- sourced from Blizzard_GuildBankUI.lua - GuildBankFrame_UpdateTabs()
		if not isViewable then
			access = string.format( ArkInventory.Localise["VAULT_TAB_ACCESS"], ArkInventory.Localise["VAULT_TAB_ACCESS_NONE"] )
		elseif ( not canDeposit and numWithdrawals == 0 ) then
			access = string.format( ArkInventory.Localise["VAULT_TAB_ACCESS"], GUILDBANK_TAB_LOCKED )
		elseif ( not canDeposit ) then
			access = string.format( ArkInventory.Localise["VAULT_TAB_ACCESS"], GUILDBANK_TAB_WITHDRAW_ONLY )
		elseif ( numWithdrawals == 0 ) then
			access = string.format( ArkInventory.Localise["VAULT_TAB_ACCESS"], GUILDBANK_TAB_DEPOSIT_ONLY )
		else
			access = string.format( ArkInventory.Localise["VAULT_TAB_ACCESS"], GUILDBANK_TAB_FULL_ACCESS )
		end
		
		local stackString
		if remainingWithdrawals > 0 then
			stackString = string.format( GetText( "STACKS", nil, remainingWithdrawals ), remainingWithdrawals )
		elseif remainingWithdrawals == 0 then
			stackString = NONE
		else
			stackString = UNLIMITED
		end
		
		bag["name"] = name
		
		if access then
			stackString = string.format( ArkInventory.Localise["VAULT_TAB_REMAINING_WITHDRAWALS"], stackString )
			bag.name = string.format( "%s\n%s\n%s", bag.name, access, stackString )
		end
		
		bag["texture"] = icon
	
	else
	
		bag["status"] = ArkInventory.Const.Bag.Status.Purchase
	
	end


	--ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].bag[bag_id] = bag
	
	if bag.count > 0 then
		ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id]["active"] = true
	end
	
	--ArkInventory.PrintPlus( { GREEN_FONT_COLOR_CODE, "ScanVaultHeader( ", tab_id, " ) end" } )
	
end

function ArkInventory.ScanWearing()

	--ArkInventory.PrintPlus( { GREEN_FONT_COLOR_CODE, "ScanWearing() start" } )
	
	local loc_id = ArkInventory.Const.Location.Wearing

	local bag_id = ArkInventory.Const.Offset.Wearing + 1
	
	if ArkInventory.LocationIsMonitored( loc_id ) == false then
		--ArkInventory.PrintPlus( { "aborted scan of bag ", bag_id, ", location ", loc_id, " (", ArkInventory.Global.Location[loc_id].Name, ") is not being monitored" } )
		return
	end

	local cp = ArkInventory.Global.Me
	ArkInventory.LocationCacheSetup( loc_id, cp )
	
	local bag = ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].bag[bag_id]
	if not bag then
		bag = { }
	end
	ArkInventory.Table.Clean( bag, nil, true )

	bag["count"] = 0
	bag["empty"] = 0
	bag["type"] = ArkInventory.Const.Slot.Type.Wearing
	bag["status"] = ArkInventory.Const.Bag.Status.Active
	bag["slot"] = { }
	
	for slot_id, v in ipairs( ArkInventory.Const.InventorySlotName ) do
	
		bag.count = bag.count + 1
	
		local i = { }
		
		i["bag_id"] = bag_id
		i["slot_id"] = slot_id

		local inv_id = GetInventorySlotInfo( v )		
		i["h"] = GetInventoryItemLink( "player", inv_id )
		
		if i.h then
		
			i["count"] = 1 --GetInventoryItemCount( "player", inv_id )

			-- check for soulbound
			ArkInventory.Global.ScanTooltip:SetInventoryItem( inv_id )
			if ArkInventory.Global.ScanTooltip:Contains( "^" .. ITEM_SOULBOUND .. "$" ) then
				i["sb"] = true
			end
			
			ArkInventory.Global.Cache.ItemCount[ArkInventory.TooltipItemID( i.h )] = nil
			
			i["q"] = select( 3, ArkInventory.ItemInfoGet( i.h ) ) or 1
			
		else
		
			bag.empty = bag.empty + 1
			
		end

		--ArkInventory.PrintPlus( { "slot=[", slot_id, "], item=[", i.h, "]" } )
		
		i["count"] = i["count"] or 0
		i["q"] = i["q"] or 0
		i["sb"] = i["sb"] or false
		i["id"] = ArkInventory.ItemGetID( i.h )
		
		-- save the data
		bag.slot[slot_id] = i
		
	end
	
	--ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].bag[bag_id] = bag
	ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id]["active"] = true
	
	--ArkInventory.PrintPlus( { GREEN_FONT_COLOR_CODE, "ScanWearing( ", bag.count, " / ", bag.empty, " ) end" } )
	
end

function ArkInventory.ScanMail()

	--ArkInventory.PrintPlus( { GREEN_FONT_COLOR_CODE, "ScanMail() start" } )

	local loc_id = ArkInventory.Const.Location.Mail

	local bag_id = ArkInventory.Const.Offset.Mail + 1

	-- mailbox can be scanned from anywhere, just uses data from when it was last opened
	if ArkInventory.Global.Mode.Mail == false then
		--ArkInventory.PrintPlus( { "aborted scan of mailbox, not at mailbox" } )
		return
	end
	
	if ArkInventory.LocationIsMonitored( loc_id ) == false then
		--ArkInventory.PrintPlus( { "aborted scan of location ", loc_id, " (", ArkInventory.Global.Location[loc_id].Name, ") - changes not monitored" } )
		return
	end

	local cp = ArkInventory.Global.Me
	ArkInventory.LocationCacheSetup( loc_id, cp )

	local bag = ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].bag[bag_id]
	if not bag then
		bag = { }
	end
	ArkInventory.Table.Clean( bag, nil, true )
	
	bag["count"] = 0
	bag["empty"] = 0
	bag["type"] = ArkInventory.Const.Slot.Type.Mail
	bag["slot"] = { }

	local slot_id = 1
	
	for msg_id = 1, GetInboxNumItems() do
	
		--ArkInventory.PrintPlus( { "scanning message ", msg_id } )
		
		local daysLeft, hasItem = select( 7, GetInboxHeaderInfo( msg_id ) )
		
		if hasItem then
		
			--ArkInventory.PrintPlus( { "message ", msg_id, " has item(s)" } )
			
			for attachment_id = 1, ATTACHMENTS_MAX_RECEIVE do
				
				local name, _, count = GetInboxItem( msg_id, attachment_id )
				
				if name ~= nil then

					--ArkInventory.PrintPlus( { "message ", msg_id, ", attachment ", attachment_id, " = ", name, " x ", count, " / (", { GetInboxItemLink( msg_id, attachment_id ) }, ")" } )

					local i = { }
					i["bag_id"] = bag_id
					i["slot_id"] = slot_id
					i["h"] = GetInboxItemLink( msg_id, attachment_id )
					i["count"] = count or 0
					i["sb"] = false
					i["dl"] = daysLeft
					
					--ArkInventory.PrintPlus( { "saving message ", msg_id, ", attachment ", attachment_id, " ", i.h } )
					
					if i.h then
						i["id"] = ArkInventory.ItemGetID( i.h )
						i["q"] = select( 3, ArkInventory.ItemInfoGet( i.h ) ) or 1
						ArkInventory.Global.Cache.ItemCount[ArkInventory.TooltipItemID( i.h )] = nil
						bag.count = bag.count + 1
					end

					-- save the data
					bag.slot[slot_id] = i
					
					slot_id = slot_id + 1
					
				end
			
			end
		
		end
		
	end
	
	--ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].bag[bag_id] = bag
	ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id]["active"] = true
	
	--ArkInventory.PrintPlus( { GREEN_FONT_COLOR_CODE, "ScanMail() end" } )
	
end

function ArkInventory.ScanChanged( loc_id, i, old_bag )

	local getcat = false

	-- check for changes
	if not old_bag then
	
		--  bag added
		--ArkInventory.PrintPlus( { "tainted, bag=", bag_id, ", new bag" } )
		ArkInventory.Frame_Main_DrawStatus( loc_id, ArkInventory.Const.Window.Draw.Recalculate )
		
	else
	
		old_slot = old_bag.slot[i.slot_id]
		
		if not old_slot then
		
			--  the old slot doesnt exist - bag increased in size?
			--ArkInventory.PrintPlus( { "tainted, bag=", bag_id, ", slot=", i.slot_id, ", new slot" } )
			ArkInventory.Frame_Main_DrawStatus( loc_id, ArkInventory.Const.Window.Draw.Recalculate )
			i["new"] = ArkInventory.Const.Slot.New.None
			getcat = true
			
		elseif i.h and not old_slot.h then
		
			-- item added
			--ArkInventory.PrintPlus( { "tainted, bag=", bag_id, ", slot=", i.slot_id, ", item added" } )
			ArkInventory.Frame_Main_DrawStatus( loc_id, ArkInventory.Const.Window.Draw.Refresh )
			
			i["new"] = ArkInventory.Const.Slot.New.New
			getcat = true
			
		elseif not i.h and old_slot.h then
			
			-- item removed
			--ArkInventory.Debug( { "tainted, bag=", bag_id, ", slot=", i.slot_id, ", item removed" } )
			ArkInventory.Frame_Main_DrawStatus( loc_id, ArkInventory.Const.Window.Draw.Refresh )
			
			i["new"] = ArkInventory.Const.Slot.New.None
			getcat = true
			
		elseif i.h and old_slot.h and i.h ~= old_slot.h then
		
			-- different item
			--ArkInventory.Debug( { "tainted, bag=", bag_id, ", slot=", i.slot_id, ", item changed" } )
			ArkInventory.Frame_Main_DrawStatus( loc_id, ArkInventory.Const.Window.Draw.Refresh )

			i["new"] = ArkInventory.Const.Slot.New.New
			getcat = true
			
		elseif ( i.sb and not old_slot.sb ) or ( not i.sb and old_slot.sb ) then
			
			-- soulbound changed
			--ArkInventory.Debug( { "tainted, bag=", bag_id, ", slot=", i.slot_id, ", soulbound changed" } )
			ArkInventory.Frame_Main_DrawStatus( loc_id, ArkInventory.Const.Window.Draw.Refresh )
			
			i["new"] = ArkInventory.Const.Slot.New.New
			getcat = true
		
		elseif i.count and old_slot.count and i.count ~= old_slot.count then
		
			-- item count changed, not tainted but needs to be refreshed
			
			if i.count > old_slot.count then
			
				--ArkInventory.PrintPlus( { "tainted, bag=", bag_id, ", slot=", i.slot_id, ", increased" } )
				i["new"] = ArkInventory.Const.Slot.New.Increased
				
			else
			
				--ArkInventory.PrintPlus( { "tainted, bag=", bag_id, ", slot=", i.slot_id, ", decreased" } )
				i["new"] = ArkInventory.Const.Slot.New.Decreased
				
			end
			
			ArkInventory.Frame_Main_DrawStatus( loc_id, ArkInventory.Const.Window.Draw.Refresh )
			
		--elseif ( i.cat and not old_slot.cat ) or ( not i.cat and old_slot.cat ) or ( i.cat and old_slot.cat and i.cat ~= old_slot.cat ) then
			-- category changed
			--ArkInventory.Debug( { "tainted, bag=", bag_id, ", slot=", i.slot_id, ", category changed" } )
			--ArkInventory.Frame_Main_DrawStatus( loc_id, ArkInventory.Const.Window.Draw.Recalculate )
			
		else
		
		end
	
	end
	
	if getcat then
		i["cat"] = ArkInventory.ItemCategoryGetPrimary( i )
		i["sortkey"] = ArkInventory.ItemSortKeyGenerate( loc_id, i )
	end

end

function ArkInventory.Category_Bar_Get( loc_id, category_id )
	
	if category_id == nil then
		category_id = ArkInventory.Const.Categories.Default
	end
	
	local bar = ArkInventory.LocationOptionGet( loc_id, { "category", category_id } )
		
	-- if it's the default category and the default is not on a bar then put it on bar 1
	if bar == nil and category_id == ArkInventory.Const.Categories.Default then
		bar = 1
	end
	
	return bar
	
end

function ArkInventory.Category_Location_Set( loc_id, category_id, bar_id )

	assert( category_id ~= nil , "category is nil" )

	if category_id ~= ArkInventory.Const.Categories.Default or bar_id ~= nil then
		ArkInventory.LocationOptionSet( loc_id, { "category", category_id }, bar_id )
	end
	
end

function ArkInventory.Category_Location_Get( loc_id, category_id )
	-- maps category id's to the bars they are assigned to
	
	if category_id == nil then
		category_id = ArkInventory.ItemCategoryGetSystemID( "CATEGORY_UNKNOWN" )
	end	
	
	local cat = ArkInventory.Category_Bar_Get( loc_id, category_id )
	
	if not cat then
		-- if this category hasn't been assigned to a bar then return the bar that DEFAULT is using
		return ArkInventory.Category_Bar_Get( loc_id, ArkInventory.Const.Categories.Default ), true
	else
		return cat, false
	end
end

function ArkInventory.Category_Hidden_Check( loc_id, category_id )

	local bar = ArkInventory.Category_Bar_Get( loc_id, category_id )
	
	if bar ~= nil and bar < 0 then
		return true
	else
		return false
	end

end

function ArkInventory.Category_Hidden_Toggle( loc_id, category_id )
	ArkInventory.Category_Location_Set( loc_id, category_id, 0 - ArkInventory.Category_Location_Get( loc_id, category_id ) )
end

function ArkInventory.Category_Generate()

	local categories = {
		["SYSTEM"] = ArkInventory.Const.Categories.System,
		["SKILL"] = ArkInventory.Const.Categories.Skill,
		["CLASS"] = ArkInventory.Const.Categories.Class,
		["EMPTY"] = ArkInventory.Const.Categories.Empty,
		["OTHER"] = ArkInventory.Const.Categories.Other,
		["RULE"] = ArkInventory.db.account.option.rule,
	}
	
	local name, order
	
	ArkInventory.Global.Category = { }

	for t, d in pairs( categories ) do
	
		for k, v in pairs( d ) do

			assert( not ArkInventory.Global.Category[k], "duplicate category id [" .. k .. "]" )
		
			if t == "RULE" then
				order = ( v.order or 99999 ) + ( k / 10000 )
				name = string.format( "%04i. %s", k, ( v.name or "<no name>" ) )
			else
				order = 0
				name = v
			end
			
			ArkInventory.Global.Category[k] = {
				["id"] = k,
				["name"] = name,
				["fullname"] = string.format( "%s > %s", ArkInventory.Localise["CATEGORY_" .. t], name ),
				["order"] = order,
				["type_code"] = t,
				["type"] = ArkInventory.Localise["CATEGORY_" .. t],
			}
			
		end
	end

end

function ArkInventory.Category_Bar_Insert( loc_id, bar_id )

	for k, v in pairs( ArkInventory.LocationOptionGet( loc_id, { "category" } ) ) do
		if v >= bar_id then
			ArkInventory.Category_Location_Set( loc_id, k, ArkInventory.Category_Location_Get( loc_id, k ) + 1 )
		end
	end
	
end

function ArkInventory.Category_Bar_Remove( loc_id, bar_id )

	local def_loc = ArkInventory.Category_Location_Get( loc_id, ArkInventory.Const.Categories.Default ) -- bar the DEFAULT category is currently on
	
	for k, v in pairs( ArkInventory.LocationOptionGet( loc_id, { "category" } ) ) do
	
		if v > bar_id then
			ArkInventory.Category_Location_Set( loc_id, k, ArkInventory.Category_Location_Get( loc_id, k ) - 1 )
		elseif v == bar_id then
			
			if k == ArkInventory.Const.Categories.Default then
				-- if the DEFAULT category was on the bar then move it to bar 1
				ArkInventory.Category_Location_Set( loc_id, k, 1 )
			else
				-- erase the location, setting it back to the same as DEFAULT
				ArkInventory.Category_Location_Set( loc_id, k, nil )
			end
			
		end
		
	end

end

function ArkInventory.Category_Bar_Clear( loc_id, bar_id )

	for k, v in pairs( ArkInventory.LocationOptionGet( loc_id, { "category" } ) ) do
		if v == bar_id then
			if k ~= ArkInventory.Const.Categories.Default then
				-- erase the location, setting it back to the same as DEFAULT
				ArkInventory.Category_Location_Set( loc_id, k, nil )
			end
		end
	end
	
end

function ArkInventory.Category_Bar_Up( loc_id, bar_id )

	if bar_id < 1 then
		return
	end

	ArkInventory.Category_Bar_Insert( loc_id, bar_id )

	for k, v in pairs( ArkInventory.LocationOptionGet( loc_id, { "category" } ) ) do
		if v == bar_id + 2 then
			ArkInventory.Category_Location_Set( loc_id, k, bar_id )
		end
	end
	
	ArkInventory.Category_Bar_Remove( loc_id, bar_id + 2 )

end

function ArkInventory.Category_Bar_Down( loc_id, bar_id )
	ArkInventory.Category_Bar_Up( loc_id, bar_id - 1 )
end

function ArkInventory.Category_Bar_HasEntries( loc_id, bar_id, cat_type )

	for _, cat in ArkInventory.spairs( ArkInventory.Global.Category ) do

		local t = cat.type_code
		local cat_bar, def_bar = ArkInventory.Category_Location_Get( loc_id, cat.id )
		
		if abs( cat_bar ) == bar_id and not def_bar then
			
			if t == "RULE" then
				if not ArkInventory.db.profile.option.rule[cat.id] then
					t = "DO_NOT_USE" -- don't display disabled rules
				end
			end
			
			if cat_type == t then
				return true
			end
		
		end
	
	end

end


function ArkInventory.ItemCategoryGetSystemID( cat_name )

	-- internal system category names only
	
	local cn = ArkInventory.Localise[cat_name]
	
	for _, v in pairs( ArkInventory.Global.Category ) do
		if v.id < 0 and cn == v.name then
			return v.id
		end
	end
	
	return ArkInventory.Const.Categories.Default -- default
	
end


function ArkInventory.ItemCategoryGetDefaultActual( i )

	-- local debuginfo = { ["m"]=gcinfo(), ["t"]=GetTime() }

	local info_name, _, info_rarity, _, _, info_type, info_subtype, _, info_location = ArkInventory.ItemInfoGet( i.h )

	-- no item info
	if info_rarity == nil then
		return nil
	end
	
	local cp = ArkInventory.Global.Me
	
	--ArkInventory.PrintPlus( { i.h, " = ", info_type } )
	
	-- quest items 
	if info_type == ArkInventory.Localise["WOW_ITEM_TYPE_QUEST"] or ArkInventory.PT_ItemInSets( i.h, ArkInventory.Localise["PT_CATEGORY_QUEST"] ) then
		return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_QUEST" )
	end

	-- trash
	if info_rarity == 0 then
		return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_TRASH" )
	end

	-- projectiles
	if info_location == "INVTYPE_AMMO" or info_type == ArkInventory.Localise["WOW_ITEM_TYPE_PROJECTILE"] then
	
		if info_subtype == ArkInventory.Localise["WOW_ITEM_TYPE_PROJECTILE_BULLET"] then
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_PROJECTILE_BULLET" )
		elseif info_subtype == ArkInventory.Localise["WOW_ITEM_TYPE_PROJECTILE_ARROW"] then
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_PROJECTILE_ARROW" )
		end

		return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_PROJECTILE" )
		
	end
	
	-- bags / containers
	if info_location == "INVTYPE_BAG" or ArkInventory.PT_ItemInSets( i.h, ArkInventory.Localise["PT_CATEGORY_CONTAINER"] ) then
		return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_CONTAINER" )
	end

	-- soulbound equipment (armour, weapons, trinkets, tabards, etc, etc)
	if i.sb and info_location ~= "" then
		return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_EQUIPMENT_SOULBOUND" )
	end

	-- soul shards
	if ArkInventory.PT_ItemInSets( i.h, ArkInventory.Localise["PT_CATEGORY_SOULSHARD"] ) then
		return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_SOULSHARD" )
	end

	-- mounts
	if ArkInventory.PT_ItemInSets( i.h, ArkInventory.Localise["PT_CATEGORY_MOUNT"] ) then
		return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_MOUNT" )
	end

	-- reputation hand-ins
	if ArkInventory.PT_ItemInSets( i.h, ArkInventory.Localise["PT_CATEGORY_REPUTATION"] ) then
		return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_REPUTATION" )
	end

	-- keys
	if info_type == ArkInventory.Localise["WOW_ITEM_TYPE_KEY"] or ArkInventory.PT_ItemInSets( i.h, ArkInventory.Localise["PT_CATEGORY_KEY"] ) then
		return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_KEY" )
	end
	
	-- food
	if ArkInventory.PT_ItemInSets( i.h, ArkInventory.Localise["PT_CATEGORY_FOOD"] ) then
		return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_FOOD" )
	end

	-- drink
	if ArkInventory.PT_ItemInSets( i.h, ArkInventory.Localise["PT_CATEGORY_DRINK"] ) then
		return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_DRINK" )
	end

	-- potions (health)
	if ArkInventory.PT_ItemInSets( i.h, ArkInventory.Localise["PT_CATEGORY_POTION_HEAL"] ) then
		return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_POTION_HEAL" )
	end
	
	-- potions (mana)
	if ArkInventory.PT_ItemInSets( i.h, ArkInventory.Localise["PT_CATEGORY_POTION_MANA"] ) then
		return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_POTION_MANA" )
	end
	
	-- potions (everything else)
	if ArkInventory.PT_ItemInSets( i.h, ArkInventory.Localise["PT_CATEGORY_POTION"] ) then
		return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_POTION" )
	end

	-- class items (this characters class first)
	if ArkInventory.PT_ItemInSets( i.h, ArkInventory.Localise["PT_CLASS_" .. ArkInventory.Global.Me.class] ) then
		return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_CLASS_" .. ArkInventory.Global.Me.class )
	end

	-- class items
	for w in string.gmatch( ArkInventory.Const.Classes, "[^,]+" ) do
		if ArkInventory.PT_ItemInSets( i.h, ArkInventory.Localise["PT_CLASS_" .. w] ) then
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_CLASS_" .. w )
		end
	end


	-- soulbound items that need to be categorised somewhere else other than soulbound
	if i.sb then
	
		-- pets (non combat)
		if ArkInventory.PT_ItemInSets( i.h, ArkInventory.Localise["PT_CATEGORY_PET_NONCOMBAT"] ) then
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_PET_NONCOMBAT" )
		end

		return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_SOULBOUND" )
		
	end

	
	-- non soulbound weapons and armour
	if info_location and info_location ~= "" then
		return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_EQUIPMENT" )
	end


	-- recipes
	if info_type == ArkInventory.Localise["WOW_ITEM_TYPE_RECIPE"] then
		return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_RECIPE" )
	end
	
	
	-- skills - cycle through the users skills and allocate items to those profressions first
	for k, v in ipairs( ArkInventory.db.account.player.data[cp.player_id].info.skills ) do
		--ArkInventory.PrintPlus( { "skills[", k, "]=[", v, "]" } )
		if ArkInventory.PT_ItemInSets( i.h, ArkInventory.Localise["PT_SKILL_" .. v] ) then
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_SKILL_" .. v )
		end

	end

	-- skills - do the rest
	for w in string.gmatch( ArkInventory.Const.Skills, "[^,]+" ) do
		if ArkInventory.PT_ItemInSets( i.h, ArkInventory.Localise["PT_SKILL_" .. w] ) then
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_SKILL_" .. w )
		end
	end

	
	-- fallback when not in periodic table sets

	-- setup tooltip for scanning
	ArkInventory.Global.ScanTooltip:SetItem( i )
	
	-- quest items
	local _, _, req = ArkInventory.Global.ScanTooltip:Find( ITEM_BIND_QUEST, false, false, false )
	if req then
		return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_QUEST" )
	end
	
	-- skill requirement (but not armour or weapons) from tooltip
	if not ( info_type == ArkInventory.Localise["WOW_ITEM_TYPE_ARMOR"] or info_type == ArkInventory.Localise["WOW_ITEM_TYPE_WEAPON"] ) then
	
		-- ITEM_MIN_SKILL = "Requires %1$s (%2$d)"; -- Required skill rank to use the item
		local ctext = string.gsub( ITEM_MIN_SKILL, "1%$", "", 1 )
		local ctext = string.gsub( ctext, "2%$", "", 1 )
		local ctext = string.gsub( ctext, "%%s", "(.+)", 1 )
		local ctext = "^" .. string.gsub( ctext, "%(%%d%)", "%%(%%d+%%)", 1 )
		--ArkInventory.PrintPlus( ctext )
		local _, _, req = ArkInventory.Global.ScanTooltip:Find( ctext, false, false, true )
	
		--local _, _, req = ArkInventory.Global.ScanTooltip:Find( ArkInventory.Localise["WOW_TOOLTIP_REQUIRES"], false, false, true )
	
		if req then

			for w in string.gmatch( ArkInventory.Const.Skills, "[^,]+" ) do
		
				if strfind( req, ArkInventory.Localise["WOW_SKILL_" .. w] ) then
					return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_SKILL_" .. w )
				end
		
			end

		end
		
	end

	-- class via tooltip
	local ctext = "^" .. string.gsub( ITEM_CLASSES_ALLOWED, "%%s", "(.+)", 1 )
	local _, _, req = ArkInventory.Global.ScanTooltip:Find( ctext, false, false, true )
	
	if req then
		for w in string.gmatch( ArkInventory.Const.Classes, "[^,]+" ) do
			if strfind( req, ArkInventory.Localise["WOW_CLASS_" .. w] ) then
				return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_CLASS_" .. w )
			end
		end
	end
	
	if info_type == ArkInventory.Localise["WOW_ITEM_TYPE_CONSUMABLE"] then

		if ArkInventory.Global.ScanTooltip:Contains( ArkInventory.Localise["WOW_TOOLTIP_POTION_HEAL"] ) then
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_POTION_HEAL" )
		end

		if ArkInventory.Global.ScanTooltip:Contains( ArkInventory.Localise["WOW_TOOLTIP_POTION_MANA"] ) then
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_POTION_MANA" )
		end
		
		if ArkInventory.Global.ScanTooltip:Contains( ArkInventory.Localise["WOW_TOOLTIP_FOOD"] ) then
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_FOOD" )
		end
		
		if ArkInventory.Global.ScanTooltip:Contains( ArkInventory.Localise["WOW_TOOLTIP_DRINK"] ) then
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_DRINK" )
		end

		if strfind( info_name, ArkInventory.Localise["WOW_TOOLTIP_POTION"] ) or strfind( info_name, ArkInventory.Localise["WOW_TOOLTIP_ELIXIR"] ) then
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_POTION" )
		end
		
		return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_CONSUMABLE" )
		
	end
	
	
	if info_type == ArkInventory.Localise["WOW_ITEM_TYPE_MISCELLANEOUS"] then
		return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_MISCELLANEOUS" )
	end
	
	if info_type == ArkInventory.Localise["WOW_ITEM_TYPE_REAGENT"] then
		return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_REAGENT" )
	end

	if info_type == ArkInventory.Localise["WOW_ITEM_TYPE_TRADE_GOODS"] then

		if info_subtype == ArkInventory.Localise["WOW_ITEM_TYPE_TRADE_GOODS_DEVICES"] then
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_TRADE_GOODS_DEVICES" )
		elseif info_subtype == ArkInventory.Localise["WOW_ITEM_TYPE_TRADE_GOODS_EXPLOSIVES"] then
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_TRADE_GOODS_EXPLOSIVES" )
		elseif info_subtype == ArkInventory.Localise["WOW_ITEM_TYPE_TRADE_GOODS_PARTS"] then
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_TRADE_GOODS_PARTS" )
		end

		return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_TRADE_GOODS" )
	
	end

	
	-- fallback for any item not categorised
	return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_DEFAULT" )
	
end

function ArkInventory.ItemCategoryGetDefaultEmpty( bag_id )

	--local debuginfo = { ["m"]=gcinfo(), ["t"]=GetTime() }

	local loc_id = ArkInventory.BagGetLocation( bag_id )
	local bt = ArkInventory.BagType( bag_id )
	
	local clump = false
	if loc_id ~= nil then
		clump = ArkInventory.LocationOptionGet( loc_id, { "slot", "empty", "clump" } )
	end
	
	if bt == ArkInventory.Const.Slot.Type.Bag then
		if clump then
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_EMPTY" )
		else
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_EMPTY_BAG" )
		end
	end
	
	if bt == ArkInventory.Const.Slot.Type.Bullet then
		if clump then
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_PROJECTILE_BULLET" )
		else
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_EMPTY_PROJECTILE_BULLET" )
		end
	end
	
	if bt == ArkInventory.Const.Slot.Type.Arrow then
		if clump then
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_PROJECTILE_ARROW" )
		else
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_EMPTY_PROJECTILE_ARROW" )
		end
	end
	
	if bt == ArkInventory.Const.Slot.Type.Key then
		if clump then
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_KEY" )
		else
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_EMPTY_KEY" )
		end
	end
	
	if bt == ArkInventory.Const.Slot.Type.Soulshard then
		if clump then
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_SOULSHARD" )
		else
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_EMPTY_SOULSHARD" )
		end
	end
	
	if bt == ArkInventory.Const.Slot.Type.Herb then
		if clump then
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_SKILL_HERBALISM" )
		else
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_EMPTY_HERB" )
		end
	end
	
	if bt == ArkInventory.Const.Slot.Type.Enchanting then
		if clump then
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_SKILL_ENCHANTING" )
		else
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_EMPTY_ENCHANTING" )
		end
	end
	
	if bt == ArkInventory.Const.Slot.Type.Engineering then
		if clump then
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_SKILL_ENGINEERING" )
		else
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_EMPTY_ENGINEERING" )
		end
	end
	
	if bt == ArkInventory.Const.Slot.Type.Gem then
		if clump then
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_SKILL_JEWELCRAFTING" )
		else
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_EMPTY_GEM" )
		end
	end
	
	if bt == ArkInventory.Const.Slot.Type.Mining then
		if clump then
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_SKILL_MINING" )
		else
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_EMPTY_MINING" )
		end
	end
	
	if bt == ArkInventory.Const.Slot.Type.Leatherworking then
		if clump then
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_SKILL_LEATHERWORKING" )
		else
			return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_EMPTY_LEATHERWORKING" )
		end
	end

	
	if clump then
		return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_EMPTY" )
	else
		return ArkInventory.ItemCategoryGetSystemID( "CATEGORY_EMPTY_UNKNOWN" )
	end
	
end

function ArkInventory.ItemCategoryGetDefault( i )
	
	--local debuginfo = { ["m"]=gcinfo(), ["t"]=GetTime() }
	
	if not i.h then
		return ArkInventory.ItemCategoryGetDefaultEmpty( i.bag_id )
	end

	-- items cache id
	local cid = ArkInventory.ItemGetCacheIDCategory( i )
	
	-- if the value has not been cached yet then get it and cache it
	if ArkInventory.Global.Cache.Default[cid] == nil then
		ArkInventory.Global.Cache.Default[cid] = ArkInventory.ItemCategoryGetDefaultActual( i )
	end
	
	return ArkInventory.Global.Cache.Default[cid]
	
end


function ArkInventory.ItemCategoryGetRule( i, bt, bag_id, slot_id )

	-- local debuginfo = { ["m"]=gcinfo(), ["t"]=GetTime() }

	-- ArkInventory.PrintPlus( "ItemCategoryGetRule() start" )
	
	-- check rules
	local r = ArkInventory.db.account.option.rule
	
	for rulenum in ArkInventory.spairs( r, function(a,b) return r[a].order < r[b].order end ) do
		
		local a, em = ArkInventory.RuleAppliesToItem( rulenum, i )

		if em == nil then
		
			if a == true then
				return rulenum
			end
		
		else
		
			ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, string.format( ArkInventory.Localise["RULE_DAMAGED"], rulenum ) } )
			
			ArkInventory.db.account.option.rule[rulenum].damaged = true
			
			ArkInventory.PrintPlus( em )
			
		end
		
	end
	
	-- ArkInventory.PrintPlus( "ItemCategoryGetRule() end", debuginfo )

	return 0
	
end

function ArkInventory.ItemCategoryGetPrimary( i )

	--local debuginfo = { ["m"]=gcinfo(), ["t"]=GetTime() }
	
	-- get default category
	local dc = i.catdef
	if dc == nil then
		dc = ArkInventory.ItemCategoryGetDefault( i )
		i["catdef"] = dc
	end

	-- items category cache id
	local cid = ArkInventory.ItemGetCacheIDCategory( i )
	
	-- manually assigned item to a system category?
	if ArkInventory.db.profile.option.category[cid] ~= nil then
		i["cat"] = ArkInventory.db.profile.option.category[cid]
		return
	end
	
	-- item rule cache id
	local rid = ArkInventory.ItemGetCacheIDRule( i )
	
	-- if the value has been cached then use it
	if ArkInventory.Global.Cache.Rule[rid] ~= nil then
		i["cat"] = ArkInventory.Global.Cache.Rule[rid]
		return
	end
	
	-- rule applies to item?
	local rs = ArkInventory.ItemCategoryGetRule( i )
	if rs ~= nil then
	
		if rs == 0 then -- no rule applies use default
			rs = dc
		end
		
		-- cache the result
		ArkInventory.Global.Cache.Rule[rid] = rs
		i["cat"] = rs
		return
		
	end
	
	-- not manually assigned and no rule, use default
	i["cat"] = dc
	
end

function ArkInventory.ItemCategoryClear( arg1 )

	-- clears the category for all items for this character
	
	local cp = ArkInventory.Global.Me
	
	local x = ArkInventory.db.account.cache.realm
	if x == nil then return end
	
	x = ArkInventory.db.account.cache.realm[cp.realm]
	if x == nil then return end
	
	x = x.faction[cp.faction]
	if x == nil then return end
	
	x = x.character[cp.name]
	if x == nil then return end
	
	for loc_id, location in pairs( x.location ) do
		if arg1 == nil or arg1 == loc_id then
			for bag_id, bag in pairs( location.bag ) do
				for slot_id, i in pairs( bag.slot ) do
					i.cat = nil
				end
			end
		end
	end

end

function ArkInventory.ItemCategoryRefresh( arg1, arg2 )

	-- assigns categories to all items for this character
	-- arg1 = location id
	-- arg2 = only empty slots
	
	local cp = ArkInventory.Global.Me
	
	local x = ArkInventory.db.account.cache.realm
	if x == nil then return end
	
	x = ArkInventory.db.account.cache.realm[cp.realm]
	if x == nil then return end
	
	x = x.faction[cp.faction]
	if x == nil then return end
	
	x = x.character[cp.name]
	if x == nil then return end
	
	for loc_id, location in pairs( x.location ) do
		if arg1 == nil or arg1 == loc_id then
			for bag_id, bag in pairs( location.bag ) do
				for slot_id, i in pairs( bag.slot ) do
					if ( not arg2 ) or ( arg2 and i.h == "" ) then
						ArkInventory.ItemCategoryGetPrimary( i )
					end
				end
			end
		end
	end

end

function ArkInventory.ItemCategorySet( i, cat_id )

	-- set category_id to nil to reset back to default
	
	local cid = ArkInventory.ItemGetCacheIDCategory( i )
	ArkInventory.db.profile.option.category[cid] = cat_id

	ArkInventory.ItemCategoryRefresh()
	
end

function ArkInventory.ReverseName( n )

	if n and type( n ) == "string" then

		local s = { }

		for w in string.gmatch( n, "%S+" ) do
			tinsert( s, 1, w )
		end

		return table.concat( s, " " )
		
	end

end

function ArkInventory.ItemCacheClear()

	-- clear all rule information
	ArkInventory.Table.Clean( ArkInventory.Global.Cache.Rule )
	--ArkInventory.Global.Cache.Rule = { }
	
	ArkInventory.Table.Clean( ArkInventory.Global.Cache.Default )
	--ArkInventory.Global.Cache.Default = { }
	
	-- clear all categories so they can be rebuilt
	ArkInventory.ItemCategoryClear()
	
	ArkInventory.Category_Generate() --zzz still need this?
	ArkInventory.LocationSetValue( nil, "resort", true )
	ArkInventory.Frame_Main_Generate( nil, ArkInventory.Const.Window.Draw.Recalculate )
	
end

function ArkInventory.Frame_Main_DrawStatus( loc_id, level )

	if level == nil then
		level = ArkInventory.Const.Window.Draw.None
	end
		
	if ArkInventory.Global.Location[loc_id] and ArkInventory.Global.Location[loc_id].canView then
		if level < ArkInventory.Global.Location[loc_id].draw_state then
			ArkInventory.Global.Location[loc_id].draw_state = level
		end
	end
end

function ArkInventory.Frame_Main_Generate( location, drawstatus )
	
	for loc_id in ipairs( ArkInventory.Global.Location ) do
		
		if not location or loc_id == location then
			ArkInventory.Frame_Main_DrawStatus( loc_id, drawstatus )
			ArkInventory.Frame_Main_DrawLocation( loc_id )
		end
	
	end
	
end

function ArkInventory.Frame_Main_DrawLocation( loc_id )
	local frame = ArkInventory.Frame_Main_Get( loc_id )
	ArkInventory.Frame_Main_Draw( frame )
end



function ArkInventory.PutItemInBank()

	if CursorHasItem() then
		
		for x = 1, GetContainerNumSlots( BANK_CONTAINER ) do
			h = GetContainerItemLink( BANK_CONTAINER, x )
			if not h then
				if not PickupContainerItem( BANK_CONTAINER, x ) then
					ClearCursor()
				end
				return
			end
		end
		
		UIErrorsFrame:AddMessage( ERR_BAG_FULL, 1.0, 0.1, 0.1, 1.0 )
		ClearCursor()
		
	end
	
end

function ArkInventory.PutItemInGuildBank( tab_id )

	if CursorHasItem() then
		
		local loc_id = ArkInventory.Const.Location.Vault
		local _, _, _, canDeposit = GetGuildBankTabInfo( tab_id )

		if canDeposit then
		
			ArkInventory.PrintPlus( { "PutItemInGuildBank( ", tab_id, " )" } )
		
			local ctab = GetCurrentGuildBankTab()
		
			if tab_id ~= ctab then
				SetCurrentGuildBankTab( tab_id )
				ArkInventory.QueryVault( tab_id )
			end

			for x = 1, MAX_GUILDBANK_SLOTS_PER_TAB do
				h = GetGuildBankItemLink( tab_id, x )
				if not h then
					if not PickupGuildBankItem( tab_id, x ) then --AutoStoreGuildBankItem
						ClearCursor()
					end
					return
				end
			end
		
			UIErrorsFrame:AddMessage( ERR_BAG_FULL, 1.0, 0.1, 0.1, 1.0 )
			ClearCursor()
			
		end
		
	end
	
end

function ArkInventory.SetItemButtonStock( frame, count )
	
	if not frame then
		return
	end
	
	local obj = getfenv()[frame:GetName() .. "Stock"]
	if not obj then
		return
	end
	
	if count ~= nil and count > 0 then
		obj.numInStock = count
	else
		obj.numInStock = 0
	end
	
	local loc_id = frame.ARK_Data.loc_id
	
	if ArkInventory.LocationOptionGet( loc_id, { "slot", "empty", "show" } ) then
	
		if count ~= nil and count > 0 then
			obj:SetText( count )
		elseif count == 0 then
			obj:SetText( ArkInventory.Localise["STATUS_FULL"] )
		elseif count == ArkInventory.Const.Bag.Status.Purchase then
			obj:SetText( ArkInventory.Localise["STATUS_PURCHASE"] )
		elseif count == ArkInventory.Const.Bag.Status.Unknown then
			obj:SetText( ArkInventory.Localise["STATUS_NO_DATA"] )
		else
			obj:SetText( "" )
		end
	
		local colour = ArkInventory.LocationOptionGet( loc_id, { "slot", "empty", "colour" } )
		obj:SetTextColor( colour.r, colour.g, colour.b )
		
		obj:Show()
		
	else
	
		obj:Hide()
		
	end
	
	
end

function ArkInventory.ValidFrame( frame, visible )

	if frame and frame.ARK_Data and frame.ARK_Data.loc_id then
		
		if visible and frame:IsVisible() then
			return true
		else
			return false
		end

		return true
		
	end

	return false
	
end

function ArkInventory.Frame_Main_Get( loc_id )

	local framename = ArkInventory.Const.Frame.Main.Name .. loc_id
	local frame = getfenv()[framename]
	assert( frame, "xml element '" .. framename .. "' could not be found" )
	
	return frame

end
	
function ArkInventory.Frame_Main_Scale( frame )

	if ArkInventory.ValidFrame( frame, true ) == false then
		return
	end

	local loc_id = frame.ARK_Data.loc_id

	local old_scale = frame:GetScale()
	local new_scale = ArkInventory.LocationOptionGet( loc_id, { "window", "scale" } )
	local rescale
	
	if old_scale ~= new_scale then
		--rescale = old_scale / new_scale
		frame:SetScale( new_scale )
	end

	ArkInventory.Frame_Main_Anchor_Set( loc_id, rescale )

end
	
function ArkInventory.Frame_Main_Scale_All()
	for loc_id in ipairs( ArkInventory.Global.Location ) do
		frame = ArkInventory.Frame_Main_Get( loc_id )
		ArkInventory.Frame_Main_Scale( frame )
	end
end

function ArkInventory.Frame_Main_Offline( frame )
	
	local loc_id = frame.ARK_Data.loc_id
	
	if ArkInventory.Global.Location[loc_id].player_id == ArkInventory.Global.Me.player_id or ArkInventory.Global.Location[loc_id].player_id == ArkInventory.Global.Me.guild_id then
	
		ArkInventory.Global.Location[loc_id].offline = false
		
		if loc_id == ArkInventory.Const.Location.Bank and ArkInventory.Global.Mode.Bank == false then
			ArkInventory.Global.Location[loc_id].offline = true
		end
		
		if loc_id == ArkInventory.Const.Location.Vault and ArkInventory.Global.Mode.Vault == false then
			ArkInventory.Global.Location[loc_id].offline = true
		end
		
		if loc_id == ArkInventory.Const.Location.Mail or loc_id == ArkInventory.Const.Location.Wearing then
			ArkInventory.Global.Location[loc_id].offline = true
		end
		
	else
	
		ArkInventory.Global.Location[loc_id].offline = true
		
	end
	
end

function ArkInventory.Frame_Main_Anchor_Set( loc_id, rescale )

	local frame = ArkInventory.Frame_Main_Get( loc_id )
	local anchor = ArkInventory.LocationOptionGet( loc_id, { "anchor", loc_id, "point" } )

	local t = ArkInventory.LocationOptionGet( loc_id, { "anchor", loc_id, "t" } ) * ( rescale or 1 )
	local b = ArkInventory.LocationOptionGet( loc_id, { "anchor", loc_id, "b" } ) * ( rescale or 1 )
	local l = ArkInventory.LocationOptionGet( loc_id, { "anchor", loc_id, "l" } ) * ( rescale or 1 )
	local r = ArkInventory.LocationOptionGet( loc_id, { "anchor", loc_id, "r" } ) * ( rescale or 1 )
	
	local f1 = getfenv()[frame:GetName() .. ArkInventory.Const.Frame.Title.Name]
	local f2 = getfenv()[frame:GetName() .. ArkInventory.Const.Frame.Container.Name]
	local f3 = getfenv()[frame:GetName() .. ArkInventory.Const.Frame.Changer.Name]
	local f4 = getfenv()[frame:GetName() .. ArkInventory.Const.Frame.Status.Name]
	
	frame:ClearAllPoints()
	f1:ClearAllPoints()
	f2:ClearAllPoints()
	f3:ClearAllPoints()
	f4:ClearAllPoints()

	if anchor == ArkInventory.Const.Anchor.BottomRight then
		
		frame:SetPoint( "BOTTOMRIGHT", nil, "BOTTOMLEFT", r, b )
		
		f4:SetPoint( "BOTTOMRIGHT", frame )
		f4:SetPoint( "LEFT", frame )
		
		f3:SetPoint( "BOTTOMRIGHT", f4, "TOPRIGHT", 0, -3 )
		f3:SetPoint( "LEFT", frame )
		
		f2:SetPoint( "BOTTOMRIGHT", f3, "TOPRIGHT", 0, -3 )
		f2:SetPoint( "LEFT", frame )
		
		f1:SetPoint( "BOTTOMRIGHT", f2, "TOPRIGHT", 0, -4 )
		f1:SetPoint( "LEFT", frame )

	elseif anchor == ArkInventory.Const.Anchor.BottomLeft then
	
		frame:SetPoint( "BOTTOMLEFT", nil, "BOTTOMLEFT", l, b )

		f4:SetPoint( "BOTTOMLEFT", frame )
		f4:SetPoint( "RIGHT", frame )
		
		f3:SetPoint( "BOTTOMLEFT", f4, "TOPLEFT", 0, -3 )
		f3:SetPoint( "RIGHT", frame )
		
		f2:SetPoint( "BOTTOMLEFT", f3, "TOPLEFT", 0, -3 )
		f2:SetPoint( "RIGHT", frame )
		
		f1:SetPoint( "BOTTOMLEFT", f2, "TOPLEFT", 0, -4 )
		f1:SetPoint( "RIGHT", frame )

	elseif anchor == ArkInventory.Const.Anchor.TopLeft then
		
		frame:SetPoint( "TOPLEFT", nil, "BOTTOMLEFT", l, t )
		
		f1:SetPoint( "TOPLEFT", frame )
		f1:SetPoint( "RIGHT", frame )

		f2:SetPoint( "TOPLEFT", f1, "BOTTOMLEFT", 0, 4 )
		f2:SetPoint( "RIGHT", frame )

		f3:SetPoint( "TOPLEFT", f2, "BOTTOMLEFT", 0, 3 )
		f3:SetPoint( "RIGHT", frame )
		
		f4:SetPoint( "TOPLEFT", f3, "BOTTOMLEFT", 0, 3 )
		f4:SetPoint( "RIGHT", frame )

	else -- anchor == ArkInventory.Const.Anchor.TopRight then
		
		frame:SetPoint( "TOPRIGHT", nil, "BOTTOMLEFT", r, t )

		f1:SetPoint( "TOPRIGHT", frame )
		f1:SetPoint( "LEFT", frame )

		f2:SetPoint( "TOPRIGHT", f1, "BOTTOMRIGHT", 0, 4 )
		f2:SetPoint( "LEFT", frame )

		f3:SetPoint( "TOPRIGHT", f2, "BOTTOMRIGHT", 0, 3 )
		f3:SetPoint( "LEFT", frame )
		
		f4:SetPoint( "TOPRIGHT", f3, "BOTTOMRIGHT", 0, 3 )
		f4:SetPoint( "LEFT", frame )
		
	end

	if ArkInventory.LocationOptionGet( loc_id, { "anchor", loc_id, "locked" } ) then
		frame:RegisterForDrag()
	else
		frame:RegisterForDrag( "LeftButton" )
	end

	if rescale then
		ArkInventory.Frame_Main_Anchor_Save( frame )
	end
	
end

function ArkInventory.Frame_Main_Paint( frame )
	
	if ArkInventory.ValidFrame( frame, true ) == false then
		return
	end

	local loc_id = frame.ARK_Data.loc_id
	
	for _, z in pairs( { frame:GetChildren() } ) do
		
		-- background colour
		local obj = getfenv()[z:GetName() .. "Background"]
		if obj then
			local colour = ArkInventory.LocationOptionGet( loc_id, { "window", "colour", "background" } )
			obj:SetTexture( colour.r, colour.g, colour.b, colour.a )
		end
		
		-- border
		if ArkInventory.LocationOptionGet( loc_id, { "window", "border", "show" } ) then
		
			local default = "Tooltip"
			local file = ArkInventory.LocationOptionGet( loc_id, { "window", "border", "file" } ) or ArkInventory.Const.Texture.Border[default].file
			local size = ArkInventory.LocationOptionGet( loc_id, { "window", "border", "size" } ) or ArkInventory.Const.Texture.Border[default].size
			local scale = ArkInventory.LocationOptionGet( loc_id, { "window", "border", "scale" } ) or 1
			z:SetBackdrop( { ["edgeFile"] = file, ["edgeSize"] = size * scale } )
		
			local colour = ArkInventory.LocationOptionGet( loc_id, { "window", "colour", "border" } )
			z:SetBackdropBorderColor( colour.r, colour.g, colour.b, 1 )
			
		else
		
			z:SetBackdrop( { ["edgeFile"] = "" } )
			
		end
		
	end
	
end

function ArkInventory.Frame_Main_Paint_All()

	for loc_id, loc_data in ipairs( ArkInventory.Global.Location ) do
		frame = ArkInventory.Frame_Main_Get( loc_id )
		ArkInventory.Frame_Main_Paint( frame )
	end
	
end

function ArkInventory.Frame_Main_Update( frame )

	if ArkInventory.ValidFrame( frame, true ) == false then
		return
	end
	
	local loc_id = frame.ARK_Data.loc_id
	local cp = ArkInventory.LocationPlayerInfoGet( loc_id )

	ArkInventory.Frame_Status_Update( frame )
	
	-- set the size of the window
	local h = 0
	h = h + getfenv()[frame:GetName() .. ArkInventory.Const.Frame.Title.Name]:GetHeight()
	h = h + getfenv()[frame:GetName() .. ArkInventory.Const.Frame.Container.Name]:GetHeight()
	h = h + getfenv()[frame:GetName() .. ArkInventory.Const.Frame.Changer.Name]:GetHeight()
	h = h + getfenv()[frame:GetName() .. ArkInventory.Const.Frame.Status.Name]:GetHeight()
	frame:SetHeight( h )
	
	frame:SetWidth( ArkInventory.Global.Location[loc_id].layout.container.width )
	
	ArkInventory.Frame_Main_Scale( frame )
	
end

function ArkInventory.Frame_Main_Draw( frame )

	if not frame:IsVisible() then
		return
	end
	
	--ArkInventory.PrintPlus( { "Frame_Main_Draw( ", frame:GetName(), " ) @ ", frame:GetFrameLevel() } )
	
	local loc_id = frame.ARK_Data.loc_id
	
	if not ArkInventory.Global.Location[loc_id].canView then
		-- not a controllable window (for scanning only)
		-- eg mail, wearing
		-- shouldnt ever get here, but just in case
		frame:Hide()
		return
	end
	
	local cp = ArkInventory.LocationPlayerInfoGet( loc_id )
	ArkInventory.LocationCacheSetup( loc_id, cp )

	-- is the window online or offline?
	ArkInventory.Frame_Main_Offline( frame )
	
	if not ArkInventory.Global.Location[loc_id].offline and not ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].active then
		-- current user, missing data, scan all bags for this location
		ArkInventory.ScanLocation( loc_id )
		return
	end
	
	-- changer frame
	local obj = getfenv()[frame:GetName() .. ArkInventory.Const.Frame.Changer.Name]
	
	-- shrink and hide the changer frame if it can't be used
	if not ArkInventory.Global.Location[loc_id].hasChanger or ArkInventory.LocationOptionGet( loc_id, { "framehide", "changer" } ) then
		obj:SetHeight( 3 )
		obj:Hide()
	else
		obj:SetHeight( ArkInventory.Const.Frame.Changer.Height )
		obj:Show()
	end

	
	-- vault tab changed
	if loc_id == ArkInventory.Const.Location.Vault then
		if ArkInventory.Global.Location[loc_id].current_tab ~= GetCurrentGuildBankTab() then
			ArkInventory.Global.Location[loc_id].current_tab = GetCurrentGuildBankTab()
			ArkInventory.Frame_Main_DrawStatus( loc_id, ArkInventory.Const.Window.Draw.Recalculate )
		end
	end
	

	-- if changer frame is open then make sure they're updated
	if obj:IsVisible() then
	
		if loc_id == ArkInventory.Const.Location.Bag then
			ArkInventory.Frame_Changer_Player_Update()
		end
		
		if loc_id == ArkInventory.Const.Location.Bank then
			ArkInventory.Frame_Changer_Bank_Update()
		end
		
		if loc_id == ArkInventory.Const.Location.Vault then
			ArkInventory.Frame_Changer_Vault_Update()
		end
		
	end

	
	-- edit mode
	if ArkInventory.Global.Mode.Edit then
		ArkInventory.Frame_Main_DrawStatus( loc_id, ArkInventory.Const.Window.Draw.Recalculate )
	end

	
	-- bag data has changed
	if ArkInventory.Global.Location[loc_id].changed then

		ArkInventory.Frame_Main_DrawStatus( loc_id, ArkInventory.Const.Window.Draw.Refresh )
	
		ArkInventory.ItemCategoryRefresh( loc_id )
	
		-- instant sort
		if ArkInventory.LocationOptionGet( loc_id, { "sort", "instant" } ) then
			ArkInventory.Frame_Main_DrawStatus( loc_id, ArkInventory.Const.Window.Draw.Recalculate )
		end

		ArkInventory.Global.Location[loc_id].changed = false

	end

	
	-- rebuild category and sort values
	if ArkInventory.Global.Location[loc_id].resort then
	
		ArkInventory.ItemSortKeyClear( loc_id )

		ArkInventory.Global.Location[loc_id].resort = false
	
		ArkInventory.Frame_Main_DrawStatus( loc_id, ArkInventory.Const.Window.Draw.Refresh )
		
	end
	
	
	-- guild bank item and money logs
	if loc_id == ArkInventory.Const.Location.Vault then
	
		if GuildBankFrame.mode == "log" or GuildBankFrame.mode == "moneylog" then
			
			obj = getfenv()[frame:GetName() .. ArkInventory.Const.Frame.Container.Name]
			obj:Hide()

			obj = getfenv()[frame:GetName() .. ArkInventory.Const.Frame.Log.Name]
			obj:Show()
			
			ArkInventory.Global.Location[loc_id].draw_state = ArkInventory.Const.Window.Draw.Recalculate
			
		else
		
			obj = getfenv()[frame:GetName() .. ArkInventory.Const.Frame.Log.Name]
			obj:Hide()
			
			obj = getfenv()[frame:GetName() .. ArkInventory.Const.Frame.Container.Name]
			obj:Show()

		end
	
	end

	
	-- do we still need to draw the window?
	if ArkInventory.Global.Location[loc_id].draw_state == ArkInventory.Const.Window.Draw.None then
		return
	end


	if ArkInventory.Global.Location[loc_id].draw_state <= ArkInventory.Const.Window.Draw.Init then

		ArkInventory.Frame_Main_Paint( frame )
		
		-- setup main icon
		obj = getfenv()[frame:GetName() .. ArkInventory.Const.Frame.Title.Name .. "Location0"]
		if obj then
			obj:SetNormalTexture( ArkInventory.Global.Location[loc_id].Texture )
			obj:SetPushedTexture( ArkInventory.Global.Location[loc_id].Texture )
			obj:SetDisabledTexture( ArkInventory.Global.Location[loc_id].Texture )
			obj:SetHighlightTexture( ArkInventory.Global.Location[loc_id].Texture )
		end
	
		-- setup small icons
		for x in ipairs( ArkInventory.Global.Location ) do
			if ArkInventory.Global.Location[x].canView then
				obj = getfenv()[frame:GetName() .. ArkInventory.Const.Frame.Title.Name .. "Location" .. x]
				if obj then
					obj:SetNormalTexture( ArkInventory.Global.Location[x].Texture )
					obj:SetPushedTexture( ArkInventory.Global.Location[x].Texture )
					obj:SetDisabledTexture( ArkInventory.Global.Location[x].Texture )
					obj:SetHighlightTexture( ArkInventory.Global.Location[x].Texture )
				end
			end
		end
		
		-- hide the header window if it's not needed
		local obj = getfenv()[frame:GetName() .. ArkInventory.Const.Frame.Title.Name]
		if ArkInventory.LocationOptionGet( loc_id, { "framehide", "header" } ) then
			obj:Hide()
			obj:SetHeight( 3 )
			
			obj = getfenv()[frame:GetName() .. ArkInventory.Const.Frame.Container.Name .. "Menu"]
			obj:SetNormalTexture( ArkInventory.Global.Location[loc_id].Texture )
			obj:Show()
		else
			obj:SetHeight( ArkInventory.Const.Frame.Title.Height )
			obj:Show()
			getfenv()[frame:GetName() .. ArkInventory.Const.Frame.Container.Name .. "Menu"]:Hide()
		end
		
	end

	
	if ArkInventory.Global.Location[loc_id].draw_state <= ArkInventory.Const.Window.Draw.Refresh then
	
		-- set the window title
		local obj = getfenv()[frame:GetName() .. ArkInventory.Const.Frame.Title.Name .. "Who"]
		
		--t = string.format( "%s > %s", ArkInventory.Global.Location[loc_id].Name, cp.display )
		local t = cp.display
	
		if ArkInventory.Global.Location[loc_id].offline then
			obj:SetTextColor( 1, 0, 0 )
			t = string.format( "%s [%s]", t, ArkInventory.Localise["STATUS_OFFLINE"] )
		else
			obj:SetTextColor( 0, 1, 0 )
		end
	
		obj:SetText( t )

	end
	
	obj = getfenv()[frame:GetName() .. ArkInventory.Const.Frame.Container.Name]
	ArkInventory.Frame_Container_Draw( obj )
	
	if ArkInventory.Global.Location[loc_id].draw_state <= ArkInventory.Const.Window.Draw.Refresh then
		ArkInventory.Frame_Main_Update( frame )
	end

	if ArkInventory.Global.Location[loc_id].draw_state <= ArkInventory.Const.Window.Draw.Init then
		ArkInventory.SetFontFrame( frame )
	end

	ArkInventory.Global.Location[loc_id].draw_state = ArkInventory.Const.Window.Draw.None
	

	-- bug fix for framelevel issue
	if frame:GetFrameLevel() > 126 then
		
		local level_old = frame:GetFrameLevel()
		local level_new = 2
		
		ArkInventory.ResetFrameLevel( frame, level_new )
		
		if ArkInventory.db.account.option.bugfix_alert_framelevel == 1 then
			-- short
			ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, ArkInventory.Localise["MISC_ALERT"], FONT_COLOR_CODE_CLOSE, " ", ArkInventory.Localise["MISC_BUGFIX_SHORT"] } )
		elseif ArkInventory.db.account.option.bugfix_alert_framelevel == 2 then
			-- long
			ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, ArkInventory.Localise["MISC_ALERT"], FONT_COLOR_CODE_CLOSE, " ", ArkInventory.Localise["MISC_BUGFIX_SHORT"], "  ", string.format( ArkInventory.Localise["MISC_BUGFIX_LONG"], ArkInventory.Global.Location[loc_id].Name, level_old, level_new ) } )
		else
			-- disabled
		end
		
	end	
	
end
	
function ArkInventory.ResetFrameLevel( frame, level )

	if type( frame ) == "string" then
		frame = getfenv()[frame]
	end
	
	if frame == nil then
		return
	end
	
	if frame:GetFrameLevel() ~= level then
		--ArkInventory.PrintPlus( { "ResetFrameLevel( ", frame:GetName(), " ) ", frame:GetFrameLevel(), " -> ", level } )
		frame:SetFrameLevel( level )
	end
	
	for _, z in pairs( { frame:GetChildren() } ) do
		ArkInventory.ResetFrameLevel( z, level + 1 )
	end

end	
	
function ArkInventory.Frame_Main_Toggle( loc_id )

	local frame = ArkInventory.Frame_Main_Get( loc_id )

	if frame then
		if frame:IsVisible() then
			ArkInventory.Frame_Main_Hide( loc_id )
		else
			ArkInventory.Frame_Main_Show( loc_id )
		end
	end
	
end

function ArkInventory.Frame_Main_Show( loc_id, player_id )

	assert( loc_id, "invalid location: nil" )
	
	local frame = ArkInventory.Frame_Main_Get( loc_id )

	if not player_id then
		player_id = ArkInventory.Global.Me.player_id
	end
	
	if player_id ~= ArkInventory.Global.Location[loc_id].player_id then
		-- showing a different player than whats already being displayed so init
		ArkInventory.Frame_Main_DrawStatus( loc_id, ArkInventory.Const.Window.Draw.Init )
	else
		-- same player, leave as is, display code will sort it out, unless user wants it to sort
		if ArkInventory.LocationOptionGet( loc_id, { "sort", "open" } ) then
			ArkInventory.Frame_Main_DrawStatus( loc_id, ArkInventory.Const.Window.Draw.Resort )
		end
		
	end

	ArkInventory.LocationSetValue( loc_id, "player_id", player_id )
	
	frame:Show()
	ArkInventory.Frame_Main_Draw( frame )

end

function ArkInventory.Frame_Main_OnShow( frame )

	ArkInventory.PlayerInfoSet( ArkInventory.Global.Me )

	local loc_id = frame.ARK_Data.loc_id

	if loc_id == ArkInventory.Const.Location.Key then
		PlaySound( "KeyRingOpen" )
	elseif loc_id == ArkInventory.Const.Location.Bank then
		PlaySound( "igMainMenuOpen" )
	elseif loc_id == ArkInventory.Const.Location.Bag then
		PlaySound( "igBackPackOpen" )
	elseif loc_id == ArkInventory.Const.Location.Vault then
		PlaySound( "GuildVaultOpen" )
	elseif loc_id == ArkInventory.Const.Location.Mail then
		PlaySound( "igSpellBookOpen" )
	elseif loc_id == ArkInventory.Const.Location.Wearing then
		PlaySound( "igCharacterInfoOpen" )
	end
	
end
	
function ArkInventory.Frame_Main_Hide( w )

	for loc_id in ipairs( ArkInventory.Global.Location ) do
		if not w or w == loc_id then
			local frame = ArkInventory.Frame_Main_Get( loc_id )
			frame:Hide()
		end
	end
	
end

function ArkInventory.Frame_Main_OnHide( frame )

	ArkInventory.Lib.DewDrop:Close()

	local loc_id = frame.ARK_Data.loc_id

	if loc_id == ArkInventory.Const.Location.Key then
	
		PlaySound( "KeyRingClose" )
		
	elseif loc_id == ArkInventory.Const.Location.Bank then
	
		PlaySound( "igMainMenuClose" )
		
		if ArkInventory.Global.Mode.Bank and ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Bank ) then
			-- close blizzards bank frame if we're hiding blizzard frames, we're at the bank, and the bank window was closed
			CloseBankFrame()
		end
		
	elseif loc_id == ArkInventory.Const.Location.Bag then
	
		PlaySound( "igBackPackClose" )
		
	elseif loc_id == ArkInventory.Const.Location.Vault then
	
		PlaySound( "GuildVaultClose" )
		
		if ArkInventory.Global.Mode.Vault and ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Vault ) then
		
			-- close blizzards vault frame if we're hiding blizzard frames, we're at the vault, and the vault window was closed
			
			GuildBankPopupFrame:Hide()
			StaticPopup_Hide( "GUILDBANK_WITHDRAW" )
			StaticPopup_Hide( "GUILDBANK_DEPOSIT" )
			StaticPopup_Hide( "CONFIRM_BUY_GUILDBANK_TAB" )
			
			CloseGuildBankFrame()
			
		end
		
	elseif loc_id == ArkInventory.Const.Location.Mail then
	
		PlaySound( "igSpellBookClose" )
		
	elseif loc_id == ArkInventory.Const.Location.Wearing then
	
		PlaySound( "igCharacterInfoClose" )
		
	end

	if ArkInventory.Global.Mode.Edit then
		-- if the edit mode is active then disable edit mode and taint so it's rebuilt when next opened
		ArkInventory.Global.Mode.Edit = false
		ArkInventory.Frame_Main_Generate( nil, ArkInventory.Const.Window.Draw.Recalculate )
	end
	
end

function ArkInventory.Frame_Main_OnLoad( frame )

	assert( frame, "frame is nil" )

	local framename = frame:GetName()
	local loc_id = strmatch( framename, "^.-(%d+)" )
	assert( loc_id ~= nil, string.format( "xml element '%s' is not an %s frame", framename, ArkInventory.Const.Program.Name ) )
	
	frame.ARK_Data = {
		["loc_id"] = tonumber( loc_id ),
	}

	loc_id = tonumber( loc_id )
	
	tinsert( UISpecialFrames, framename )

end

function ArkInventory.Frame_Main_Anchor_Save( frame )

	if ArkInventory.ValidFrame( frame, true ) == false then
		return
	end
	
	local loc_id = frame.ARK_Data.loc_id
	
	ArkInventory.LocationOptionSet( loc_id, { "anchor", loc_id, "t" }, frame:GetTop() )
	ArkInventory.LocationOptionSet( loc_id, { "anchor", loc_id, "b" }, frame:GetBottom() )
	ArkInventory.LocationOptionSet( loc_id, { "anchor", loc_id, "l" }, frame:GetLeft() )
	ArkInventory.LocationOptionSet( loc_id, { "anchor", loc_id, "r" }, frame:GetRight() )
	
end

function ArkInventory.Frame_Container_Calculate( frame )

	--ArkInventory.PrintPlus( { "Frame_Container_Calculate( ", frame:GetName(), " )" } )

	local loc_id = frame.ARK_Data.loc_id
	
	ArkInventory.Table.Clean( ArkInventory.Global.Location[loc_id].layout, nil, true )

	-- break the inventory up into it's respective bars
	ArkInventory.Frame_Container_CalculateBars( frame, ArkInventory.Global.Location[loc_id].layout )
	
	-- calculate what the container should look like with those bars
	ArkInventory.Frame_Container_CalculateContainer( frame, ArkInventory.Global.Location[loc_id].layout )

end

function ArkInventory.Frame_Container_CalculateBars( frame, layout )

	-- loads the inventory into their respective bars
	
	--ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].layout

	local loc_id = frame.ARK_Data.loc_id
	local cp = ArkInventory.LocationPlayerInfoGet( loc_id )

	--ArkInventory.PrintPlus( { GREEN_FONT_COLOR_CODE, "Frame_Container_CalculateBars( ", frame:GetName(), " ) for [", cp.name, "] start" } )

	layout.bar = { }
	layout.bar_count = 1

	-- the basics, just stick the items into their appropriate bars
	for bag_id, bag in pairs( ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].bag ) do
	
		if ArkInventory.db.account.player.data[cp.player_id].display[loc_id].bag[bag_id] then
	
		for slot_id, i in pairs( bag.slot ) do
		
			-- generate category if mising
			if i.catdef == nil or i.cat == nil then
				ArkInventory.ItemCategoryGetPrimary( i )
			end
		
			local bar_id = ArkInventory.Category_Location_Get( loc_id, i.cat )
			
			--ArkInventory.PrintPlus( { "loc=[", loc_id, "], bag=[", bag_id, "], slot=[", slot_id, "], cat=[", i.cat, "], bar_id[=", bar_id, "]" } )
	
			if bar_id > 0 or ArkInventory.Global.Mode.Edit or ArkInventory.LocationOptionGet( loc_id, { "slot", "ignorehidden" } ) then
			-- hidden categories reside on negative bar numbers so they don't get displayed
			-- but show them if in edit mode or the user wants us to ignore the hidden flag
	
				bar_id = abs( bar_id )
	
				-- create the bar
				if not layout.bar[bar_id] then
					layout.bar[bar_id] = { ["id"] = bar_id, ["item"] = { }, ["count"] = 0, ["width"] = 0, ["height"] = 0, ["ghost"] = false, ["frame"] = 0 }
				end
		
				-- add the item to the bar
				tinsert( layout.bar[bar_id].item, { ["bag"] = bag_id, ["slot"] = slot_id } )
			
				-- increment the bars item count
				layout.bar[bar_id].count = layout.bar[bar_id].count + 1
			
				-- keep track of the last bar used
				if bar_id > layout.bar_count then
					layout.bar_count = bar_id
				end

				--ArkInventory.PrintPlus( { "bag[", bag_id, "], slot[", slot_id, "], cat[", i.cat, "], bar[", bar_id, "], id=[", layout.bar[bar_id].id, "]" } )
				
			end
			
		end
		
		end
		
	end

	
	-- get highest used bar
	local cats = ArkInventory.LocationOptionGet( loc_id, { "category" } )
	for _, bar_id in pairs( cats ) do
		if bar_id > layout.bar_count then
			layout.bar_count = bar_id
		end
	end
	
	-- round up to a full number of bars per row
	layout.bar_count = ceil( layout.bar_count / ArkInventory.LocationOptionGet( loc_id, { "bar", "per" } ) ) * ArkInventory.LocationOptionGet( loc_id, { "bar", "per" } )

	-- update the maximum number of bar frames used so far
	if layout.bar_count > ArkInventory.Global.Location[loc_id].bar_max then
		ArkInventory.Global.Location[loc_id].bar_max = layout.bar_count
	end

	-- if we're in edit mode then create all missing bars and add a ghost item to every bar
	-- ghost items allow for the bar menu icon
	if ArkInventory.Global.Mode.Edit or ArkInventory.LocationOptionGet( loc_id, { "bar", "showempty" } ) then
	
		--ArkInventory.PrintPlus( { "edit mode - adding ghost bars" } )
		for bar_id = 1, layout.bar_count do
				
			if not layout.bar[bar_id] then
			
				-- create a ghost bar
				layout.bar[bar_id] = { ["id"] = bar_id, ["item"] = { }, ["count"] = 1, ["width"] = 0, ["height"] = 0, ["ghost"] = true, ["frame"] = 0 }
				
			else
	
				-- add a ghost item to the bar by incrementing the bars item count
				layout.bar[bar_id].count = layout.bar[bar_id].count + 1
				
			end
			
		end
		
	end

	
	--ArkInventory.PrintPlus( { GREEN_FONT_COLOR_CODE, "Frame_Container_CalculateBars( ", frame:GetName(), " ) end" } )
	
end

function ArkInventory.Frame_Container_CalculateContainer( frame, layout )

	-- calculate what the bars look like in the conatiner

	--ArkInventory.PrintPlus( { GREEN_FONT_COLOR_CODE, "Frame_Container_Calculate( ", frame:GetName(), " ) start" } )

	local loc_id = frame.ARK_Data.loc_id
	local cp = ArkInventory.LocationPlayerInfoGet( loc_id )

	layout.container = { ["row"] = { } }
	
	
	local bpr = ArkInventory.LocationOptionGet( loc_id, { "bar", "per" } )
	local rownum = 0
	local bf = 1 -- bar frame, allocated to each bar as it's calculated (uses less frames this way)
	
	--ArkInventory.PrintPlus( { "container has ", layout.bar_count, " bars" } )
	--ArkInventory.PrintPlus( { "container set for ", bpr, " bars per row" } )
	
	
	if ArkInventory.Global.Mode.Edit == false and ArkInventory.LocationOptionGet( loc_id, { "bar", "compact" } ) then
	
		--ArkInventory.PrintPlus( { "compact bars enabled" } )
	
		local bc = 0  -- number of bars currently in this row
		local vr = { }  -- virtual row - holds a list of bars for this row

		for j = 1, layout.bar_count do
		
			--ArkInventory.PrintPlus( { "bar [", j, "]" } )
		
			if layout.bar[j] then
				if layout.bar[j].count > 0 then
					--ArkInventory.PrintPlus( { "assignment: bar [", j, "] to frame [", bf, "]" } )
					layout.bar[j]["frame"] = bf
					bf = bf + 1
					bc = bc + 1
					--tinsert( vr, layout.bar[j] )
					tinsert( vr, j )
				else
					--ArkInventory.PrintPlus( { "bar [", j, "] has no items" } )
				end
			else
				--ArkInventory.PrintPlus( { "bar [", j, "] has no items (does not exist)" } )
			end
		
			if bc > 0 and ( bc == bpr or j == layout.bar_count ) then
		
				rownum = rownum + 1
				if not layout.container.row[rownum] then
					layout.container.row[rownum] = { }
				end
				
				--ArkInventory.PrintPlus( { "row [", rownum, "] allocated [", bc, "] bars" } )
			
				layout.container.row[rownum].bar = vr
				
				--ArkInventory.PrintPlus( { "row [", rownum, "] created" } )
				
				bc = 0
				vr = { }

			end
		
		end
	
	else
	
		for j = 1, layout.bar_count, bpr do
		
			local bc = 0  -- number of bars currently in this row
			local vr = { }  -- virtual row - holds a list of bars for this row

			for b = 1, bpr do
				if layout.bar[j+b-1] then
					if layout.bar[j+b-1].count > 0 then
						--ArkInventory.PrintPlus( { "assignment: bar [", j+b-1, "] to frame [", bf, "]" } )
						layout.bar[j+b-1]["frame"] = bf
						bf = bf + 1
						bc = bc + 1
						--tinsert( vr, layout.bar[j+b-1] )
						tinsert( vr, j+b-1 )
					else
						--ArkInventory.PrintPlus( { "bar [", j+b-1, "] has no items" } )
					end
				else
					--ArkInventory.PrintPlus( { "bar [", j+b-1, "] has no items (does not exist)" } )
				end
			end
		
			if bc > 0 then
		
				rownum = rownum + 1
				if not layout.container.row[rownum] then
					layout.container.row[rownum] = { }
				end
			
				--ArkInventory.PrintPlus( { "row [", rownum, "] allocated [", bc, "] bars" } )
				
				layout.container.row[rownum].bar = vr
				
			end

		end
		
	end

	
	-- fit the bars into the row

	local rmw = ArkInventory.LocationOptionGet( loc_id, { "window", "width" } )  -- row max width
	local rcw = 0 -- row current width
	local rch = 1 -- row current height
	local rmh = 0 -- row max height
		
	local bar = layout.bar
	
	--ArkInventory.PrintPlus( { "bars per row=[", bpr, "], max columns=[", rmw, "], columns per bar=[", floor( rmw / bpr ), "]" } )
	
	for rownum, row in ipairs( layout.container.row ) do
		
		for k, bar_id in ipairs( row.bar ) do

			bar[bar_id].width = 1
			if bar[bar_id].width < 1 then
				bar[bar_id].width = 1
			end
			
			bar[bar_id].height = ceil( bar[bar_id].count / bar[bar_id].width )
			
			if bar[bar_id].height > rmh then
				rmh = bar[bar_id].height
			end
			
			--ArkInventory.PrintPlus( { "row=[", rownum, "], index=[", k, "], bar=[", bar_id, "], width=[", bar[bar_id].width, "], height=[", bar[bar_id].height, "]" } )
			
		end
		
		
		
		if rmh > 1 then

			repeat
			
				rmh = 1
				local rmb = 0
				
				-- find bar with highest height
				for _, bar_id in ipairs( row.bar ) do
					if bar[bar_id].height > rmh then
						rmh = bar[bar_id].height
						rmb = bar_id
					end
				end

				if rmh > 1 then

					-- increase that bars width by one
					bar[rmb].width = bar[rmb].width + 1
				
					-- and recalcualte it's new height
					bar[rmb].height = ceil( bar[rmb].count / bar[rmb].width )
				
					-- and see if that all fits
					rcw = 0
					rmh = 0
					for _, bar_id in ipairs( row.bar ) do
					
						rcw = rcw + bar[bar_id].width
					
						if bar[bar_id].height > rmh then
							rmh = bar[bar_id].height
						end
					
					end
					
				end
				
				-- exit if the width fits or the max height is 1
			until rcw >= rmw or rmh == 1
			
		end
		
		--ArkInventory.PrintPlus( { "maximum height for row [", rownum, "] was [", rmh, "]" } )
		
		for k, bar_id in ipairs( row.bar ) do
		
			--ArkInventory.PrintPlus( { "setting max height for row [", rownum, "] bar [", bar_id, "] to [", rmh, "]" } )
		
			-- set height of all bars in the row to the maximum height used (looks better)
			bar[bar_id].height = rmh
			
			if bar[bar_id].ghost or ArkInventory.Global.Mode.Edit or ArkInventory.LocationOptionGet( loc_id, { "bar", "showempty" } ) then
				-- remove the ghost item from the count (it was only needed to calculate properly)
				bar[bar_id].count = bar[bar_id].count - 1
			end
		end
		
	end
	

	--ArkInventory.PrintPlus( { GREEN_FONT_COLOR_CODE, "Frame_Container_Calculate( ", frame:GetName(), " ) end" } )

end

function ArkInventory.Frame_Container_Draw( frame )

	local loc_id = frame.ARK_Data.loc_id
	local cp = ArkInventory.LocationPlayerInfoGet( loc_id )
	
	--ArkInventory.PrintPlus( { "draw frame=", frame:GetName(), ", loc=", loc_id, ", state=", ArkInventory.Global.Location[loc_id].draw_state } )
	
	if ArkInventory.Global.Location[loc_id].draw_state <= ArkInventory.Const.Window.Draw.Recalculate then

		-- calculate what the container should look like
		ArkInventory.Frame_Container_Calculate( frame )

		local name

		-- create (if required) the bar frames, and hide any that are no longer required
		local placeframename = frame:GetName() .. "Bar"
		local placeframe = getfenv()[placeframename]
		assert( placeframe, "xml element '" .. placeframename .. "' could not be found" )
		
		local baselevel = placeframe:GetFrameLevel()
		
		for j = 1, ArkInventory.Global.Location[loc_id].bar_max do
			local barframename = placeframename .. j
			local barframe = getfenv()[barframename]
			if not barframe then
				--ArkInventory.PrintPlus( { "creating bar [", barframename, "]" } )
				barframe = CreateFrame( "Frame", barframename, placeframe, "ARKINV_TemplateFrameBar" )
			end
			
			ArkInventory.Frame_Bar_Paint( barframe )
			barframe:Hide()
		end
		
		-- calculate numer of active slots (required to keep track of the total number of slots a character has)
		ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].slot_count = ArkInventory.Table.Sum( ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].bag, function( a ) return a.count end )
		
		-- create (if required) the bags and their item buttons, and hide any that are not currently needed
		local placeframename = frame:GetName() .. "Bag"
		local placeframe = getfenv()[placeframename]
		assert( placeframe, "xml element '" .. placeframename .. "' could not be found" )
		
		--~~~~ need to fix this for when the cache is reset
		for _, bag_id in pairs( ArkInventory.Global.Location[loc_id].Bags ) do
		
			local bagframename = placeframename .. bag_id
			local bagframe = getfenv()[bagframename]
			if not bagframe then
				--ArkInventory.PrintPlus( { "creating bag [", bagframename, "]" } )
				bagframe = CreateFrame( "Frame", bagframename, placeframe, "ARKINV_TemplateFrameBag" )
			end

			-- remember the maximum number of slots used for each bag
			ArkInventory.LocationCacheSetup( loc_id, cp )
			local b = ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].bag[bag_id]
			
			if not ArkInventory.Global.Location[loc_id].slot_max[bag_id] then
				ArkInventory.Global.Location[loc_id].slot_max[bag_id] = 0
			end
			
			if b.count > ArkInventory.Global.Location[loc_id].slot_max[bag_id] then
				ArkInventory.Global.Location[loc_id].slot_max[bag_id] = b.count
			end

			-- create the item frames for the bag
			for j = 1, ArkInventory.Global.Location[loc_id].slot_max[bag_id] do

				local itemframename = ArkInventory.ContainerItemNameGet( loc_id, bag_id, j )
				local itemframe = getfenv()[itemframename]
				if not itemframe then
					--ArkInventory.PrintPlus( { "creating item [", itemframename, "]" } )				
					if loc_id == ArkInventory.Const.Location.Vault then
						itemframe = CreateFrame( "Button", itemframename, bagframe, "ARKINV_TemplateButtonVaultItem" )
					else
						itemframe = CreateFrame( "Button", itemframename, bagframe, "ARKINV_TemplateButtonItem" )
					end
				end	
				
				if j == 1 then
					ArkInventory.Global.BAG_SLOT_SIZE = itemframe:GetWidth()
				end
			
				ArkInventory.Frame_Item_Update_Clickable( itemframe )
				itemframe:Hide()
				
			end
			
		end
		
	end

	-- build the bar frames
	
	local name = frame:GetName()
	
	local pad_slot = ArkInventory.LocationOptionGet( loc_id, { "slot", "pad" } )
	local pad_bar_int = ArkInventory.LocationOptionGet( loc_id, { "bar", "pad", "internal" } )
	local pad_bar_ext = ArkInventory.LocationOptionGet( loc_id, { "bar", "pad", "external" } )
	local pad_window = ArkInventory.LocationOptionGet( loc_id, { "window", "pad" } )
	local anchor = ArkInventory.LocationOptionGet( loc_id, { "bar", "anchor" } )

	for rownum, row in ipairs( ArkInventory.Global.Location[loc_id].layout.container.row ) do

		row["width"] = pad_window * 2 + pad_bar_ext
		
		for bar_index, bar_id in ipairs( row.bar ) do

			local bar = ArkInventory.Global.Location[loc_id].layout.bar[bar_id]
			
			local barframename = name .. "Bar" .. bar.frame
			local obj = getfenv()[barframename]
			assert( obj, "xml element '" .. barframename .. "' could not be found" )

			-- assign the bar number used to the bar frame
			obj.ARK_Data.bar_id = bar_id
			
			if ArkInventory.Global.Location[loc_id].draw_state <= ArkInventory.Const.Window.Draw.Recalculate then

				local obj_width = bar.width * ArkInventory.Global.BAG_SLOT_SIZE + ( bar.width - 1 ) * pad_slot + pad_bar_int * 2
				obj:SetWidth( obj_width )
				row.width = row.width + obj_width
				
				row.width = row.width + pad_bar_ext

				row["height"] = bar.height * ArkInventory.Global.BAG_SLOT_SIZE + ( bar.height - 1 ) * pad_slot + pad_bar_int * 2				
				obj:SetHeight( row.height )
				
				obj:ClearAllPoints()
				
				--ArkInventory.Debug( "row=" .. rownum .. ", bar=" .. bar_index .. ", obj=" .. obj:GetName() .. ", frame=" .. bar.frame )
				-- anchor first bar to frame
				if bar.frame == 1 then
				
					if anchor == ArkInventory.Const.Anchor.BottomLeft then
						obj:SetPoint( "BOTTOMLEFT", frame, "BOTTOMLEFT", pad_window + pad_bar_ext, pad_window + pad_bar_ext )
					elseif anchor == ArkInventory.Const.Anchor.TopLeft then
						obj:SetPoint( "TOPLEFT", frame, "TOPLEFT", pad_window + pad_bar_ext, 0 - pad_window - pad_bar_ext )
					elseif anchor == ArkInventory.Const.Anchor.TopRight then
						obj:SetPoint( "TOPRIGHT", frame, "TOPRIGHT", 0 - pad_window - pad_bar_ext, 0 - pad_window - pad_bar_ext )
					else -- if anchor == ArkInventory.Const.Anchor.BottomRight then
						obj:SetPoint( "BOTTOMRIGHT", frame, "BOTTOMRIGHT", 0 - pad_window - pad_bar_ext, pad_window + pad_bar_ext )
					end
					
				else
				
					if bar_index == 1 then
						-- next row, place under previous row
						--ArkInventory.PrintPlus( "anchor=" .. name .. "Bar" .. ArkInventory.Global.Location[loc_id].layout.container.row[rownum-1].bar[1].frame )
						
						local prev = ArkInventory.Global.Location[loc_id].layout.container.row[rownum-1].bar[1]
						local parent = name .. "Bar" .. ArkInventory.Global.Location[loc_id].layout.bar[prev].frame
						
						if anchor == ArkInventory.Const.Anchor.BottomLeft then
							obj:SetPoint( "BOTTOMLEFT", parent, "TOPLEFT", 0, pad_bar_ext )
						elseif anchor == ArkInventory.Const.Anchor.TopLeft then
							obj:SetPoint( "TOPLEFT", parent, "BOTTOMLEFT", 0, 0 - pad_bar_ext )
						elseif anchor == ArkInventory.Const.Anchor.TopRight then
							obj:SetPoint( "TOPRIGHT", parent, "BOTTOMRIGHT", 0, 0 - pad_bar_ext )
						else -- if anchor == ArkInventory.Const.Anchor.BottomRight then
							obj:SetPoint( "BOTTOMRIGHT", parent, "TOPRIGHT", 0, pad_bar_ext )
						end

					else
					
						-- next slot, place bar next to last one
						
						local parent = name .. "Bar" .. ( bar.frame - 1 )
						
						if anchor == ArkInventory.Const.Anchor.BottomLeft then
							obj:SetPoint( "BOTTOMLEFT", parent, "BOTTOMRIGHT", pad_bar_ext, 0 )
						elseif anchor == ArkInventory.Const.Anchor.TopLeft then
							obj:SetPoint( "TOPLEFT", parent, "TOPRIGHT", pad_bar_ext, 0 )
						elseif anchor == ArkInventory.Const.Anchor.TopRight then
							obj:SetPoint( "TOPRIGHT", parent, "TOPLEFT", 0 - pad_bar_ext, 0 )
						else -- if anchor == ArkInventory.Const.Anchor.BottomRight then
							obj:SetPoint( "BOTTOMRIGHT", parent, "BOTTOMLEFT", 0 - pad_bar_ext, 0 )
						end
						
					end
				
				end
				
				obj:Show()

			end
			
			if ArkInventory.Global.Location[loc_id].draw_state <= ArkInventory.Const.Window.Draw.Refresh then
				ArkInventory.Frame_Bar_Label( obj )
				ArkInventory.Frame_Bar_DrawItems( obj )
			end
			
		end

	end

	if ArkInventory.Global.Location[loc_id].draw_state <= ArkInventory.Const.Window.Draw.Recalculate then

		-- set container height and width
		
		local c = ArkInventory.Global.Location[loc_id].layout.container
		
		c.width = ArkInventory.Const.Window.Min.Width
		
		c.height = pad_window * 2 + pad_bar_ext

		for row_index, row in ipairs( c.row ) do
		
			if row.width > c.width then
				c.width = row.width
			end
			
			c.height = c.height + row.height + pad_bar_ext
		
		end
		
		if c.height < ArkInventory.Const.Window.Min.Height then
			c.height = ArkInventory.Const.Window.Min.Height
		end
		
		frame:SetWidth( c.width )
		frame:SetHeight( c.height )

	end

end

function ArkInventory.Frame_Container_OnLoad( frame )

	assert( frame, "frame is nil" )

	local framename = frame:GetName()
	local loc_id = strmatch( framename, "^.-(%d+)Container" )

	assert( loc_id, string.format( "xml element '%s' is not an %s frame", framename, ArkInventory.Const.Program.Name ) )
	
	frame.ARK_Data = {
		["loc_id"] = tonumber( loc_id ),
	}

end


function ArkInventory.Frame_Bar_Paint_All()

	--ArkInventory.PrintPlus( { "Frame_Bar_Paint_All()" } )

	for loc_id, loc_data in ipairs( ArkInventory.Global.Location ) do

		c = getfenv()[ArkInventory.Const.Frame.Main.Name .. loc_id .. ArkInventory.Const.Frame.Container.Name]
		
		if c and c:IsVisible() then
		
			for bar_id = 1, loc_data.bar_max do

				obj = getfenv()[c:GetName() .. "Bar" .. bar_id]
				
				if obj then
					ArkInventory.Frame_Bar_Paint( obj )
				end
				
			end
			
		end
		
	end

end

function ArkInventory.Frame_Bar_Paint( frame )
	
	if not frame then
		return
	end
	
	--ArkInventory.PrintPlus( { "Painting ", frame:GetName() } )
	
	local loc_id = frame.ARK_Data.loc_id
	
	-- border
	if ArkInventory.LocationOptionGet( loc_id, { "bar", "border", "show" } ) then

		local default = "Tooltip"
		local file = ArkInventory.LocationOptionGet( loc_id, { "bar", "border", "file" } ) or ArkInventory.Const.Texture.Border[default].file
		local size = ArkInventory.LocationOptionGet( loc_id, { "bar", "border", "size" } ) or ArkInventory.Const.Texture.Border[default].size
		local scale = ArkInventory.LocationOptionGet( loc_id, { "bar", "border", "scale" } ) or 1
		frame:SetBackdrop( { ["edgeFile"] = file, ["edgeSize"] = size * scale } )
		
		-- border colour
		local colour = ArkInventory.LocationOptionGet( loc_id, { "bar", "colour", "border" } )
		frame:SetBackdropBorderColor( colour.r, colour.g, colour.b, 1 )
		
	else
	
		frame:SetBackdrop( { ["edgeFile"] = "" } )
		--frame:SetBackdropBorderColor( 0, 0, 0, 0 )
		
	end
	
	
	-- background colour
	if ArkInventory.Global.Mode.Edit then
	
		frame:SetBackdropBorderColor( 1, 0, 0, 1 )
		getfenv()[frame:GetName() .. "Background"]:SetTexture( 1, 0, 0, 0.1 )
		
		local obj = getfenv()[frame:GetName() .. "Edit"]
		
		local pad_bar = ArkInventory.LocationOptionGet( loc_id, { "bar", "pad", "internal" } )
		local anchor = ArkInventory.LocationOptionGet( loc_id, { "slot", "anchor" } )

		obj:ClearAllPoints()
		
		-- anchor to the opposite corner that items are
		if anchor == ArkInventory.Const.Anchor.BottomLeft then
			obj:SetPoint( "TOPRIGHT", 0 - pad_bar, 0 - pad_bar ) -- OK
		elseif anchor == ArkInventory.Const.Anchor.TopLeft then
			obj:SetPoint( "BOTTOMRIGHT", 0 - pad_bar, pad_bar )
		elseif anchor == ArkInventory.Const.Anchor.TopRight then
			obj:SetPoint( "BOTTOMLEFT", pad_bar, pad_bar )
		else -- anchor == ArkInventory.Const.Anchor.BottomRight then
			obj:SetPoint( "TOPLEFT", pad_bar, 0 - pad_bar ) -- OK
		end

		obj:SetWidth( ArkInventory.Global.BAG_SLOT_SIZE )
		obj:SetHeight( ArkInventory.Global.BAG_SLOT_SIZE )
		obj:Show()
	
	else
	
		local colour = ArkInventory.LocationOptionGet( loc_id, { "bar", "colour", "background" } )
		getfenv()[frame:GetName() .. "Background"]:SetTexture( colour.r, colour.g, colour.b, colour.a )
		getfenv()[frame:GetName() .. "Edit"]:Hide()
	
	end

	-- label
	ArkInventory.Frame_Bar_Label( frame )
	
end

function ArkInventory.Frame_Bar_DrawItems( frame )

	--ArkInventory.PrintPlus( { "Frame_Bar_DrawItems( ", frame:GetName(), " )" } )

	local loc_id = frame.ARK_Data.loc_id
	
	if ArkInventory.Global.Location[loc_id].draw_state > ArkInventory.Const.Window.Draw.Refresh then
		return
	end
	
	local bar_id = frame.ARK_Data.bar_id
	local cp = ArkInventory.LocationPlayerInfoGet( loc_id )
	
	local bar = ArkInventory.Global.Location[loc_id].layout.bar[bar_id]
	assert( bar, "bar id has not been set on frame" )
	
	if bar.count == 0 or bar.ghost then
		return
	end
	
	-- sort the items in the bar
	for j = 1, bar.count do
		local bag_id = bar.item[j].bag
		local slot_id = bar.item[j].slot
		local i = ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].bag[bag_id].slot[slot_id]
		
		if bar.item[j].sortkey == nil then
			bar.item[j].sortkey = ArkInventory.ItemSortKeyGenerate( loc_id, i ) or "!"
		end
		
	end
	
	if ArkInventory.LocationOptionGet( loc_id, { "sort", "ascending" } ) then
		sort( bar.item, function( a, b ) return a.sortkey > b.sortkey end )
	else
		sort( bar.item, function( a, b ) return a.sortkey < b.sortkey end )
	end
	

	local pad_slot = ArkInventory.LocationOptionGet( loc_id, { "slot", "pad" } )
	local pad_bar = ArkInventory.LocationOptionGet( loc_id, { "bar", "pad", "internal" } )
	local col = bar.width

	-- cycle through the items in the bar
	for j = 1, bar.count do

		local i = ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].bag[bar.item[j].bag].slot[bar.item[j].slot]
		local framename = ArkInventory.ContainerItemNameGet( loc_id, bar.item[j].bag, bar.item[j].slot )
		local obj = getfenv()[framename]
		assert( obj, "xml element '" .. framename .. "' does not exist" )

		if ArkInventory.Global.Location[loc_id].draw_state <= ArkInventory.Const.Window.Draw.Recalculate then
		
			-- anchor first item to bar frame - WARNING - item anchor point can only be bottom right, nothing else, so be relative

			local anchor = ArkInventory.LocationOptionGet( loc_id, { "slot", "anchor" } )
			local item_size = obj:GetWidth()
			
			if j == 1 then
				
				if anchor == ArkInventory.Const.Anchor.BottomLeft then
					obj:SetPoint( "BOTTOMRIGHT", frame, "BOTTOMLEFT", pad_bar + item_size, pad_bar ) -- OK
				elseif anchor == ArkInventory.Const.Anchor.TopLeft then
					obj:SetPoint( "BOTTOMRIGHT", frame, "TOPLEFT", pad_bar + item_size, 0 - pad_bar - item_size ) -- OK
				elseif anchor == ArkInventory.Const.Anchor.TopRight then
					obj:SetPoint( "BOTTOMRIGHT", frame, "TOPRIGHT", 0 - pad_bar, 0 - pad_bar - item_size ) -- OK
				else -- anchor == ArkInventory.Const.Anchor.BottomRight then
					obj:SetPoint( "BOTTOMRIGHT", frame, "BOTTOMRIGHT", 0 - pad_bar, pad_bar ) -- OK
				end
				
			else
			
				if mod( ( j - 1 ), col ) == 0 then
				
					-- next row, anchor to first item in previous row
					local anchorframe = ArkInventory.ContainerItemNameGet( loc_id, bar.item[j-col].bag, bar.item[j-col].slot )
					
					if anchor == ArkInventory.Const.Anchor.BottomLeft then
						obj:SetPoint( "BOTTOMRIGHT", anchorframe, 0, pad_slot + item_size ) -- OK
					elseif anchor == ArkInventory.Const.Anchor.TopLeft then
						obj:SetPoint( "BOTTOMRIGHT", anchorframe, 0, 0 - pad_slot - item_size ) -- OK
					elseif anchor == ArkInventory.Const.Anchor.TopRight then
						obj:SetPoint( "BOTTOMRIGHT", anchorframe, 0, 0 - pad_slot - item_size ) -- OK
					else -- if anchor == ArkInventory.Const.Anchor.BottomRight then
						obj:SetPoint( "BOTTOMRIGHT", anchorframe, 0, pad_slot + item_size ) -- OK
					end
						
				else
				
					-- anchor to last item
					
					local anchorframe = ArkInventory.ContainerItemNameGet( loc_id, bar.item[j-1].bag, bar.item[j-1].slot )
					
					if anchor == ArkInventory.Const.Anchor.BottomLeft then
						obj:SetPoint( "BOTTOMRIGHT", anchorframe, pad_slot + item_size, 0 )
					elseif anchor == ArkInventory.Const.Anchor.TopLeft then
						obj:SetPoint( "BOTTOMRIGHT", anchorframe, pad_slot + item_size, 0 )
					elseif anchor == ArkInventory.Const.Anchor.TopRight then
						obj:SetPoint( "BOTTOMRIGHT", anchorframe, 0 - pad_slot - item_size, 0 )
					else -- if anchor == ArkInventory.Const.Anchor.BottomRight then
						obj:SetPoint( "BOTTOMRIGHT", anchorframe, 0 - pad_slot - item_size, 0 )
					end
					
				end
				
			end
			
		end
	
		obj:Show()

		if ArkInventory.Global.Location[loc_id].draw_state <= ArkInventory.Const.Window.Draw.Refresh then
			ArkInventory.Frame_Item_Update_QualityBorder( obj )
			ArkInventory.Frame_Item_Update_Fade( obj )
			ArkInventory.Frame_Item_Update_Count( obj )
			ArkInventory.Frame_Item_Update_Texture( obj )
			ArkInventory.Frame_Item_Update_Lock( obj )
			ArkInventory.Frame_Item_Update_Cooldown( obj )
		end

	end

end

function ArkInventory.Frame_Bar_Label( frame )

	local loc_id = frame.ARK_Data.loc_id
	local bar_id = frame.ARK_Data.bar_id
	
	local nameplate = getfenv()[frame:GetName() .. "Label"]
	
	if nameplate ~= nil then
		
		local txt = ArkInventory.LocationOptionGet( loc_id, { "bar", "name", "label", bar_id } )
		
		if txt and txt ~= "" and ArkInventory.LocationOptionGet( loc_id, { "bar", "name", "show" } ) then
		
			nameplate:SetText( txt )
		
			local colour = ArkInventory.LocationOptionGet( loc_id, { "bar", "name", "colour" } )
			nameplate:SetTextColor( colour.r, colour.g, colour.b )
			
			nameplate:Show()
			
		else
		
			nameplate:Hide()
			
		end
		
	end

end

function ArkInventory.Frame_Bar_Label_Insert( loc_id, bar_id )

	local tbl = { }
	for k, v in pairs( ArkInventory.LocationOptionGet( loc_id, { "bar", "name", "label" } ) ) do
		if k >= bar_id then
			tbl[k + 1] = v
		else
			tbl[k] = v
		end
	end
	ArkInventory.LocationOptionSet( loc_id, { "bar", "name", "label" }, tbl )

end

function ArkInventory.Frame_Bar_Label_Remove( loc_id, bar_id )

	local tbl = { }
	for k, v in pairs( ArkInventory.LocationOptionGet( loc_id, { "bar", "name", "label" } ) ) do
		if k > bar_id then
			tbl[k - 1] = v
		elseif k == bar_id then
			-- do nothing
		else
			tbl[k] = v
		end
	end
	ArkInventory.LocationOptionSet( loc_id, { "bar", "name", "label" }, tbl )

end

function ArkInventory.Frame_Bar_Label_Up( loc_id, bar_id )

	local txt1 = ArkInventory.LocationOptionGet( loc_id, { "bar", "name", "label", bar_id } )
	local txt2 = ArkInventory.LocationOptionGet( loc_id, { "bar", "name", "label", bar_id + 1 } )

	ArkInventory.LocationOptionSet( loc_id, { "bar", "name", "label", bar_id }, txt2 )
	ArkInventory.LocationOptionSet( loc_id, { "bar", "name", "label", bar_id + 1 }, txt1 )

end

function ArkInventory.Frame_Bar_Label_Down( loc_id, bar_id )

	local txt1 = ArkInventory.LocationOptionGet( loc_id, { "bar", "name", "label", bar_id } )
	local txt2 = ArkInventory.LocationOptionGet( loc_id, { "bar", "name", "label", bar_id - 1 } )

	ArkInventory.LocationOptionSet( loc_id, { "bar", "name", "label", bar_id }, txt2 )
	ArkInventory.LocationOptionSet( loc_id, { "bar", "name", "label", bar_id - 1 }, txt1 )

end

function ArkInventory.Frame_Bar_Label_Clear( loc_id, bar_id )

	ArkInventory.LocationOptionSet( loc_id, { "bar", "name", "label", bar_id }, "" )

end

function ArkInventory.Frame_Bar_OnLoad( frame )

	assert( frame, "frame is nil" )

	local framename = frame:GetName()
	local loc_id, bar_id = strmatch( framename, "^.-(%d+)ContainerBar(%d+)" )

	assert( loc_id, string.format( "xml element '%s' is not an %s frame", framename, ArkInventory.Const.Program.Name ) )
	assert( bar_id, string.format( "xml element '%s' is not an %s frame", framename, ArkInventory.Const.Program.Name ) )
	
	frame.ARK_Data = {
		["loc_id"] = tonumber( loc_id ),
		["bar_id"] = tonumber( bar_id ),
	}
	
	frame:SetID( bar_id )

end


function ArkInventory.Frame_Bag_OnLoad( frame )

	assert( frame, "frame is nil" )

	local framename = frame:GetName()
	local loc_id, bag_id = strmatch( framename, "^.-(%d+)ContainerBag(%-?%d+)" )
	
	assert( loc_id, string.format( "xml element '%s' is not an %s frame", framename, ArkInventory.Const.Program.Name ) )
	assert( bag_id, string.format( "xml element '%s' is not an %s frame", framename, ArkInventory.Const.Program.Name ) )
	
	frame.ARK_Data = {
		["loc_id"] = tonumber( loc_id ),
		["bag_id"] = tonumber( bag_id ),
	}
	
	frame:SetID( bag_id )
	
end


function ArkInventory.Frame_Item_GetDB( frame )

	local loc_id = frame.ARK_Data.loc_id
	local cp = ArkInventory.LocationPlayerInfoGet( loc_id )
	local bag_id = frame.ARK_Data.bag_id
	local slot_id = frame.ARK_Data.slot_id

	ArkInventory.LocationCacheSetup( loc_id, cp )
	
	local bag = ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].bag[bag_id]
	assert( bag, "cache data for bag " .. bag_id .. " does not exist yet" )
	
	local i = bag.slot[slot_id]
	assert( i, "cache data for '" .. frame:GetName() .. "' does not exist yet" )
	
	return i
	
end
	
function ArkInventory.Frame_Item_Update_Texture( frame )
	
	if ArkInventory.ValidFrame( frame, true ) == false then
		return
	end

	local loc_id = frame.ARK_Data.loc_id
	local i = ArkInventory.Frame_Item_GetDB( frame )

	if i.h then

		-- frame has an item
		frame.hasItem = 1
		
		-- item is readable?
		if loc_id ~= ArkInventory.Const.Location.Vault then
			if ArkInventory.Global.Location[loc_id].offline == false then
				frame.readable = select( 5, GetContainerItemInfo( i.bag_id, i.slot_id ) )
			end
		else
			frame.readable = nil
		end

		-- item texture
		local t = ArkInventory.ItemGetTexture( i.h )
		ArkInventory.SetItemButtonTexture( frame, t )
		
		-- full brightness display
		SetItemButtonTextureVertexColor( frame, 1, 1, 1 )

	else
		
		frame.hasItem = nil
		
		frame.readable = nil
	
		ArkInventory.Frame_Item_Update_Empty( frame )
		
	end

	-- new item indicator
	ArkInventory.Frame_Item_Update_NewIndicator( frame )
	
end

function ArkInventory.SetItemButtonTexture( frame, texture )
	
	if not frame then
		return
	end
	
	local obj = getfenv()[frame:GetName() .. "IconTexture"]
	
	if not obj then
		return
	end
	
	if texture then
		obj:Show()
	else
		obj:Hide()
	end
	
	obj:SetTexture( texture )
	obj:SetTexCoord( 0.075, 0.925, 0.075, 0.925 )
	
end

function ArkInventory.Frame_Item_Update_Count( frame )

	local i = ArkInventory.Frame_Item_GetDB( frame )
	SetItemButtonCount( frame, i.count )
	
end

function ArkInventory.Frame_Item_Update_Fade( frame )

	if ArkInventory.ValidFrame( frame, true ) == false then
		return
	end

	local loc_id = frame.ARK_Data.loc_id
	local action = false

	if ArkInventory.Global.Location[loc_id].offline and ArkInventory.LocationOptionGet( loc_id, { "slot", "offline", "fade" } ) then
	
		action = true
		
	else
	
		if loc_id == ArkInventory.Const.Location.Vault then
		
			local tab_id = frame.ARK_Data.bag_id - ArkInventory.Const.Offset.Vault
			local _, _, _, canDeposit, numWithdrawals = GetGuildBankTabInfo( tab_id )
			if not canDeposit and numWithdrawals == 0 then
				action = true
			end
		
		end
	
	end

	if action then
		frame:SetAlpha( ArkInventory.Const.Fade )
	else
		frame:SetAlpha( 1 )
	end
	
end

function ArkInventory.Frame_Item_Update_QualityBorder( frame )

	if ArkInventory.ValidFrame( frame, true ) == false then
		return
	end
	
	local framename = frame:GetName()
	local obj_name = "ArkQualityBorder"
	local obj = getfenv()[framename .. obj_name]
	assert( obj, string.format( "xml element '%s' is missing the sub element %s", framename, obj_name ) )
	
	local loc_id = frame.ARK_Data.loc_id
	local cp = ArkInventory.LocationPlayerInfoGet( loc_id )
	local bag_id = frame.ARK_Data.bag_id
	local i = ArkInventory.Frame_Item_GetDB( frame )

	ArkInventory.Frame_Item_Update_QualityBorderBackdrop( frame )
	
	if i.h then
	
		if ArkInventory.LocationOptionGet( loc_id, { "slot", "border", "rarity" } ) then
			local r, g, b = GetItemQualityColor( i.q or 0 )	
			obj:SetBackdropBorderColor( r, g, b, 1 )
		else
			local r, g, b = GetItemQualityColor( 0 )
			obj:SetBackdropBorderColor( r, g, b, 1 )
		end
		
	else
	
		if ArkInventory.LocationOptionGet( loc_id, { "slot", "empty", "border" } ) then
			-- slot colour
			local bt = ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].bag[bag_id].type
			local colour = ArkInventory.LocationOptionGet( loc_id, { "slot", "data", bt, "colour" } )
			obj:SetBackdropBorderColor( colour.r, colour.g, colour.b, 1 )
		else
			-- trash colour
			local r, g, b = GetItemQualityColor( 0 )
			obj:SetBackdropBorderColor( r, g, b, 1 )
		end
	
	end
	
end

function ArkInventory.Frame_Item_Update_QualityBorderBackdrop( frame )

	local framename = frame:GetName()
	local obj_name = "ArkQualityBorder"
	local obj = getfenv()[framename .. obj_name]
	assert( obj, string.format( "xml element '%s' is missing the sub element %s", framename, obj_name ) )
	
	local loc_id = frame.ARK_Data.loc_id

	if ArkInventory.LocationOptionGet( loc_id, { "slot", "border", "show" } ) then

		local default = "Tooltip"
		local file = ArkInventory.LocationOptionGet( loc_id, { "slot", "border", "file" } ) or ArkInventory.Const.Texture.Border[default].file
		local size = ArkInventory.LocationOptionGet( loc_id, { "slot", "border", "size" } ) or ArkInventory.Const.Texture.Border[default].size
		local offset = ArkInventory.LocationOptionGet( loc_id, { "slot", "border", "offset" } ) or ArkInventory.Const.Texture.Border[default].offset
		
		local scale = ArkInventory.LocationOptionGet( loc_id, { "slot", "border", "scale" } ) or 1
		
		
		obj:SetBackdrop( { ["edgeFile"] = file, ["edgeSize"] = size * scale } )
		
		offset = offset * scale
		
		obj:ClearAllPoints()
		obj:SetPoint( "TOPLEFT", framename .. "IconTexture", 0 - offset, offset )
		obj:SetPoint( "BOTTOMRIGHT", framename .. "IconTexture", offset, 0 - offset )
		
		obj:Show()
		
	else
	
		obj:Hide()
		
	end
	
end

function ArkInventory.Frame_Item_Update_NewIndicator( frame )
	
	if ArkInventory.ValidFrame( frame, true ) == false then
		return
	end

	local framename = frame:GetName()
	local loc_id = frame.ARK_Data.loc_id
	local i = ArkInventory.Frame_Item_GetDB( frame )
	
	local obj_name = "ArkNewText"
	local obj = getfenv()[framename .. obj_name]
	assert( obj, string.format( "xml element '%s' is missing the sub element %s", framename, obj_name ) )
	
	if i.h and ArkInventory.LocationOptionGet( loc_id, { "slot", "new", "show" } ) then
		colour = ArkInventory.LocationOptionGet( loc_id, { "slot", "new", "colour" } )
		obj:SetTextColor( colour.r, colour.g, colour.b )
		if i.new == ArkInventory.Const.Slot.New.None then
			obj:Hide()
		elseif i.new == ArkInventory.Const.Slot.New.New then
			obj:SetText( ArkInventory.Localise["NEW_ITEM_NEW"] )
			obj:Show()
		elseif i.new == ArkInventory.Const.Slot.New.Increased then
			obj:SetText( ArkInventory.Localise["NEW_ITEM_INCREASE"] )
			obj:Show()
		elseif i.new == ArkInventory.Const.Slot.New.Decreased then
			obj:SetText( ArkInventory.Localise["NEW_ITEM_DECREASE"] )
			obj:Show()
		end
	else
		obj:Hide()
	end
	
end

function ArkInventory.Frame_Item_Update_Empty( frame )

	if ArkInventory.ValidFrame( frame, true ) == false then
		return
	end
	
	local loc_id = frame.ARK_Data.loc_id
	local cp = ArkInventory.LocationPlayerInfoGet( loc_id )
	local bag_id = frame.ARK_Data.bag_id
	local i = ArkInventory.Frame_Item_GetDB( frame )
	
	if not i.h then
	
		local bt = ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].bag[bag_id].type
	
		-- slot background
		if ArkInventory.LocationOptionGet( loc_id, { "slot", "empty", "icon" } ) then
		
			-- icon
			local texture = ArkInventory.Const.Slot.Data[bt].texture or ArkInventory.Const.Texture.Empty.Slot
			
			-- wearing empty slot icons
			if loc_id == ArkInventory.Const.Location.Wearing then
				local a, b = GetInventorySlotInfo( ArkInventory.Const.InventorySlotName[i.slot_id] )
				--ArkInventory.PrintPlus( { "id=[", i.slot_id, "], name=[", ArkInventory.Const.InventorySlotName[i.slot_id], "], texture=[", b, "]" } )
				texture = b
			end
			
			ArkInventory.SetItemButtonTexture( frame, texture )
			SetItemButtonTextureVertexColor( frame, 1, 1, 1 )
			
		else

			-- solid colour
			local colour = ArkInventory.LocationOptionGet( loc_id, { "slot", "data", bt, "colour" } )
			ArkInventory.SetItemButtonTexture( frame, [[Interface\Buttons\WHITE8X8]] )
			SetItemButtonTextureVertexColor( frame, colour.r * 0.25, colour.g * 0.25, colour.b * 0.25 )
		end
		
	end
	
end
	
function ArkInventory.Frame_Item_OnEnter( frame )

	if ArkInventory.ValidFrame( frame, true ) == false then
		return
	end

	if not ArkInventory.db.account.option.tooltip.show then
		return
	end
	
	local loc_id = frame.ARK_Data.loc_id
	local i = ArkInventory.Frame_Item_GetDB( frame )
	
	local usedmycode = false
	
	if ArkInventory.Global.Mode.Edit or ArkInventory.Global.Location[loc_id].offline or i.bag_id == BANK_CONTAINER or i.bag_id == KEYRING_CONTAINER or loc_id == ArkInventory.Const.Location.Vault or loc_id == ArkInventory.Const.Location.Wearing or loc_id == ArkInventory.Const.Location.Mail then

		usedmycode = true -- edit mode, offline, bank, keyring, vault
		
		if i.h then
	
			ArkInventory.GameTooltipSetPosition( frame )

			if loc_id == ArkInventory.Const.Location.Mail then

				GameTooltip:SetHyperlink( i.h )
				
				local daysLeft = 0
				if i.dl then
				
					GameTooltip:AddLine( dl, 0, 1, 0 )
				
--[[					if i.dl >= 1 then
						daysLeft = TIME_REMAINING .. " " .. floor(i.dl) .. " " .. GetText("DAYS_ABBR", nil, floor(i.dl))
						GameTooltip:AddLine( daysLeft, 0, 1, 0 )
					else
						daysLeft = TIME_REMAINING .. " " .. SecondsToTime(floor(i.dl * 24 * 60 * 60))
						GameTooltip:AddLine( daysLeft, 1, 0, 0 )
					end
	]]--				
				end
				
			elseif loc_id == ArkInventory.Const.Location.Wearing then
			
				GameTooltip:SetHyperlink( i.h )
				
			elseif ArkInventory.Global.Mode.Edit or ArkInventory.Global.Location[loc_id].offline then
				
				GameTooltip:SetHyperlink( i.h )
				
				
	-- online options
				
			elseif i.bag_id == BANK_CONTAINER then
				
				GameTooltip:SetInventoryItem( "player", BankButtonIDToInvSlotID( i.slot_id ) )

			elseif i.bag_id == KEYRING_CONTAINER then
			
				GameTooltip:SetInventoryItem( "player", KeyRingButtonIDToInvSlotID( i.slot_id ) )
				
			elseif loc_id == ArkInventory.Const.Location.Vault then
			
				local tab_id = i.bag_id - ArkInventory.Const.Offset.Vault
				
				local _, _, isViewable = GetGuildBankTabInfo( tab_id )

				if isViewable then
					GameTooltip:SetGuildBankItem( tab_id, i.slot_id )
				else
					GameTooltip:SetHyperlink( i.h )
				end

			else
			
				assert( false, "uncoded value to build tooltip " )
				
			end
			

			if IsShiftKeyDown() then
				GameTooltip_ShowCompareItem()
			elseif IsControlKeyDown() then
				ShowInspectCursor()
			elseif frame.readable then
				ShowInspectCursor()
			else
				SetCursor( "POINT_CURSOR" )
			end
			
			CursorUpdate()
			
			GameTooltip:Show()
			
		end

	end
	
	if usedmycode == false then
		ContainerFrameItemButton_OnEnter( frame )
	end

end

function ArkInventory.Frame_Item_OnDrag( frame )
	
	if ArkInventory.ValidFrame( frame, true ) == false then
		return
	end

	local loc_id = frame.ARK_Data.loc_id
	local usedmycode = false
	
	if ArkInventory.Global.Location[loc_id].offline or ArkInventory.Global.Mode.Edit then
	
		usedmycode = true
		-- do not drag for disabled buttons
		
	end

	if usedmycode == false then
		ContainerFrameItemButton_OnClick( "LeftButton" )
	end

end

function ArkInventory.Frame_Item_OnMouseUp( frame, arg1 )

	if ArkInventory.ValidFrame( frame, true ) == false then
		return
	end
	
	local loc_id = frame.ARK_Data.loc_id
	local i = ArkInventory.Frame_Item_GetDB( frame )
		
	if ArkInventory.Global.Location[loc_id].offline or ArkInventory.Global.Mode.Edit then
		
		if IsModifierKeyDown() then
			
			if i.h then
				HandleModifiedItemClick( i.h )
			end
			
		else
	
			if ArkInventory.Global.Mode.Edit then
				ArkInventory.MenuItemOpen( frame )
			end
	
		end
			
	end
		
end

function ArkInventory.Frame_Item_Update_Cooldown( frame, arg1 )

	-- triggered when a cooldown is first started, and used to hide/show the cooldown frame when offline
	
	if ArkInventory.ValidFrame( frame, true ) == false then
		return
	end
	
	local loc_id = frame.ARK_Data.loc_id
	local i = ArkInventory.Frame_Item_GetDB( frame )
	local framename = frame:GetName()

	if arg1 == nil or arg1 == i.bag_id then
	
		local obj_name = "Cooldown"
		local obj = getfenv()[framename .. obj_name]
		assert( obj, string.format( "xml element '%s' is missing the sub element %s", framename, obj_name ) )
	
		if ArkInventory.Global.Location[loc_id].offline then
			obj:Hide()
		else
			ContainerFrame_UpdateCooldown( i.bag_id, frame )
		end
		
	end
	
end

function ArkInventory.Frame_Item_Update_Lock( frame )

	if ArkInventory.ValidFrame( frame, true ) == false then
		return
	end
	
	local loc_id = frame.ARK_Data.loc_id
	
	if ArkInventory.Global.Location[loc_id].offline then
		return
	end
	
	local i = ArkInventory.Frame_Item_GetDB( frame )
		
	if i.h then
		
		local locked = false
		local readable = false
		local quality = nil
		
		if loc_id == ArkInventory.Const.Location.Vault then
			
			locked = select( 3, GetGuildBankItemInfo( i.bag_id - ArkInventory.Const.Offset.Vault, i.slot_id ) )
			
		else
		
			local _
			_, _, locked, quality, readable = GetContainerItemInfo( i.bag_id, i.slot_id )
			
		end

		SetItemButtonDesaturated( frame, locked, 0.5, 0.5, 0.5 )
		
		frame.locked = locked
		frame.readable = readable
	
	else
	
		frame.locked = false
		frame.readable = false
	
	end

end

function ArkInventory.Frame_Item_Update_Clickable( frame )

	if ArkInventory.ValidFrame( frame, true ) == false then
		return
	end

	local loc_id = frame.ARK_Data.loc_id
	
	local action = false

	if ArkInventory.Global.Mode.Edit or ArkInventory.Global.Location[loc_id].offline then
	
		action = true
		
	else
	
		if frame.ARK_Data.loc_id == ArkInventory.Const.Location.Vault then
		
			local tab_id = frame.ARK_Data.bag_id - ArkInventory.Const.Offset.Vault
			local _, _, _, canDeposit, numWithdrawals = GetGuildBankTabInfo( tab_id )
			if not canDeposit and numWithdrawals == 0 then
				action = true
			end
		
		end
	
	end

	if action then
		-- disable clicks/drag when in edit mode or offline
		frame:RegisterForClicks()
		frame:RegisterForDrag()
	else
		frame:RegisterForClicks( "LeftButtonUp", "RightButtonUp" )
		frame:RegisterForDrag( "LeftButton" )
	end
	
end
	
function ArkInventory.Frame_Item_OnLoad( frame )

	local framename = frame:GetName()
	local loc_id, bag_id, slot_id = strmatch( framename, "^.-(%d+)ContainerBag(%-?%d+)Item(%d+)" )
	
	assert( loc_id, string.format( "xml element '%s' is not an %s frame", framename, ArkInventory.Const.Program.Name ) )
	assert( bag_id, string.format( "xml element '%s' is not an %s frame", framename, ArkInventory.Const.Program.Name ) )
	assert( slot_id, string.format( "xml element '%s' is not an %s frame", framename, ArkInventory.Const.Program.Name ) )
	
	frame:SetID( slot_id ) -- use the string version
	
	loc_id = tonumber( loc_id )
	bag_id = tonumber( bag_id )
	slot_id = tonumber( slot_id )
	
	frame.ARK_Data = {
		["loc_id"] = loc_id,
		["bag_id"] = bag_id,
		["slot_id"] = slot_id,
	}
	
	ContainerFrameItemButton_OnLoad()
	
	local obj = getfenv()[framename .. "Count"]
	if obj ~= nil then
		obj:SetPoint( "BOTTOMRIGHT", frame, "BOTTOMRIGHT", 0, 2 )
		obj:SetPoint( "LEFT", frame, "LEFT", 0, 0 )
	end
	
	frame.UpdateTooltip = ArkInventory.Frame_Item_OnEnter
	
	frame.locked = false
	
	if loc_id == ArkInventory.Const.Location.Vault then
		
		-- replace the split function
		frame.SplitStack = function( button, split )
		
			local tab_id = frame.ARK_Data.bag_id - ArkInventory.Const.Offset.Vault
			local slot_id = frame.ARK_Data.slot_id
			
			SplitGuildBankItem( tab_id, slot_id, split )
			
		end
		
	end
	
end


function ArkInventory.Frame_Status_Update( frame )

	local loc_id = frame.ARK_Data.loc_id
	local cp = ArkInventory.LocationPlayerInfoGet( loc_id )
	
	-- hide the status window if it's not needed
	local obj = getfenv()[frame:GetName() .. ArkInventory.Const.Frame.Status.Name]
	if ArkInventory.LocationOptionGet( loc_id, { "framehide", "status" } ) then
		obj:Hide()
		obj:SetHeight( 3 )
		return
	else
		obj:SetHeight( ArkInventory.Const.Frame.Status.Height )
		obj:Show()
	end

	
	-- update money
	local moneyFrameName = obj:GetName() .. "Gold"
	local moneyFrame = getfenv()[moneyFrameName]
	assert( moneyFrame, "moneyframe is nil" )

	if ArkInventory.Global.Location[loc_id].offline then
		ArkInventory.MoneyFrame_SetType( "STATIC", moneyFrame )
		MoneyFrame_Update( moneyFrameName, cp.money )
		SetMoneyFrameColor( moneyFrameName, 0.75, 0.75, 0.75 )
	else
		SetMoneyFrameColor( moneyFrameName, 1, 1, 1 )
		if loc_id == ArkInventory.Const.Location.Vault then
			ArkInventory.MoneyFrame_SetType( "GUILDBANK", moneyFrame )
		else
			ArkInventory.MoneyFrame_SetType( "PLAYER", moneyFrame )
		end
	end
	

	
	-- update the empty slot count
	local empty = { }
	
	ArkInventory.LocationCacheSetup( loc_id, cp )
	local bags = ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].bag
	
	for k, bag in pairs( bags ) do
	
		if not empty[bag.type] then
			empty[bag.type] = { ["count"] = 0, ["empty"] = 0, ["type"] = bag.type }
		end
		
		if bag.status == ArkInventory.Const.Bag.Status.Active then
			empty[bag.type].count = empty[bag.type].count + bag.count
			empty[bag.type].empty = empty[bag.type].empty + bag.empty
		end
		
	end

	local ee = ArkInventory.Table.Sum( empty, function( a ) return a.empty end )
	local ts = ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].slot_count
	
	local y = ""
	if ee == 0 then
		y = RED_FONT_COLOR_CODE .. ArkInventory.Localise["STATUS_FULL"]
	else
		y = y .. ee .. "/" .. ts
	end

	if ts == 0 then
		y = RED_FONT_COLOR_CODE .. ArkInventory.Localise["STATUS_NO_DATA"]
	end

	
	if ts ~= 0 and ArkInventory.Table.Elements( empty ) > 1 then
		local z = 0
		local x
		y = y .. "  -  "
		for t, e in ArkInventory.spairs( empty, function(a,b) return empty[a].type < empty[b].type end ) do
			z = z + 1
			--x = e.empty .. "/" .. e.count .. " " .. ArkInventory.BagTypeText( t )
			x = e.empty .. " " .. ArkInventory.LocationOptionGet( loc_id, { "slot", "data", t, "name" } )
			if e.empty == 0 then
				local ec = ArkInventory.LocationOptionGet( loc_id, { "slot", "data", t, "emptycolour" } )
				if ec == nil then
					ec = RED_FONT_COLOR_CODE
				end
				x = ec .. x .. FONT_COLOR_CODE_CLOSE
			end
			
			if z == 1 then
				y = y .. x
			else
				y = y .. ", " .. x
			end
			
		end
	end

	getfenv()[frame:GetName() .. ArkInventory.Const.Frame.Status.Name .. "Text"]:SetText( y )


end


function ArkInventory.Frame_Vault_Item_OnClick( frame, arg1 )
	
	if frame.ARK_Data.loc_id == ArkInventory.Const.Location.Vault then
	
		--ArkInventory.PrintPlus( { "OnClick( ", frame:GetName(), ", ", arg1, " )" } )

		local loc_id = frame.ARK_Data.loc_id
		local tab_id = frame.ARK_Data.bag_id - ArkInventory.Const.Offset.Vault
		local slot_id = frame.ARK_Data.slot_id
	
		if HandleModifiedItemClick( GetGuildBankItemLink( tab_id, slot_id ) ) then
			return
		end
		
		if IsModifiedClick( "SPLITSTACK" ) then
			if not frame.locked then
				OpenStackSplitFrame( frame.count, frame, "BOTTOMLEFT", "TOPLEFT")
			end
			return
		end
		
		local infoType, info1, info2 = GetCursorInfo()
		if infoType == "money" then
			DepositGuildBankMoney( info1 )
			ClearCursor()
		elseif infoType == "guildbankmoney" then
			DropCursorMoney()
			ClearCursor()
		else
			if arg1 == "RightButton" then
				AutoStoreGuildBankItem( tab_id, slot_id )
			else
				PickupGuildBankItem( tab_id, slot_id )
			end
		end

	end

end

function ArkInventory.Frame_Vault_Item_Update_Lock()

	local loc_id = ArkInventory.Const.Location.Vault
	local loc = ArkInventory.Global.Location[loc_id]
	
	for _, bag_id in pairs( loc.Bags ) do
		for slot_id = 1, loc.slot_max[bag_id] or 0 do
			local framename = ArkInventory.ContainerItemNameGet( loc_id, bag_id, slot_id )
			local frame = getfenv()[framename]
			ArkInventory.Frame_Item_Update_Lock( frame )
		end
	end

end


function ArkInventory.Frame_Changer_Player_Update()

	local loc_id = ArkInventory.Const.Location.Bag

	for x = 0, NUM_BAG_SLOTS do
	
		local frame = getfenv()[ArkInventory.Const.Frame.Main.Name .. loc_id .. ArkInventory.Const.Frame.Changer.Name .. "WindowBag" .. x]

		ArkInventory.Frame_Item_Update_QualityBorderBackdrop( frame )
		
		if x == 0 then
			ArkInventory.Frame_Changer_Player_Main_Update( frame )
		else
			ArkInventory.Frame_Changer_Generic_Extra_Update( frame )
		end
		
	end

end

function ArkInventory.Frame_Changer_Player_Main_OnLoad( frame )

	local framename = frame:GetName()

	local loc_id = ArkInventory.Const.Location.Bag
	local bag_id = BACKPACK_CONTAINER
	
	frame.ARK_Data = {
		["loc_id"] = tonumber( loc_id ),
		["bag_id"] = tonumber( bag_id ),
	}

	frame:RegisterForClicks( "LeftButtonUp", "RightButtonUp" )
	
	ArkInventory.SetItemButtonTexture( frame, ArkInventory.Global.Location[loc_id].Texture )
	
	local obj = getfenv()[framename .. "Count"]
	if obj ~= nil then
		obj:SetPoint( "BOTTOMRIGHT", frame, "BOTTOMRIGHT", 0, 2 )
		obj:SetPoint( "LEFT", frame, "LEFT", 0, 0 )
	end

	local obj = getfenv()[framename .. "Stock"]
	if obj ~= nil then
		obj:SetPoint( "TOPLEFT", frame, "TOPLEFT", 0, -2 )
		obj:SetPoint( "RIGHT", frame, "RIGHT", 0, 0 )
	end

end

function ArkInventory.Frame_Changer_Player_Main_Update( frame )

	if ArkInventory.ValidFrame( frame, true ) == false then
		return
	end

	local loc_id = frame.ARK_Data.loc_id
	local cp = ArkInventory.LocationPlayerInfoGet( loc_id )
	local bag_id = frame.ARK_Data.bag_id

	ArkInventory.Frame_Item_Update_Fade( frame )
	
	ArkInventory.Frame_Item_Update_QualityBorderBackdrop( frame )
	
	if ArkInventory.db.account.player.data[cp.player_id].display[loc_id].bag[bag_id] == false then
		SetItemButtonTextureVertexColor( frame, 1.0, 0.1, 0.1 )
	else
		SetItemButtonTextureVertexColor( frame, 1.0, 1.0, 1.0 )
	end
	
	ArkInventory.LocationCacheSetup( loc_id, cp )
	local bag = ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].bag[bag_id]
	
	SetItemButtonCount( frame, bag.count )
	ArkInventory.SetItemButtonStock( frame, bag.empty )
	
end

function ArkInventory.Frame_Changer_Player_Main_OnClick( frame, button )

	local loc_id = frame.ARK_Data.loc_id
	
	if button == nil then
		if not ArkInventory.Global.Location[loc_id].offline then
			PutItemInBackpack()
		end
	elseif button == "RightButton" then
		ArkInventory.MenuBagOpen( frame )
	end
	
end

function ArkInventory.Frame_Changer_Player_Main_OnEnter( frame )
	
	if ArkInventory.db.account.option.tooltip.show then
		ArkInventory.GameTooltipSetText( frame, BACKPACK_TOOLTIP, nil, nil, nil, true )
	end
	
	ArkInventory.BagHighlight( frame, true )
	
end


function ArkInventory.Frame_Changer_Bank_Update()

	local loc_id = ArkInventory.Const.Location.Bank

	local parent = getfenv()[ArkInventory.Const.Frame.Main.Name .. loc_id .. ArkInventory.Const.Frame.Changer.Name .. "Window"]
	
	if not parent:IsVisible() then
		return
	end
	
	for x = 0, NUM_BANKBAGSLOTS do
		local frame = getfenv()[ArkInventory.Const.Frame.Main.Name .. loc_id .. ArkInventory.Const.Frame.Changer.Name .. "WindowBag" .. x]
		
		if x == 0 then
			ArkInventory.Frame_Changer_Bank_Main_Update( frame )
		else
			ArkInventory.Frame_Changer_Generic_Extra_Update( frame )
		end
		
	end

	local purchaseFrame = getfenv()[parent:GetName() .. "PurchaseInfo"]
	
	if ArkInventory.Global.Location[loc_id].offline then
		purchaseFrame:Hide()
		return
	end

	
	-- update blizzards frame as well because the static dialog box uses the data in it
	UpdateBagSlotStatus()

	-- now mimic that frame
	local moneyFrame = purchaseFrame:GetName() .. "DetailMoneyFrame"
	local purchaseButton = getfenv()[purchaseFrame:GetName() .. "PurchaseButton"]
	
	local numSlots, full = GetNumBankSlots()

	-- pass in # of current slots, returns cost of next slot
	local cost = GetBankSlotCost( numSlots )
	
	purchaseFrame.nextSlotCost = cost
	if GetMoney() >= cost then
		SetMoneyFrameColor( moneyFrame, 1.0, 1.0, 1.0 )
		purchaseButton:Enable()
	else
		SetMoneyFrameColor( moneyFrame, 1.0, 0.1, 0.1 )
		purchaseButton:Disable()
	end
	MoneyFrame_Update( moneyFrame, cost )

	if full then
		purchaseFrame:Hide()
	else
		purchaseFrame:Show()
	end
	
end

function ArkInventory.Frame_Changer_Bank_Main_OnLoad( frame )

	local framename = frame:GetName()

	local loc_id = ArkInventory.Const.Location.Bank
	local bag_id = BANK_CONTAINER
	
	frame.ARK_Data = {
		["loc_id"] = tonumber( loc_id ),
		["bag_id"] = tonumber( bag_id ),
	}

	frame:RegisterForClicks( "LeftButtonUp", "RightButtonUp" )

	ArkInventory.SetItemButtonTexture( frame, ArkInventory.Global.Location[loc_id].Texture )
	
	local obj = getfenv()[framename .. "Count"]
	if obj ~= nil then
		obj:SetPoint( "BOTTOMRIGHT", frame, "BOTTOMRIGHT", 0, 2 )
		obj:SetPoint( "LEFT", frame, "LEFT", 0, 0 )
	end

	local obj = getfenv()[framename .. "Stock"]
	if obj ~= nil then
		obj:SetPoint( "TOPLEFT", frame, "TOPLEFT", 0, -2 )
		obj:SetPoint( "RIGHT", frame, "RIGHT", 0, 0 )
	end

end

function ArkInventory.Frame_Changer_Bank_Main_Update( frame )
	ArkInventory.Frame_Changer_Player_Main_Update( frame )
end

function ArkInventory.Frame_Changer_Bank_Main_OnClick( frame, button )

	local loc_id = frame.ARK_Data.loc_id

	if button == nil then
		if not ArkInventory.Global.Location[loc_id].offline then
			ArkInventory.PutItemInBank()
		end
	elseif button == "RightButton" then
		ArkInventory.MenuBagOpen( frame )
	end

end

function ArkInventory.Frame_Changer_Bank_Main_OnEnter( frame )

	if ArkInventory.db.account.option.tooltip.show then
		ArkInventory.GameTooltipSetText( frame, ArkInventory.Localise["LOCATION_BANK"], nil, nil, nil, true )
	end
	
	ArkInventory.BagHighlight( frame, true )
	
end


function ArkInventory.Frame_Changer_Vault_Tab_OnLoad( frame )

	local framename = frame:GetName()
	local loc_id, bag_id = strmatch( framename, "^" .. ArkInventory.Const.Frame.Main.Name .. "(%d+).-(%d+)$" )
	
	loc_id = tonumber( loc_id )
	bag_id = tonumber( bag_id )
	
	frame.ARK_Data = {
		["loc_id"] = loc_id,
		["bag_id"] = bag_id + ArkInventory.Const.Offset.Vault,
		["tab_id"] = bag_id,
	}
	
	frame:RegisterForClicks( "LeftButtonUp", "RightButtonUp" )
	
	ArkInventory.SetItemButtonTexture( frame, ArkInventory.Const.Texture.Empty.Bag )
	
end

function ArkInventory.Frame_Changer_Vault_Tab_OnEnter( frame )

	local loc_id = frame.ARK_Data.loc_id
	local cp = ArkInventory.LocationPlayerInfoGet( loc_id )
	local bag_id = frame.ARK_Data.bag_id

	if ArkInventory.db.account.option.tooltip.show then
	
		ArkInventory.GameTooltipSetPosition( frame, true )
		
		local bag = ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].bag[bag_id]
		
		if bag and bag.name then
			GameTooltip:SetText( bag.name )
		else
			GameTooltip:Hide()
		end
		
		CursorUpdate()
		
	end
	
	--ArkInventory.BagHighlight( frame, true )
	
end

function ArkInventory.Frame_Changer_Vault_Tab_OnClick( frame, button )

	if ArkInventory.ValidFrame( frame, true ) == false then
		return
	end

	local loc_id = frame.ARK_Data.loc_id
	local tab_id = frame.ARK_Data.tab_id
	local bag_id = tab_id + ArkInventory.Const.Offset.Vault
	
	local cp = ArkInventory.LocationPlayerInfoGet( loc_id )
	local tab = ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].bag[bag_id]
	
	if tab.name == nil then
		return
	end

	if button == nil then
		-- drag'n'drop (drop)
		
--		if not ArkInventory.Global.Location[loc_id].offline then
--			ArkInventory.PutItemInGuildBank( tab_id )
--		end

	elseif button == "RightButton" then
		
		ArkInventory.MenuVaultTabOpen( frame )
		
	elseif button == "LeftButton" then

		--ArkInventory.PrintPlus( { "tab ", tab_id, " clicked" } )
		
		local smf = getfenv()[ArkInventory.Const.Frame.Main.Name .. loc_id .. ArkInventory.Const.Frame.Log.Name .. ArkInventory.Const.Frame.Scrolling.List]
		smf:ScrollToTop()
		
		if GuildBankFrame.mode == "bank" then
			if tab_id ~= GetCurrentGuildBankTab() then
				SetCurrentGuildBankTab( tab_id )
				ArkInventory.QueryVault( tab_id )
				ArkInventory.Frame_Main_Generate( nil, nil )
			else
				ArkInventory.Frame_Main_Generate( loc_id, ArkInventory.Const.Window.Draw.Recalculate )
			end
		elseif GuildBankFrame.mode == "log" then
			SetCurrentGuildBankTab( tab_id )
			QueryGuildBankLog( tab_id )
			ArkInventory.Frame_Vault_Log_Update()
		elseif GuildBankFrame.mode == "moneylog" then
			SetCurrentGuildBankTab( tab_id )
			QueryGuildBankLog( MAX_GUILDBANK_TABS + 1 )
			ArkInventory.Frame_Vault_Log_Update()
		end

		
		
	end
	
end

function ArkInventory.Frame_Changer_Vault_Update()

	local loc_id = ArkInventory.Const.Location.Vault
	local parent = ArkInventory.Const.Frame.Main.Name .. loc_id .. ArkInventory.Const.Frame.Changer.Name .. "Window"
	local cp = ArkInventory.LocationPlayerInfoGet( loc_id )
	
	if not getfenv()[parent]:IsVisible() then
		return
	end
	
	for x = 1, MAX_GUILDBANK_TABS do

		local bag_id = ArkInventory.Const.Offset.Vault + x
	
		if x == ArkInventory.Global.Location[loc_id].current_tab then
			ArkInventory.db.account.player.data[cp.player_id].display[loc_id].bag[bag_id] = true
		else
			ArkInventory.db.account.player.data[cp.player_id].display[loc_id].bag[bag_id] = false
		end

		local frame = getfenv()[parent .. "Bag" .. x]
		ArkInventory.Frame_Changer_Generic_Extra_Update( frame )
		
	end
	
	
	local moneyDeposit = parent .. "GoldTotal"
	local buttonDeposit = parent .. "DepositButton"
	local moneyWithdraw = parent .. "GoldAvailable"
	local buttonWithdraw = parent .. "WithdrawButton"
	
	if ArkInventory.Global.Location[loc_id].offline then
	
		getfenv()[moneyDeposit]:Hide()
		getfenv()[buttonDeposit]:Hide()
		getfenv()[moneyWithdraw]:Hide()
		getfenv()[buttonWithdraw]:Hide()
		
	else

		-- update the guild gold total
		MoneyFrame_Update( moneyDeposit, GetGuildBankMoney() )
		getfenv()[moneyDeposit]:Show()
		getfenv()[buttonDeposit]:Show()
		getfenv()[moneyWithdraw]:Show()
		getfenv()[buttonWithdraw]:Show()
	
		-- update the guild withdrawl amount
		
		if CanWithdrawGuildBankMoney() then
	
			local withdrawLimit = GetGuildBankWithdrawMoney()

			if withdrawLimit < 0 then
				-- no limit, set to full amount
				withdrawLimit = GetGuildBankMoney()
			end
			
			if withdrawLimit > 0 then
				
				withdrawLimit = min( withdrawLimit, GetGuildBankMoney() )
				getfenv()[buttonWithdraw]:Enable()
				
			else
			
				getfenv()[buttonWithdraw]:Disable()
				
			end
			
			MoneyFrame_Update( moneyWithdraw, withdrawLimit )
			getfenv()[moneyWithdraw]:Show()
			
		else
		
			getfenv()[moneyWithdraw]:Hide()
			getfenv()[buttonWithdraw]:Disable()
			
		end
		
	end
	
	
	-- purchase frame
	local purchaseFrame = getfenv()[parent .. "PurchaseInfo"]
	
	if ArkInventory.Global.Location[loc_id].offline or not IsGuildLeader() then
	
		purchaseFrame:Hide()
	
	else

		moneyFrame = purchaseFrame:GetName() .. "DetailMoneyFrame"
		purchaseButton = getfenv()[purchaseFrame:GetName() .. "PurchaseButton"]
	
		numSlots = GetNumGuildBankTabs()
		cost = GetGuildBankTabCost()
	
		if not cost then
	
			-- all tabs purchased
			purchaseFrame:Hide()
		
		else
	
			if GetMoney() >= cost then
				SetMoneyFrameColor( moneyFrame, 1.0, 1.0, 1.0 )
				purchaseButton:Enable()
			else
				SetMoneyFrameColor( moneyFrame, 1.0, 0.1, 0.1 )
				purchaseButton:Disable()
			end
			
			MoneyFrame_Update( moneyFrame, cost )
			purchaseFrame:Show()
	
		end
		
	end
	
end


function ArkInventory.Frame_Changer_Generic_Extra_OnLoad( frame )

	local framename = frame:GetName()

	local loc_id, bag_id = strmatch( framename, "^" .. ArkInventory.Const.Frame.Main.Name .. "(%d+).-(%d+)$" )
	local inv_id = nil
	
	loc_id = tonumber( loc_id )
	bag_id = tonumber( bag_id )
	
	if loc_id == ArkInventory.Const.Location.Bag then
	
		inv_id = ContainerIDToInventoryID( bag_id )
		
	elseif loc_id == ArkInventory.Const.Location.Bank then
	
		bag_id = bag_id + NUM_BAG_SLOTS
		inv_id = BankButtonIDToInvSlotID( bag_id, 1 )
		
	end
	
	frame.ARK_Data = {
		["loc_id"] = loc_id,
		["bag_id"] = bag_id,
		["inv_id"] = inv_id,
	}
	
	frame:RegisterForClicks( "LeftButtonUp", "RightButtonUp" )
	frame:RegisterForDrag( "LeftButton" )

	ArkInventory.SetItemButtonTexture( frame, ArkInventory.Const.Texture.Empty.Bag )

	local obj = getfenv()[framename .. "Count"]
	if obj ~= nil then
		obj:SetPoint( "BOTTOMRIGHT", frame, "BOTTOMRIGHT", 0, 2 )
		obj:SetPoint( "LEFT", frame, "LEFT", 0, 0 )
	end

	local obj = getfenv()[framename .. "Stock"]
	if obj ~= nil then
		obj:SetPoint( "TOPLEFT", frame, "TOPLEFT", 0, -2 )
		obj:SetPoint( "RIGHT", frame, "RIGHT", 0, 0 )
	end

end

function ArkInventory.Frame_Changer_Generic_Extra_OnClick( frame, button )
	
	if ArkInventory.ValidFrame( frame, true ) == false then
		return
	end

	local loc_id = frame.ARK_Data.loc_id
	
	if IsModifiedClick( "CHATLINK" ) then
	
		local cp = ArkInventory.LocationPlayerInfoGet( loc_id )
		local bag_id = frame.ARK_Data.bag_id
		local inv_id = frame.ARK_Data.inv_id
	
		local bag = ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].bag[bag_id]
	
		if not bag or bag.count == 0 then
			-- empty slot, do nothing for the chatlink
		else
			
			if bag.h then
				ChatEdit_InsertLink( bag.h )
			end
			
		end
			
	else
	
		if button == nil then
			
		elseif button == "RightButton" then
			ArkInventory.MenuBagOpen( frame )
		elseif button == "LeftButton" then
			if not ArkInventory.Global.Location[loc_id].offline and not PutItemInBag( frame.ARK_Data.inv_id ) then
				ArkInventory.Frame_Changer_Generic_Extra_OnDragStart( frame )
			end
		end
		
	end
	
end

function ArkInventory.Frame_Changer_Generic_Extra_OnDragStart( frame )

	if ArkInventory.ValidFrame( frame, true ) == false then
		return
	end

	local loc_id = frame.ARK_Data.loc_id
	
	if ArkInventory.Global.Location[loc_id].offline then
		return
	end
	
	if loc_id == ArkInventory.Const.Location.Vault then
		return
	end
	
	PickupBagFromSlot( frame.ARK_Data.inv_id )
	PlaySound( "BAGMENUBUTTONPRESS" )
	
end

function ArkInventory.Frame_Changer_Generic_Extra_OnReceiveDrag( frame )

	if ArkInventory.ValidFrame( frame, true ) == false then
		return
	end

	local loc_id = frame.ARK_Data.loc_id
	
	if ArkInventory.Global.Location[loc_id].offline then
		return
	end
	
	ArkInventory.Frame_Changer_Generic_Extra_OnClick( frame )
	
end

function ArkInventory.Frame_Changer_Generic_Extra_OnEnter( frame )

	if ArkInventory.ValidFrame( frame, true ) == false then
		return
	end
	
	local loc_id = frame.ARK_Data.loc_id
	local cp = ArkInventory.LocationPlayerInfoGet( loc_id )
	local bag_id = frame.ARK_Data.bag_id
	local inv_id = frame.ARK_Data.inv_id

	if ArkInventory.db.account.option.tooltip.show then
	
		ArkInventory.GameTooltipSetPosition( frame, true )
	
		if ArkInventory.Global.Location[loc_id].offline then
	
			ArkInventory.LocationCacheSetup( loc_id, cp )
			local b = ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].bag[bag_id]
	
			if not b or b.count == 0 then
				-- empty slot, do nothing for the tooltip
			else
		
				if b.h then
					GameTooltip:SetHyperlink( b.h )
				else
					GameTooltip:SetText( ArkInventory.Localise["STATUS_NO_DATA"], 1.0, 1.0, 1.0 )
				end
			
			end
		
		else
	
			GameTooltip:SetInventoryItem( "player", inv_id )

		end
	
		CursorUpdate()
	
	end
	
	ArkInventory.BagHighlight( frame, true )
	
end

function ArkInventory.Frame_Changer_Generic_Extra_Update( frame )

	if ArkInventory.ValidFrame( frame, true ) == false then
		return
	end

	local loc_id = frame.ARK_Data.loc_id
	local cp = ArkInventory.LocationPlayerInfoGet( loc_id )
	local bag_id = frame.ARK_Data.bag_id
	--local inv_id = frame.ARK_Data.inv_id
	
	ArkInventory.LocationCacheSetup( loc_id, cp )
	local bag = ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].bag[bag_id]
	
	--ArkInventory.PrintPlus( { "who[", cp, "].loc[", loc_id, "].bag[", bag_id, "]" } )
	
	if bag.count > 0 then
	
		frame.size = bag.count or 0
		ArkInventory.SetItemButtonTexture( frame, bag.texture )
		SetItemButtonCount( frame, frame.size )
		
	else
	
		frame.size = 0
		ArkInventory.SetItemButtonTexture( frame, ArkInventory.Const.Texture.Empty.Bag )
		SetItemButtonCount( frame, frame.size )
		
	end
		
	if bag.status == ArkInventory.Const.Bag.Status.Active then
		ArkInventory.SetItemButtonStock( frame, bag.empty )
	else
		ArkInventory.SetItemButtonStock( frame, bag.status )
	end

	ArkInventory.Frame_Item_Update_Fade( frame )
	
	ArkInventory.Frame_Item_Update_QualityBorderBackdrop( frame )
	
	if ArkInventory.db.account.player.data[cp.player_id].display[loc_id].bag[bag_id] == false then
		SetItemButtonTextureVertexColor( frame, 1.0, 0.1, 0.1 )
	else
		if bag and bag.status == ArkInventory.Const.Bag.Status.Purchase then
			SetItemButtonTextureVertexColor( frame, 1.0, 0.1, 0.1 )
		else
			SetItemButtonTextureVertexColor( frame, 1.0, 1.0, 1.0 )
		end
	end

end

function ArkInventory.Frame_Changer_Generic_OnLeave( frame )
	GameTooltip:Hide()
	ResetCursor()
	ArkInventory.BagHighlight( frame, false )
end



function ArkInventory.BagHighlight( frame, show )
	
	local loc_id = frame.ARK_Data.loc_id
	local bag_id = frame.ARK_Data.bag_id
	
	if loc_id ~=nil and bag_id ~= nil then
	
		local cp = ArkInventory.LocationPlayerInfoGet( loc_id )
		
		local b = ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].bag[bag_id]
		if not b then
			return
		end
		
		local name = ArkInventory.Const.Frame.Main.Name .. loc_id .. ArkInventory.Const.Frame.Container.Name .. "Bag" .. bag_id
		local frame = getfenv()[name]
		if not frame then
			return
		end

		local colour = ArkInventory.LocationOptionGet( loc_id, { "window", "colour", "baghighlight" } )

		for slot_id in pairs( b.slot ) do
			local obj = getfenv()[name .. "Item" .. slot_id .. "ArkHighlight"]
			if obj then
				if show then
					getfenv()[obj:GetName() .. "Background"]:SetTexture( colour.r, colour.g, colour.b, 0.3 )
					obj:Show()
				else
					obj:Hide()
				end
			end
			
		end
	
	end
	
end


function ArkInventory.UiItem_Empty()

	for loc_id, loc_data in ipairs( ArkInventory.Global.Location ) do
	
		local c = getfenv()[ArkInventory.Const.Frame.Main.Name .. loc_id .. ArkInventory.Const.Frame.Container.Name]
		if c and c:IsVisible() then
	
			local cp = ArkInventory.LocationPlayerInfoGet( loc_id )
			for _, bag_id in pairs( loc_data.Bags ) do
			
				for slot_id in pairs( ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name].location[loc_id].bag[bag_id].slot ) do
				
					local s = getfenv()[c:GetName() .. "Bag" .. bag_id .. "Item" .. slot_id]
					ArkInventory.Frame_Item_Update_Empty( s )
					
				end
				
			end
			
		end
		
	end
	
end



function ArkInventory.OfflineDataCleanup()

	--ArkInventory.PrintPlus( { "OfflineDataCleanup() start" } )
	
	local cp = ArkInventory.Global.Me
	
	for loc_id in ipairs( ArkInventory.Global.Location ) do
	
		if not ArkInventory.LocationIsSaved( loc_id ) then
			
			local d = ArkInventory.db.account.cache.realm[cp.realm].faction[cp.faction].character[cp.name]
			
			if d.location[loc_id] then
			--ArkInventory.PrintPlus( { "cleanup of ", ArkInventory.Global.Location[loc_id].Name, " data for [", cp.display, "]" } )
				ArkInventory.Table.Clean( d.location, loc_id, true )
			end
			
		end
		
		ArkInventory.LocationCacheSetup( loc_id, cp )
		
	end

	--ArkInventory.PrintPlus( { "OfflineDataCleanup() end" } )
	
end


function ArkInventory.SkillGet()

	-- cannot do this if the skill window is opened
	if SkillFrame:IsVisible() then
		return
	end

	local good = false
	local cp = ArkInventory.Global.Me
	
	--ArkInventory.PrintPlus( "GetNumSkillLines() = " .. GetNumSkillLines() )
	
	ArkInventory.db.account.player.data[cp.player_id].info.skills = { }
	
	for j = 1, GetNumSkillLines() do
	
		local name, isHeader, isExpanded = GetSkillLineInfo( j )
		--ArkInventory.PrintPlus( { "line [", j, "] = ( ", name, ", ", isHeader, " )" } )
		
		if isHeader ~= nil then

			if not isExpanded then
				ExpandSkillHeader( 0 )
				return
			else
				if name == ArkInventory.Localise["WOW_SKILL_HEADER_PRIMARY"] or name == ArkInventory.Localise["WOW_SKILL_HEADER_SECONDARY"] then
					--ArkInventory.PrintPlus( "header = " .. name )
					good = true
				else
					good = false
				end
			end
			
		else
		
			if good then
				--ArkInventory.PrintPlus( "skill = " .. name )
				local skill = strmatch( ArkInventory.Localise:GetReverseTranslation( name ), "WOW_SKILL_(.+)" )
				tinsert( ArkInventory.db.account.player.data[cp.player_id].info.skills, skill )
			end
			
		end
		
	end
	
	ArkInventory.Global.Cache.Default = { }
	ArkInventory.LocationSetValue( nil, "resort", true )

	--ArkInventory.SkillPrint()
	
end

function ArkInventory.SkillPrint()
	local cp = ArkInventory.Global.Me
	for k, v in ipairs( ArkInventory.db.account.player.data[cp.player_id].info.skills ) do
		ArkInventory.PrintPlus( { "skill[", k, "] = [", v, "]" } )
	end
end



function ArkInventory.MyHook(...)
	if not ArkInventory:IsHooked(...) then
		ArkInventory:Hook(...)
	end
end

function ArkInventory.MyUnhook(...)
	if ArkInventory:IsHooked(...) then
		ArkInventory:Unhook(...)
	end
end

function ArkInventory.MySecureHook(...)
	if not ArkInventory:IsHooked(...) then
		ArkInventory:SecureHook(...)
	end
end

function ArkInventory.BlizzardAPIHooks( disable )

	-- bag hooks
	if ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Bag ) and not disable then
		ArkInventory.MyHook( "OpenBackpack", "HookOpenBackpack", true )
		ArkInventory.MyHook( "ToggleBackpack", "HookToggleBackpack", true )
		ArkInventory.MyHook( "OpenBag", "HookOpenBag", true )
		ArkInventory.MyHook( "ToggleBag", "HookToggleBag", true )
		ArkInventory.MyHook( "OpenAllBags", "HookOpenAllBags", true )
	else
		ArkInventory.MyUnhook( "OpenBackpack" )
		ArkInventory.MyUnhook( "ToggleBackpack" )
		ArkInventory.MyUnhook( "OpenBag" )
		ArkInventory.MyUnhook( "ToggleBag" )
		ArkInventory.MyUnhook( "OpenAllBags" )
		
		ArkInventory.Frame_Main_Hide( ArkInventory.Const.Location.Bag )
	end

	-- keyring hooks
	if ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Key ) and not disable then
		ArkInventory.MyHook( "ToggleKeyRing", "HookToggleKeyRing", true )
	else
		ArkInventory.MyUnhook( "ToggleKeyRing" )
	end
	
	-- bank hooks
	if ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Bank ) and not disable then
		BankFrame:UnregisterEvent( "BANKFRAME_OPENED" )
		--BankFrame:UnregisterEvent( "BANKFRAME_CLOSED" )
	else
		BankFrame:RegisterEvent( "BANKFRAME_OPENED" )
		--BankFrame:RegisterEvent( "BANKFRAME_CLOSED" )
	end
	
	-- guild bank hooks
	if ArkInventory.LocationIsControlled( ArkInventory.Const.Location.Vault ) and not disable then
	
		UIParent:UnregisterEvent( "GUILDBANKFRAME_OPENED" )
		--UIParent:UnregisterEvent( "GUILDBANKFRAME_CLOSED" )
	
		GuildBankFrame:UnregisterEvent( "GUILDBANKBAGSLOTS_CHANGED" )
		GuildBankFrame:UnregisterEvent( "GUILDBANK_ITEM_LOCK_CHANGED" )
		GuildBankFrame:UnregisterEvent( "GUILDBANK_UPDATE_TABS" )
		GuildBankFrame:UnregisterEvent( "GUILDBANK_UPDATE_MONEY" )
		GuildBankFrame:UnregisterEvent( "GUILD_ROSTER_UPDATE" )
		GuildBankFrame:UnregisterEvent( "GUILDBANKLOG_UPDATE" )
		GuildBankFrame:UnregisterEvent( "GUILDTABARD_UPDATE" )

		local frame = getfenv()[ArkInventory.Const.Frame.Main.Name .. ArkInventory.Const.Location.Vault]
		if frame then
			GuildBankPopupFrame:ClearAllPoints()
			GuildBankPopupFrame:SetPoint( "TOPLEFT", frame, "TOPRIGHT", -4, -30 )
		end
		
	else

		UIParent:RegisterEvent( "GUILDBANKFRAME_OPENED" )
		--UIParent:RegisterEvent( "GUILDBANKFRAME_CLOSED" )
	
		GuildBankFrame:RegisterEvent( "GUILDBANKBAGSLOTS_CHANGED" )
		GuildBankFrame:RegisterEvent( "GUILDBANK_ITEM_LOCK_CHANGED" )
		GuildBankFrame:RegisterEvent( "GUILDBANK_UPDATE_TABS" )
		GuildBankFrame:RegisterEvent( "GUILDBANK_UPDATE_MONEY" )
		GuildBankFrame:RegisterEvent( "GUILD_ROSTER_UPDATE" )
		GuildBankFrame:RegisterEvent( "GUILDBANKLOG_UPDATE" )
		GuildBankFrame:RegisterEvent( "GUILDTABARD_UPDATE" )

		local frame = getfenv()["GuildBankFrame"]
		if frame then
			GuildBankPopupFrame:ClearAllPoints()
			GuildBankPopupFrame:SetPoint( "TOPLEFT", frame, "TOPRIGHT", -4, -30 )
		end
	
	end

	--ArkInventory.MySecureHook( "GuildBankPopupOkayButton_OnClick", "HookGuildBankPopupOkayButton_OnClick" )
	
	-- tooltip
	
	local tooltip_objects = { GameTooltip, ItemRefTooltip, ShoppingTooltip1, ShoppingTooltip2 }
	
	local tooltip_functions = { -- GameTooltip:SetXXXX() functions taken from wowwiki, there may be some missing
		"SetAuctionCompareItem", "SetAuctionItem", "SetAuctionSellItem", "SetBagItem", "SetBuybackItem",
		"SetCraftItem", "SetCraftSpell", "SetGuildBankItem", "SetHyperlink", "SetHyperlinkCompareItem",
		"SetInboxItem", "SetInventoryItem", "SetLootItem", "SetLootRollItem", "SetMerchantCompareItem",
		"SetMerchantItem", "SetQuestItem", "SetQuestLogItem", "SetSendMailItem", "SetTradePlayerItem",
		"SetTradeSkillItem", "SetTradeTargetItem", }

	if ArkInventory.db.account.option.tooltip.show and not disable then
	
		for _, obj in pairs( tooltip_objects ) do
		
			for _, func in pairs( tooltip_functions ) do
				if obj[func] then -- make sure only valid functions are hooked (wowwiki is not always accurate)
					ArkInventory.MySecureHook( obj, func, ArkInventory.TooltipAddCustom )
				end
			end
			
		end
		
	else
	
		for _, obj in pairs( tooltip_objects ) do
		
			for _, func in pairs( tooltip_functions ) do
				if obj[func] then -- make sure only valid functions are unhooked (wowwiki is not always accurate)
					ArkInventory.MyUnhook( obj, func, ArkInventory.TooltipAddCustom )
				end
			end
			
		end
		
	end
	
end

function ArkInventory.HookOpenBackpack( self, forceOpen )

	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "HookOpenBackpack( ", forceOpen, " )" } )
	
	local loc_id = ArkInventory.Const.Location.Bag
	
	if ArkInventory.LocationIsControlled( loc_id ) then
		if forceOpen then
			ArkInventory.Frame_Main_Show( loc_id )
		else
			ArkInventory.Frame_Main_Toggle( loc_id )
		end
	else
		ArkInventory.hooks["OpenBackpack"]( forceOpen )
	end

	
end

function ArkInventory.HookToggleBackpack( self )

	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "HookToggleBackpack()" } )
	
	ArkInventory.HookOpenBackpack( self )
	
end

function ArkInventory.HookToggleKeyRing( self )

	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "ToggleKeyRing()" } )
	
	local loc_id = ArkInventory.Const.Location.Key
	
	if ArkInventory.LocationIsControlled( loc_id ) then
		ArkInventory.Frame_Main_Toggle( loc_id )
	else
		ArkInventory.hooks["KeyringToggle"]()
	end
	
end

function ArkInventory.HookOpenBag( self, bag_id, forceOpen )
	
	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "HookOpenBag( ", bag_id, ", ", forceOpen, " )" } )
	
	if bag_id then
	
		local loc_id = ArkInventory.BagGetLocation( bag_id )
		
		if loc_id == ArkInventory.Const.Location.Bank or loc_id == ArkInventory.Const.Location.Bag then
			if ArkInventory.LocationIsControlled( loc_id ) then
				if forceOpen then
					ArkInventory.Frame_Main_Show( loc_id )
				else
					ArkInventory.Frame_Main_Toggle( loc_id )
				end
			else
				ArkInventory.hooks["OpenBag"]( bag_id, forceOpen )
			end
		end
		
	end
	
end

function ArkInventory.HookToggleBag( self, bag_id )
	
	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "HookToggleBag( ", bag_id, " )" } )
	
	ArkInventory.HookOpenBag( self, bag_id, false )
	
end

function ArkInventory.HookOpenAllBags( self, forceOpen )

	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "HookOpenAllBags( ", forceOpen, " )" } )
	
	local loc_id = ArkInventory.Const.Location.Bag
	
	if ArkInventory.LocationIsControlled( loc_id ) then
		if forceOpen then
			ArkInventory.Frame_Main_Show( loc_id )
		else
			ArkInventory.Frame_Main_Toggle( loc_id )
		end
	else
		ArkInventory.hooks["OpenAllBags"]( forceOpen )
	end
	
end

function ArkInventory.HookDoNothing( self )
	-- ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "HookDoNothing()" } )
	-- do nothing
end

function ArkInventory.HookGuildBankPopupOkayButton_OnClick( self )

	--ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, "GuildBankPopupOkayButton_OnClick()" } )
	--ArkInventory.hooks["GuildBankPopupOkayButton_OnClick"]()
	
	local loc_id = ArkInventory.Const.Location.Vault
	
	if not ArkInventory.Global.Location[loc_id].offline then
		ArkInventory.Frame_Main_Generate( loc_id, nil )
	end
	
end

function ArkInventory.ContainerItemNameGet( loc_id, bag_id, slot_id )
	--if loc_id ~= nil and type( loc_id ) == "number" and bag_id ~= nil and type( bag_id ) == "number" and slot_id ~= nil and type( slot_id ) == "number" then
	if loc_id ~= nil and bag_id ~= nil and slot_id ~= nil then
		return ArkInventory.Const.Frame.Main.Name .. loc_id .. ArkInventory.Const.Frame.Container.Name .. "Bag" .. bag_id .. "Item" .. slot_id
	end
end

function ArkInventory.LocationOptionGet( loc_id, opt )
	local loc_id = ArkInventory.db.profile.option.use[loc_id]
	return ArkInventory.LocationOptionGetReal( loc_id, opt )
end

function ArkInventory.LocationOptionGetReal( loc_id, opt )

	assert( loc_id ~= nil, "location id is nil" )
	assert( type( opt ) == "table", "opt is not a table" )

	local p = ArkInventory.db.profile.option.location[loc_id]
	
	for k = 1, #opt do
	
		if p == nil then
			--ArkInventory.PrintPlus( { "loc_id=[", loc_id, "], opt=[", opt, "], k=[", k, "]" } )
			assert( false, "code error: encountered nil on option sub path - please reload ui to reset database" )
		end
		local v = opt[k]
		assert( v ~= nil, "code error: encountered a nil parameter at position " .. k )
--		ArkInventory.PrintPlus( { "p[", v, "]=[", p[v], "]" } )
		p = p[v]
	end
	
	return p

end

function ArkInventory.LocationOptionSetReal( loc_id, opt, n )

	assert( loc_id ~= nil, "location id is nil" )
	assert( type( opt ) == "table", "opt is not a table" )

	--s = "option.local." .. loc_id
	local p = { ArkInventory.db.profile.option.location[loc_id] }
	local c = 1
	
	for k = 1, #opt - 1 do
		c = k + 1
		local v = opt[k]
		p[c] = p[k][v]
		--s = s .. "." .. v
	end
	
	local v = opt[c]
	--ArkInventory.PrintPlus( { "set ", s, "[", v, "], old=[", p[c][v], "], new=[", n, "]" } )
	p[c][v] = n

end

function ArkInventory.LocationOptionSet( loc_id, opt, n )
	local loc_id = ArkInventory.db.profile.option.use[loc_id]
	return ArkInventory.LocationOptionSetReal( loc_id, opt, n )
end

function ArkInventory.ToggleChanger( loc_id )
	ArkInventory.LocationOptionSet( loc_id, { "framehide", "changer" }, not ArkInventory.LocationOptionGet( loc_id, { "framehide", "changer" } ) )
	ArkInventory.Frame_Main_Generate( nil, ArkInventory.Const.Window.Draw.Refresh )
end

function ArkInventory.ToggleEditMode()
	ArkInventory.Global.Mode.Edit = not ArkInventory.Global.Mode.Edit
	ArkInventory.Frame_Bar_Paint_All()
	ArkInventory.Frame_Main_Generate( nil, ArkInventory.Const.Window.Draw.Recalculate )
end

function ArkInventory.GameTooltipSetPosition( frame, bottom )

	local x, a
	x = frame:GetLeft() + ( frame:GetRight() - frame:GetLeft() ) / 2
	
	if bottom then
		if ( x >= ( GetScreenWidth() / 2 ) ) then
			a = "ANCHOR_BOTTOMLEFT"
		else
			a = "ANCHOR_BOTTOMRIGHT"
		end
	else
		if ( x >= ( GetScreenWidth() / 2 ) ) then
			a = "ANCHOR_LEFT"
		else
			a = "ANCHOR_RIGHT"
		end
	end
	
	GameTooltip:SetOwner( frame, a )
	
end

function ArkInventory.GameTooltipSetText( frame, txt, r, g, b, bottom )

	ArkInventory.GameTooltipSetPosition( frame, bottom )
	GameTooltip:SetText( txt or "missing text", r or 1, g or 1, b or 1 )
	GameTooltip:Show()
	
end

function ArkInventory.GameTooltipSetHyperlink( frame, h )

	ArkInventory.GameTooltipSetPosition( frame )
	GameTooltip:SetHyperlink( h )
	GameTooltip:Show()
	
end

function ArkInventory.GameTooltipHide()
	GameTooltip:Hide()
end

function ArkInventory.TooltipSetMoneyCoin( frame, money, txt, r, g, b )

	frame:AddDoubleLine( txt or "missing text", " ", r or 1, g or 1, b or 1 )
	local numLines = frame:NumLines()
	
	local txtFrame = getfenv()[frame:GetName() .. "TextLeft" .. numLines]
	local moneyFrame = getfenv()[frame:GetName() .. "MoneyFrame"]
	
	MoneyFrame_Update( moneyFrame:GetName(), money )
	moneyFrame:Show()
	moneyFrame:SetPoint( "LEFT", frame:GetName() .. "TextLeft" .. numLines, "RIGHT", 10, 0 )

	frame:SetMinimumWidth( txtFrame:GetWidth() + moneyFrame:GetWidth() + 10 )
	
end

function ArkInventory.TooltipSetMoneyText( frame, money, txt, r, g, b )
	frame:AddDoubleLine( txt or "missing text", ArkInventory.MoneyText( money ) , r or 1, g or 1, b or 1, r or 1, g or 1, b or 1 )
end

function ArkInventory.RuleItemAdd( rulenum, h )

	local r = ArkInventory.db.account.option.rule[rulenum]
	if not r then
		return
	end
	
	local id = ArkInventory.ItemStringDecode( h )
	
	r.formula = string.format( "%s or id( %s )", r.formula, id )
	r["enabled"] = ArkInventory.db.profile.option.rule[rulenum]
	
	ArkInventory.RuleEntryEdit( rulenum, r )
	
end

function ArkInventory.RuleItemRemove( rulenum, h )

	local r = ArkInventory.db.account.option.rule[rulenum]
	if not r then
		return
	end
	
	local f = r.formula
	local id = ArkInventory.ItemStringDecode( h )
	
	-- search for id( ... )
	
	for w in f:gmatch( "id%((.+)%)" ) do

		--ArkInventory.PrintPlus( { "found id function ", w } )
		
		for x in w:gmatch( ArkInventory.Localise["RULE_PATTERN_SEP"] ) do
		
			--ArkInventory.PrintPlus( { "param = [", x, "]" } )
			--local c = string.match( w, id .. "[^%d]" )
			
		end
		
	end
	
	
	
	r.formula = f
	r["enabled"] = ArkInventory.db.profile.option.rule[rulenum]
	ArkInventory.RuleEntryEdit( rulenum, r )
	
end

function ArkInventory.PTItemSearch( item )

	-- taken from pt3.0 because someone decided that it didnt belong in 3.1
	
	local item = ArkInventory.ItemStringDecode( item )
	if item == 0 then
		return nil
	end
	
	local matches = {}
	for k, v in pairs( ArkInventory.Lib.PeriodicTable.sets ) do
		local _, set = ArkInventory.Lib.PeriodicTable:ItemInSet( item, k )
		if set then
			local have
			for _, v in ipairs( matches ) do
				if v == set then
					have = true
				end
			end
			if not have then
				table.insert( matches, set )
			end
		end
	end
	
	if #matches > 0 then
		return matches
	end
	
end


function ArkInventory.ItemCountGet( search_id )
	
	search_id = ArkInventory.TooltipItemID( search_id )
	if search_id == nil then
		return nil
	end

	if ArkInventory.Global.Cache.ItemCount[search_id] == nil then
		
		local d = { }

--		[name] = {
--			["vault"] = boolean,
--			["location"] = {
--				[loc_id] = count,
--			},
--			["total"] = 0,
--		},
	
		local r = GetRealmName()
		local f = UnitFactionGroup( "player" )
		
		local apd = ArkInventory.db.account.player.data	
		
		for pid, pd in ArkInventory.spairs( apd ) do
			
			if pd.info.realm == r and pd.info.faction == f then
			
				local pl = ArkInventory.db.account.cache.realm[pd.info.realm].faction[pd.info.faction].character[pd.info.name]
				
				if pl and pl.location then
				
					for l, ld in pairs( pl.location ) do
					
						local c = 0
					
						if ld.active then
							for b, bd in pairs( ld.bag ) do
								for s, sd in pairs( bd.slot ) do
									if sd.h and search_id == ArkInventory.TooltipItemID( sd.h ) then
										c = c + sd.count
									end
								end
							end
						end
						
						if c > 0 then
						
							if not d[pd.info.name] then
								d[pd.info.name] = { ["vault"] = false, ["location"] = { }, ["total"] = 0 }
							end
						
							if l == ArkInventory.Const.Location.Vault then
								d[pd.info.name].vault = true
							end
							
							d[pd.info.name].location[l] = c
							d[pd.info.name].total = d[pd.info.name].total + d[pd.info.name].location[l]
							
						end
						
					end
					
				end
				
			end
			
		end

		table.sort( d )
		ArkInventory.Global.Cache.ItemCount[search_id] = d
		
	end
		
	return ArkInventory.Global.Cache.ItemCount[search_id]
	
end

function ArkInventory.LocationControlToggle( loc_id )
	
	local cp = ArkInventory.Global.Me
	
	if not ArkInventory.db.account.player.data[cp.player_id].control[loc_id] then
	
		-- enabling ai for location - hide open blizzard frame
		
		if loc_id == ArkInventory.Const.Location.Bag then
			CloseAllBags()
		elseif loc_id == ArkInventory.Const.Location.Keyring then
		
		elseif loc_id == ArkInventory.Const.Location.Bank and ArkInventory.Global.Mode.Bank then
			CloseBankFrame()
		elseif loc_id == ArkInventory.Const.Location.Vault and ArkInventory.Global.Mode.Vault then
			CloseGuildBankFrame()
		end
		
	else

		-- disabling ai for location - hide ai frame
		
		ArkInventory.Frame_Main_Hide( loc_id )
		
	end
	
	ArkInventory.db.account.player.data[cp.player_id].control[loc_id] = not ArkInventory.db.account.player.data[cp.player_id].control[loc_id]
	ArkInventory.BlizzardAPIHooks()

end


function ArkInventory.Frame_Vault_Log_Update()

	local numTransactions = 0
	if GuildBankFrame.mode == "log" then
		numTransactions = GetNumGuildBankTransactions( GetCurrentGuildBankTab() ) or 0
	elseif GuildBankFrame.mode == "moneylog" then
		numTransactions = GetNumGuildBankMoneyTransactions() or 0
	end

	if numTransactions == 0 then
		return
	end
	
	local loc_id = ArkInventory.Const.Location.Vault

	local obj = getfenv()[ArkInventory.Const.Frame.Main.Name .. loc_id .. ArkInventory.Const.Frame.Log.Name .. ArkInventory.Const.Frame.Scrolling.List]
	obj:SetMaxLines( numTransactions )
	
	local tab = GetCurrentGuildBankTab()

	obj:SetInsertMode( "TOP" )
	obj:AddMessage( "-- end of list --" )

	for i = 1, numTransactions do
		
		local msg, type, name, amount, year, month, day, hour, money
		
		if GuildBankFrame.mode == "log" then
			type, name, itemLink, count, tab1, tab2, year, month, day, hour = GetGuildBankTransaction( tab, i )
		elseif GuildBankFrame.mode == "moneylog" then
			type, name, amount, year, month, day, hour = GetGuildBankMoneyTransaction( i )
		end
		
		if not name then
			name = UNKNOWN
		end
		
		name = NORMAL_FONT_COLOR_CODE..name..FONT_COLOR_CODE_CLOSE
		
		if GuildBankFrame.mode == "log" then
			
			if type == "deposit" then
				msg = format( GUILDBANK_DEPOSIT_FORMAT, name, itemLink )
				if count > 1 then
					msg = msg .. format( GUILDBANK_LOG_QUANTITY, count )
				end
			elseif type == "withdraw" then
				msg = format( GUILDBANK_WITHDRAW_FORMAT, name, itemLink )
				if count > 1 then
					msg = msg .. format( GUILDBANK_LOG_QUANTITY, count )
				end
			elseif type == "move" then
				msg = format( GUILDBANK_MOVE_FORMAT, name, itemLink, count, GetGuildBankTabInfo(tab1), GetGuildBankTabInfo(tab2) )
			end
			
		elseif GuildBankFrame.mode == "moneylog" then

			money = GetDenominationsFromCopper( amount )
		
			if type == "deposit" then
				msg = format( GUILDBANK_DEPOSIT_MONEY_FORMAT, name, money )
			elseif type == "withdraw" then
				msg = format( GUILDBANK_WITHDRAW_MONEY_FORMAT, name, money )
			elseif type == "repair" then
				msg = format( GUILDBANK_REPAIR_MONEY_FORMAT, name, money )
			elseif type == "withdrawForTab" then
				msg = format( GUILDBANK_WITHDRAWFORTAB_MONEY_FORMAT, name, money )
			elseif type == "buyTab" then
				msg = format( GUILDBANK_BUYTAB_MONEY_FORMAT, name, money )
			end
			
		end
		
		if msg then
			obj:AddMessage( msg .. GUILD_BANK_LOG_TIME_PREPEND .. format( GUILD_BANK_LOG_TIME, RecentTimeDate( year, month, day, hour ) ) )
		end
		
	end

	ArkInventory.Frame_Main_Generate( loc_id, ArkInventory.Const.Window.Draw.Recalculate )
	
end

function ArkInventory.ScrollingMessageFrame_Scroll( parent, name, direction )

	if not parent or not name then
		return
	end
	
	local obj = getfenv()[parent:GetName() .. name]
	if not obj then
		return
	end
	
	local i = obj:GetInsertMode()
	
	if i == "TOP" then
	
		if direction == "up" and not obj:AtBottom() then
			obj:ScrollDown()
		elseif direction == "pageup" and not obj:AtBottom() then
			obj:PageDown()
		elseif direction == "down" and not obj:AtTop() then
			obj:ScrollUp()
		elseif direction == "pagedown" and not obj:AtTop() then
			obj:PageUp()
		end
	
	else
	
		if direction == "up" and not obj:AtTop() then
			obj:ScrollUp()
		elseif direction == "pageup" and not obj:AtTop() then
			obj:PageUp()
		elseif direction == "down" and not obj:AtBottom() then
			obj:ScrollDown()
		elseif direction == "pagedown" and not obj:AtBottom() then
			obj:PageDown()
		end
	
	end
	
end

function ArkInventory.ScrollingMessageFrame_ScrollWheel( parent, name, direction )

	if direction == 1 then
		ArkInventory.ScrollingMessageFrame_Scroll( parent, name, "up" )
	else
		ArkInventory.ScrollingMessageFrame_Scroll( parent, name, "down" )
	end

end

function ArkInventory.LocationIsMonitored( loc_id )
	local cp = ArkInventory.Global.Me
	ArkInventory.LocationCacheSetup( loc_id, cp )
	return ArkInventory.db.account.player.data[cp.player_id].monitor[loc_id]
end

function ArkInventory.LocationIsControlled( loc_id )
	local cp = ArkInventory.Global.Me
	ArkInventory.LocationCacheSetup( loc_id, cp )
	return ArkInventory.db.account.player.data[cp.player_id].control[loc_id]
end

function ArkInventory.LocationIsSaved( loc_id )
	local cp = ArkInventory.Global.Me
	ArkInventory.LocationCacheSetup( loc_id, cp )
	return ArkInventory.db.account.player.data[cp.player_id].offline[loc_id]
end
