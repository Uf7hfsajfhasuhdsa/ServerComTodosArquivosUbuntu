function onUse(cid, item, frompos, item2, topos)
	
	local exted = 9754
	local extedadd = 60*2.5
	local tim = os.time()
	
	local function tp(cid)
		doTeleportThing(cid,{x=99, y=189, z=7})
		doSendMagicEffect(getPlayerPosition(cid),12)
		doPlayerSendTextMessage(cid,19,"Você foi teleportado devolta ao templo. Esse item tem 2 minutos e meio de cooldown.")
	end
	
	if (getPlayerStorageValue(cid,exted) < os.time()) then
		if getPlayerPz(cid) <= 0 then
			doPlayerSendTextMessage(cid,19,"Você será teleportado em 5 segundos.")
			doSendMagicEffect(topos,3)
			addEvent(tp,5000,cid)
			setPlayerStorageValue(cid,exted,(os.time()+extedadd))
		else
			doPlayerSendTextMessage(cid,19,"Você está em battle.")
			doSendMagicEffect(topos, CONST_ME_POFF)
		end
	else
		temi = getPlayerStorageValue(cid,exted) - os.time()
		m = math.floor(temi/60)
		temi = temi - m*60
		s = temi
		if m < 10 then
			m = "0"..m
		end
		if s < 10 then
			s = "0"..s
		end
		doPlayerSendTextMessage(cid,19,"Você poderá usar daqui a " .. m .. ":" ..s)
		doSendMagicEffect(topos, CONST_ME_POFF)
	end
end