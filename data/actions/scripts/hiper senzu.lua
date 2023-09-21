function onUse(cid, item, frompos, item2, topos)

	local level = getPlayerLevel(cid)
	local mlevel = getPlayerMagLevel(cid)
	
	local exhausted_seconds = 0
	local exhausted_storagevalue = 10
	
	local mana_minimum = 100000
	local mana_maximum = 100000

	local mana_add = math.random(mana_minimum, mana_maximum)
	
		
		if(item.type >= 1) then
			if(os.time() > getPlayerStorageValue(cid, exhausted_storagevalue)) then
				if(isPlayer(cid) == 1) then
doSendMagicEffect(topos,16)
					doPlayerAddMana(cid, mana_add)
                                        doPlayerAddHealth(cid, mana_add)
    doPlayerSay(cid, 'Hiper Senzu!', TALKTYPE_ORANGE_1) 
					setPlayerStorageValue(cid, exhausted_storagevalue, os.time() + exhausted_seconds)
					doChangeTypeItem(item.uid, item.type - 0)
				else
					doSendMagicEffect(frompos, CONST_ME_POFF)
					doPlayerSendCancel(cid, "You are exchausted.")
				end
			else
				doSendMagicEffect(frompos, CONST_ME_POFF)
				doPlayerSendCancel(cid, "You are exhausted.")
			end
		else
			if(os.time() < getPlayerStorageValue(cid, exhausted_storagevalue)) then
				doSendMagicEffect(frompos, CONST_ME_POFF)
				doPlayerSendCancel(cid, "You are exhausted.")
			else
				if(isPlayer(cid) == 1) then
doSendMagicEffect(topos,16)
					doPlayerAddMana(cid, mana_add)
                                        doPlayerAddHealth(cid, mana_add*1.5)
doPlayerSay(cid,"Hiper Senzu!",1)
					setPlayerStorageValue(cid, exhausted_storagevalue, os.time() + exhausted_seconds)
					doRemoveItem(item.uid, 1)
				else
					doSendMagicEffect(frompos, CONST_ME_POFF)
					doPlayerSendCancel(cid, "You are exchausted.")
				end
			end
		end
						
	return 1
end