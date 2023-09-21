local config = {
	loginMessage = getConfigValue('loginMessage'),
	useFragHandler = getBooleanFromString(getConfigValue('useFragHandler'))
}

function onLogin(cid)
	
	local loss = getConfigValue('deathLostPercent')
	if(loss ~= nil) then
		doPlayerSetLossPercent(cid, PLAYERLOSS_EXPERIENCE, loss * 12)
	end

	local accountManager = getPlayerAccountManager(cid)
	if(accountManager == MANAGER_NONE) then
		local lastLogin, str = getPlayerLastLoginSaved(cid), config.loginMessage
		if(lastLogin > 0) then
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_DEFAULT, str)
			str = "Your last visit was on " .. os.date("%a %b %d %X %Y", lastLogin) .. "."
		end

		doPlayerSendTextMessage(cid, MESSAGE_STATUS_DEFAULT, str)
	elseif(accountManager == MANAGER_NAMELOCK) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Hello, it appears that your character has been namelocked, what would you like as your new name?")
	elseif(accountManager == MANAGER_ACCOUNT) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Hello, type 'account' to manage your account and if you want to start over then type 'cancel'.")
	else
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Hello, type 'account' to create an account or type 'recover' to recover an account.")
	end

	setPlayerStorageValue(cid, 14755, -1)
	
	if(not isPlayerGhost(cid)) then
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
	end
	registerCreatureEvent(cid, "attackspeed")
	registerCreatureEvent(cid, "Mail")
	registerCreatureEvent(cid, "Outfit")
	registerCreatureEvent(cid, "WeaponSugar")
	registerCreatureEvent(cid, "AmoebaTask") 
	registerCreatureEvent(cid, "ManaSugar")
	registerCreatureEvent(cid, "ProtegerPlayer") 
	registerCreatureEvent(cid, "GuildMotd")
	registerCreatureEvent(cid, "Biohazard")		
	registerCreatureEvent(cid, "showVoc")		
	registerCreatureEvent(cid, "ReportBug")		
	registerCreatureEvent(cid, "AdvanceSave")
	registerCreatureEvent(cid, "corpseDecay")		
    	registerCreatureEvent(cid, "ExpVip")
	registerCreatureEvent(cid, "BlessDrop")
	registerCreatureEvent(cid, "ManaDrain")
	registerCreatureEvent(cid, "Idle")
	registerCreatureEvent(cid, "SkullCheck")
	registerCreatureEvent(cid, "dailyKill")
	registerCreatureEvent(cid, "UpAbsolute")
	registerCreatureEvent(cid, "TiraBattle")
	---------- Invencible ----------------
registerCreatureEvent(cid, "invencible")
if getPlayerStorageValue(cid, 3482101) ~= 0 then
        setPlayerStorageValue(cid, 3482101, 0) 
end
	---------- Kawarimi Defense ----------------
           registerCreatureEvent(cid, "defensive1")
if getPlayerStorageValue(cid, 3482103) < 0 then
        setPlayerStorageValue(cid, 3482103, 0) 
end
return true
end