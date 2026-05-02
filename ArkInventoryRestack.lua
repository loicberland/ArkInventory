function ArkInventory.RestackFindPartial( loc_id, cb, cs, id )

	for _, bag_id in pairs( ArkInventory.Global.Location[loc_id].Bags ) do
	
		for slot_id = 1, GetContainerNumSlots( bag_id ) do

			if not ( bag_id == cb and slot_id == cs ) then
				
				local h = GetContainerItemLink( bag_id, slot_id )

				if h then

					local item_id = ArkInventory.ItemStringDecode( h )
					local _, count, locked = GetContainerItemInfo( bag_id, slot_id )
					local stack = select( 8, ArkInventory.ItemInfoGet( h ) )
					
					if item_id == id and count < stack then
						--ArkInventory.PrintPlusPrintPlus( "found match for partial stack at " .. bag_id .. "." .. slot_id )
						return true, bag_id, slot_id
					end
					
				end
				
			end
			
		end
		
	end

	--ArkInventory.PrintPlus( "no other partial stacks found" )
	return false

end

function ArkInventory.RestackFindSpecial23( loc_id, ct )

	for _, bag_id in pairs( ArkInventory.Global.Location[loc_id].Bags ) do
	
		local bt = ArkInventory.BagType( bag_id )
		
		-- only match items in normal or unknown bags to move them to profession bags
		if bt == ArkInventory.Const.Slot.Type.Bag or bt == ArkInventory.Const.Slot.Type.Unknown then
		
			for slot_id = 1, GetContainerNumSlots( bag_id ) do

				local h = GetContainerItemLink( bag_id, slot_id )
				
				if h and ArkInventory.Const.Slot.Data[ct].pt then
					if ArkInventory.PT_ItemInSets( h, ArkInventory.Const.Slot.Data[ct].pt ) then
						--ArkInventory.PrintPlus( "found match for special slot at " .. bag_id .. "." .. slot_id )
						return true, bag_id, slot_id
					end
				end
				
			end
			
		end
		
	end

	--ArkInventory.PrintPlus( "no items found for special slot" )
	return false

end

function ArkInventory.RestackFindSpecial( loc_id, ct )

	for _, bag_id in pairs( ArkInventory.Global.Location[loc_id].Bags ) do
	
		local _, bt = GetContainerNumFreeSlots( bag_id )
		
		-- only match items in normal bags to move them to profession bags
		if bt == 0 then
		
			for slot_id = 1, GetContainerNumSlots( bag_id ) do

				--ArkInventory.PrintPlus( { "checking for special item in bag=[", bag_id, "], slot=[", slot_id, "]" } )
			
				local h = GetContainerItemLink( bag_id, slot_id )
				
				if h then
				
					local it = GetItemFamily( h )
					
					if bit.band( it, ct ) > 0 then
						--ArkInventory.PrintPlus( { "found match for special slot at [", bag_id, ".", slot_id, "], it=[", it, "], ct=[", ct, "]" } )
						return true, bag_id, slot_id
					end
				end
				
			end
			
		end
		
	end

	--ArkInventory.PrintPlus( "no items found for special slot" )
	return false

end

function ArkInventory.RestackRun23( loc_id )

	if ArkInventory.Const.Program.PTR then
		ArkInventory.RestackRun24( loc_id )
		return
	end

	-- DO NOT USE CACHED DATA FOR RESTACKING, PULL THE DATA DIRECTLY FROM WOW AGAIN

	ArkInventory.PrintPlus( { ArkInventory.Localise["MOD_MENU_MAIN_COMPRESS"], ": ", ArkInventory.Localise["STATUS_START"] } )
	
	local changed = true
	
	-- compress stacks
	while changed == true do
		
		changed = false
			
		for _, bag_id in pairs( ArkInventory.Global.Location[loc_id].Bags ) do
	
			local bag_size = GetContainerNumSlots( bag_id )
			
			for slot_id = 1, bag_size do

				--ArkInventory.PrintPlus( "checking bag " .. bag_id .. ", slot " .. slot_id )

				local _, count, locked
				
				while true do

					_, count, locked = GetContainerItemInfo( bag_id, slot_id )
					
					if locked then
						--ArkInventory.PrintPlus( "yielding - primary is locked" )
						coroutine.yield()
						--ArkInventory.PrintPlus( "resumed" )
					else
						break
					end
			
				end
				
				local h = GetContainerItemLink( bag_id, slot_id )

				if h then
				
					local item_id = ArkInventory.ItemStringDecode( h )
					local stack = select( 8, ArkInventory.ItemInfoGet( h ) )
					
					if count < stack then
				
						--ArkInventory.PrintPlus( "partial stack of item " .. h .. " found at " .. bag_id .. "." .. slot_id )
						local locked, ok, sb, ss
						
						while true do
					
							ok, sb, ss = ArkInventory.RestackFindPartial( loc_id, bag_id, slot_id, item_id )
							
							if ok then
								locked = select( 3, GetContainerItemInfo( sb, ss ) )
							else
								locked = false
							end
						
							if locked then
								--ArkInventory.PrintPlus( "yielding - secondary is locked" )
								coroutine.yield()
								--ArkInventory.PrintPlus( "resumed" )
							else
								break
							end
							
						end
					
						if ok then
						
							--ArkInventory.PrintPlus( "merging with other partial stack of item " .. item_id .. " found at " .. sb .. "." .. ss )
							
							ClearCursor()
							PickupContainerItem( bag_id, slot_id )
							PickupContainerItem( sb, ss )
							ClearCursor()
							
							changed = true
						
						end
						
					end
				
				end
				
			end
				
		end
			
	end

	--ArkInventory.PrintPlus( "Restack " .. ArkInventory.Global.Location[loc_id].Name .. " - compress completed" )

	
	--ArkInventory.PrintPlus( "Restack " .. ArkInventory.Global.Location[loc_id].Name .. " - restack started" )
	
	-- move items into appropriate bag types with empty slots
	for _, bag_id in pairs( ArkInventory.Global.Location[loc_id].Bags ) do
	
		local bt = ArkInventory.BagType( bag_id )
		--ArkInventory.PrintPlus( "bag " .. bag_id .. " = " .. ArkInventory.Const.Slot.Data[bt].name )
			
		if not ( bt == ArkInventory.Const.Slot.Type.Unknown or bt == ArkInventory.Const.Slot.Type.Bag or bt == ArkInventory.Const.Slot.Type.Key ) then
	
			for slot_id = 1, GetContainerNumSlots( bag_id ) do

				--ArkInventory.PrintPlus( "checking bag " .. bag_id .. " (" .. ArkInventory.Const.Slot.Data[bt].name .. "), slot " .. slot_id )

				while true do

					local locked = select( 3, GetContainerItemInfo( bag_id, slot_id ) )
					
					if locked then
						--ArkInventory.PrintPlus( "yielding - primary is locked" )
						coroutine.yield()
						--ArkInventory.PrintPlus( "resumed" )
					else
						break
					end
		
				end

				if not GetContainerItemLink( bag_id, slot_id ) then
					
					local locked, ok, sb, ss
					--ArkInventory.PrintPlus( "empty special slot found at " .. bag_id .. "." .. slot_id )
				
					while true do
				
						ok, sb, ss = ArkInventory.RestackFindSpecial( loc_id, bt )
							
						if ok then
							locked = select( 3, GetContainerItemInfo( sb, ss ) )
						else
							locked = false
						end
						
						if locked then
							-- empty slots should never be locked but you never know
							--ArkInventory.PrintPlus( "yielding - secondary is locked" )
							coroutine.yield()
							--ArkInventory.PrintPlus( "resumed" )
						else
							break
						end
						
					end
					
					if ok then
						
						--ArkInventory.PrintPlus( "moving " .. h .. " from " .. sb .. "." .. ss .. " to special slot " .. bag_id .. "." .. slot_id )
						
						ClearCursor()
						PickupContainerItem( sb, ss )
						PickupContainerItem( bag_id, slot_id )
						ClearCursor()

					end
					
				end
			
			end
			
		end
		
	end

	ArkInventory.PrintPlus( { ArkInventory.Localise["MOD_MENU_MAIN_COMPRESS"], ": ", ArkInventory.Localise["STATUS_FINISH"] } )

end


function ArkInventory.RestackRun( loc_id )

	-- DO NOT USE CACHED DATA FOR RESTACKING, PULL THE DATA DIRECTLY FROM WOW AGAIN

	ArkInventory.PrintPlus( { ArkInventory.Localise["MOD_MENU_MAIN_COMPRESS"], ": ", ArkInventory.Localise["STATUS_START"] } )
	
	local changed = true
	
	-- compress stacks
	while changed == true do
		
		changed = false
			
		for _, bag_id in pairs( ArkInventory.Global.Location[loc_id].Bags ) do
	
			local bag_size = GetContainerNumSlots( bag_id )
			
			for slot_id = 1, bag_size do

				--ArkInventory.PrintPlus( "checking bag " .. bag_id .. ", slot " .. slot_id )

				local _, count, locked
				
				while true do

					_, count, locked = GetContainerItemInfo( bag_id, slot_id )
					
					if locked then
						--ArkInventory.PrintPlus( "yielding - primary is locked" )
						coroutine.yield()
						--ArkInventory.PrintPlus( "resumed" )
					else
						break
					end
			
				end
				
				local h = GetContainerItemLink( bag_id, slot_id )

				if h then
				
					local item_id = ArkInventory.ItemStringDecode( h )
					local stack = select( 8, ArkInventory.ItemInfoGet( h ) )
					
					if count < stack then
				
						--ArkInventory.PrintPlus( "partial stack of item " .. h .. " found at " .. bag_id .. "." .. slot_id )
						local locked, ok, sb, ss
						
						while true do
					
							ok, sb, ss = ArkInventory.RestackFindPartial( loc_id, bag_id, slot_id, item_id )
							
							if ok then
								locked = select( 3, GetContainerItemInfo( sb, ss ) )
							else
								locked = false
							end
						
							if locked then
								--ArkInventory.PrintPlus( "yielding - secondary is locked" )
								coroutine.yield()
								--ArkInventory.PrintPlus( "resumed" )
							else
								break
							end
							
						end
					
						if ok then
						
							--ArkInventory.PrintPlus( "merging with other partial stack of item " .. item_id .. " found at " .. sb .. "." .. ss )
							
							ClearCursor()
							PickupContainerItem( bag_id, slot_id )
							PickupContainerItem( sb, ss )
							ClearCursor()
							
							changed = true
						
						end
						
					end
				
				end
				
			end
				
		end
			
	end

	--ArkInventory.PrintPlus( "Restack24 " .. ArkInventory.Global.Location[loc_id].Name .. " - compress completed" )

	
	--ArkInventory.PrintPlus( "Restack24 " .. ArkInventory.Global.Location[loc_id].Name .. " - restack started" )
	
	-- move items into appropriate bag types with empty slots
	for _, bag_id in pairs( ArkInventory.Global.Location[loc_id].Bags ) do
	
		local _, bt = GetContainerNumFreeSlots( bag_id )
		--ArkInventory.PrintPlus( { "bag=[", bag_id, "], type=[", bt, "]" } )
		
		if bt ~= 0 then
	
			for slot_id = 1, GetContainerNumSlots( bag_id ) do

				--ArkInventory.PrintPlus( { "checking bag=[", bag_id, "], slot=[", slot_id, "]" } )

				while true do

					local locked = select( 3, GetContainerItemInfo( bag_id, slot_id ) )
					
					if locked then
						--ArkInventory.PrintPlus( "yielding - primary is locked" )
						coroutine.yield()
						--ArkInventory.PrintPlus( "resumed" )
					else
						break
					end
		
				end

				if not GetContainerItemLink( bag_id, slot_id ) then
					
					local locked, ok, sb, ss
					--ArkInventory.PrintPlus( { "empty special slot at [", bag_id, ".", slot_id, "]" } )
				
					while true do
				
						ok, sb, ss = ArkInventory.RestackFindSpecial( loc_id, bt )
							
						if ok then
							locked = select( 3, GetContainerItemInfo( sb, ss ) )
						else
							locked = false
						end
						
						if locked then
							-- empty slots should never be locked but you never know
							--ArkInventory.PrintPlus( "yielding - secondary is locked" )
							coroutine.yield()
							--ArkInventory.PrintPlus( "resumed" )
						else
							break
						end
						
					end
					
					if ok then
						
						--ArkInventory.PrintPlus( { "moving ", h, " from ", sb, ".", ss, " to special slot ", bag_id, ".", slot_id } )
						
						ClearCursor()
						PickupContainerItem( sb, ss )
						PickupContainerItem( bag_id, slot_id )
						ClearCursor()

					end
					
				end
			
			end
			
		end
		
	end

	ArkInventory.PrintPlus( { ArkInventory.Localise["MOD_MENU_MAIN_COMPRESS"], ": ", ArkInventory.Localise["STATUS_FINISH"] } )

end

function ArkInventory.RestackResume()

	 --ArkInventory.PrintPlus( "ARKINV_Local_ContainerRestackResume()" )
	
	if type( ArkInventory.Global.Thread.Restack ) == "thread" and coroutine.status( ArkInventory.Global.Thread.Restack ) == "suspended" then

		-- resume current thread
		coroutine.resume( ArkInventory.Global.Thread.Restack )
		
	end
	
end

function ArkInventory.RestackStart( loc_id )

	if not ArkInventory.Global.Location[loc_id].restack then

		ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, string.format( ArkInventory.Localise["RESTACK_FAILED_LOCATION"], ArkInventory.Global.Location[loc_id].Name ) } )
	
	elseif ArkInventory.Global.Location[loc_id].offline then

		ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, string.format( ArkInventory.Localise["RESTACK_FAILED_OFFLINE"], ArkInventory.Global.Location[loc_id].Name ) } )
		
	else
	
		if type( ArkInventory.Global.Thread.Restack ) ~= "thread" or coroutine.status( ArkInventory.Global.Thread.Restack ) == "dead" then
	
			-- thread not active, create a new one
			--ArkInventory.PrintPlus( "Restack " .. ArkInventory.Global.Location[loc_id].Name .. " started" )
			ArkInventory.Global.Thread.Restack = coroutine.create(
				function ()
					ArkInventory.RestackRun( loc_id )
				end
			)
			coroutine.resume( ArkInventory.Global.Thread.Restack )
			
		else
	
			-- restack already in progress
			ArkInventory.PrintPlus( { RED_FONT_COLOR_CODE, string.format( ArkInventory.Localise["RESTACK_FAILED_RUNNING"], ArkInventory.Global.Location[loc_id].Name ) } )
		
		end
		
	end

end
