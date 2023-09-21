local config = {	
	fromItem = 2160, -- Item que precissa.	
	toItem = 2265 -- Item que vai transformar.
}


function onCastSpell(cid, var)	
	if (getPlayerSlotItem(cid, CONST_SLOT_LEFT).itemid == config.fromItem or getPlayerSlotItem(cid, CONST_SLOT_RIGHT).itemid == config.fromItem) then
	   doPlayerRemoveItem(cid, config.fromItem, 50)		
	   doPlayerAddItem(cid, config.toItem, 100)	
	else		
	   doPlayerSendCancel(cid, "You must have a " .. getItemNameById(config.fromItem) .. " in your hand to cast this spell.")	
	end	
	return true
end