
function ArkInventory.TooltipItemID( h )
	local id, suffix = ArkInventory.ItemStringDecode( h )
	if id ~= 0 then
		return string.format( "%s:%s", id, suffix )
	end
end

function ArkInventory.TooltipAddCustom( frame )
	
	if ArkInventory.Global.Mode.Combat then
		return
	end
	
	--ArkInventory.PrintPlus( { "TooltipAddCustom( ", frame:GetName(), " )" } )

	if ArkInventory.db.account.option.tooltip.add.vendor then
		ArkInventory.TooltipVendorAdd( frame )
	end
	
	if ArkInventory.db.account.option.tooltip.add.count then
		ArkInventory.TooltipItemCountAdd( frame )
	end

	frame:Show()
	
end

function ArkInventory.TooltipItemCountAdd( frame )
	
	--ArkInventory.PrintPlus( { "TooltipItemCountAdd( ", frame:GetName() , " )" } )
	
	if not frame or not frame["GetItem"] then
		return
	end
	
	local _, search_id = frame:GetItem()

--	search_id = ArkInventory.TooltipItemID( search_id )
--	if not search_id then
--		return
--	end
	
--	if ArkInventory.Global.Cache.Tooltip[search_id] == nil then
--		ArkInventory.Global.Cache.Tooltip[search_id] = ArkInventory.TooltipItemCountGet( search_id )
--	end
	
--	local tc = ArkInventory.db.account.option.tooltip.colour.count
--	ArkInventory.TooltipItemCountGet2( search_id )
--	frame:AddLine( ArkInventory.Global.Cache.Tooltip[search_id], tc.r, tc.g, tc.b, 0 )

	local tt = ArkInventory.TooltipItemCountGet2( search_id )
	if tt then
		local tc = ArkInventory.db.account.option.tooltip.colour.count
		frame:AddLine( tt, tc.r, tc.g, tc.b, 0 )
	end

end

function ArkInventory.TooltipItemCountGet( search_id )
	
	local r = GetRealmName()
	local f = UnitFactionGroup( "player" )

	local apd = ArkInventory.db.account.player.data	
	local item_count_total = 0
	
	local character_count = 0
	local character_entries = { }
	
	local guild_count = 0
	local guild_entries = { }
	

	for _, pd in ArkInventory.spairs( apd ) do

		local item_count_character = 0
		local item_count_guild = 0
		
		if pd.info.realm == r and pd.info.faction == f then
			
			local location_entries = { }

			local pl = ArkInventory.db.account.cache.realm[pd.info.realm].faction[pd.info.faction].character[pd.info.name]
			
			if pl and pl.location then
			
				local me = ""
				if pd.info.player_id == ArkInventory.Global.Me.player_id then
					me = ArkInventory.Localise["TOOLTIP_COUNT_ME"]
				end
			
				for l, ld in pairs( pl.location ) do
				
					local item_count_location = 0
				
					if ld.active then
						for b, bd in pairs( ld.bag ) do
							for s, sd in pairs( bd.slot ) do
								if sd.h and search_id == ArkInventory.TooltipItemID( sd.h ) then
									item_count_location = item_count_location + sd.count
								end
							end
						end
					end
					
					if item_count_location > 0 then
					
						if l == ArkInventory.Const.Location.Vault then
							tinsert( location_entries, string.format( "(%s)", ArkInventory.Global.Location[l].Name ) )
							item_count_guild = item_count_guild + item_count_location
						else
							tinsert( location_entries, string.format( "(%s %s)", ArkInventory.Global.Location[l].Name, item_count_location ) )
							item_count_character = item_count_character + item_count_location
						end
						
					end
					
				end
				
				if item_count_character > 0 then
					tinsert( character_entries, string.format( "%s%s: %s %s", me, pd.info.display3 or pd.info.name, item_count_character, table.concat( location_entries, ", " ) ) )
					character_count = character_count + 1
					item_count_total = item_count_total + item_count_character
				end
				
				if item_count_guild > 0 then
					tinsert( guild_entries, string.format( "%s: %s %s", pd.info.display3 or pd.info.name, item_count_guild, table.concat( location_entries, ", " ) ) )
					guild_count = guild_count + 1
					--item_count_total = item_count_total + item_count_character
				end
				
			end
			
		end
		
	end

	if item_count_total > 0 or guild_count > 0 then
	
		local c = ""
		local g = ""
	
		if character_count > 1 then
			table.sort( character_entries )
			c = string.format( "%s\nTotal: %s", table.concat( character_entries, "\n" ), item_count_total )
		else
			c = table.concat( character_entries, "\n" )
		end
		
		if guild_count > 0 then
			table.sort( guild_entries )
			g = string.format( "%s\n", table.concat( guild_entries, "\n" ) )
		end
		
		return string.format( "%s%s", g, c )
		
	else
		return nil
	end
	
end

function ArkInventory.TooltipItemCountGet2( search_id )
	
	local tc = ArkInventory.ItemCountGet( search_id )
	if tc == nil then
		return nil
	end
	
	local n = UnitName( "player" )

	local item_count_total = 0
	
	local character_count = 0
	local character_entries = { }
	
	local guild_count = 0
	local guild_entries = { }

	for cn, cd in pairs( tc ) do

		local item_count_character = 0
		local item_count_guild = 0
		
		local location_entries = { }

		if cd.location then
			
			for l, lc in pairs( cd.location ) do
				
				if lc > 0 then
					
					if l == ArkInventory.Const.Location.Vault then
						tinsert( location_entries, string.format( "(%s)", ArkInventory.Global.Location[l].Name ) )
						item_count_guild = item_count_guild + lc
					else
						tinsert( location_entries, string.format( "(%s %s)", ArkInventory.Global.Location[l].Name, lc ) )
						item_count_character = item_count_character + lc
					end
					
				end
				
			end
			
			if item_count_character > 0 then

				local me = ""
				if cn == n then
					me = ArkInventory.Localise["TOOLTIP_COUNT_ME"]
				end

				tinsert( character_entries, string.format( "%s%s: %s %s", me, cn, item_count_character, table.concat( location_entries, ", " ) ) )
				character_count = character_count + 1
				item_count_total = item_count_total + item_count_character
				
			end
			
			if item_count_guild > 0 then
				tinsert( guild_entries, string.format( "%s: %s %s", cn, item_count_guild, table.concat( location_entries, ", " ) ) )
				guild_count = guild_count + 1
			end
			
		end
		
	end

	if item_count_total > 0 or guild_count > 0 then
	
		local c = ""
		local g = ""
	
		if character_count > 1 then
			--table.sort( character_entries )
			c = string.format( "%s\nTotal: %s", table.concat( character_entries, "\n" ), item_count_total )
		else
			c = table.concat( character_entries, "\n" )
		end
		
		if guild_count > 0 then
			--table.sort( guild_entries )
			g = string.format( "%s\n", table.concat( guild_entries, "\n" ) )
		end
		
		return string.format( "%s%s", g, c )
		
	else
		
		return nil
	end
	
end

function ArkInventory.TooltipVendorAdd( frame )

	if not frame or not frame["GetItem"] then
		return
	end
	
	local _, search_id = frame:GetItem()
	
	if search_id == nil then
		return
	end
	
	local price_per = GetSellValue( search_id )
	
	local tc = ArkInventory.db.account.option.tooltip.colour.vendor
	
	if price_per == nil then
	
		--frame:AddDoubleLine( ArkInventory.Localise["TOOLTIP_VENDOR"], ArkInventory.Localise["STATUS_NO_DATA"], tc.r, tc.g, tc.b, tc.r, tc.g, tc.b )
		return
		
	elseif price_per == 0 then
	
		if not ArkInventory.Global.Mode.Merchant then
			frame:AddLine( ITEM_UNSELLABLE, tc.r, tc.g, tc.b )
		end
		
	elseif price_per > 0 then
	
		local count = 1
		
		if frame:GetOwner() and frame:GetOwner().count ~= nil then
		
			count = tonumber( frame:GetOwner().count )
			
			if type( count ) ~= "number" then
				count = 1
			end
			
			if count < 1 then
				count = 1
			end

		end
		
		local price = price_per * count
	
		ArkInventory.TooltipSetMoneyText( frame, price, string.format( "%s: (x%d)", ArkInventory.Localise["TOOLTIP_VENDOR"], count ), tc.r, tc.g, tc.b )
	
	else

		return
	
	end
	
end


function ArkInventory.TooltipVendorScan()

	for _, bag_id in pairs( ArkInventory.Global.Location[ArkInventory.Const.Location.Bag].Bags ) do
	
		local bag_size = GetContainerNumSlots( bag_id )
	
		for slot_id = 1, bag_size do
		
			local h = GetContainerItemLink( bag_id, slot_id )
	
			if h then

				-- hyperlinks do not work, can only use SetBagItem
				ArkInventory.Global.ScanTooltip:SetBagItem( bag_id, slot_id )
				
				local moneyFrame = ArkInventory.Global.ScanTooltip:GetMoneyFrame()
				
				if moneyFrame then
				
					-- needs to check for durability
				
					local _, count = GetContainerItemInfo( bag_id, slot_id )
					local vendor = moneyFrame.staticMoney / count
					local id = ArkInventory.ItemStringDecode( h )
					ArkInventory.db.account.vendor[id] = vendor
					moneyFrame.staticMoney = 0
				
					--ArkInventory.PrintPlus( { "bag=", bag_id, ", slot=", slot_id, ", item=", id, " copper=", vendor } )
					
				end
			
			end
			
		
		end
	
	end

end


local originalGetSellValue = GetSellValue
function GetSellValue( item )

	id = ArkInventory.ItemStringDecode( item )
	if id == 0 then
		return nil
	end

	return id and ( ArkInventory.db.account.vendor[id] or originalGetSellValue and originalGetSellValue( id ) )
	
end
