---Transform Version 2.0 By Uffox
function onSay(cid, words, param)
    if getPlayerVocation(cid) == 1 and getPlayerLevel(cid) >= 120 then ---Hokage Transform
        doPlayerSetVocation(cid, 10)
        local outfit = {lookType = 102 , lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookAddons = 0}
        doSetCreatureOutfit(cid, outfit, -1)
        doSendMagicEffect(getCreaturePosition(cid), 13)
        doPlayerSendCancel(cid, "Welcome to Konoha new hokage!")
		elseif getPlayerLevel(cid) <= 120 then
        doPlayerSendCancel(cid, "You need more level!")
		else
		doPlayerSendCancel(cid, "You are part of a organization.")
	end
	if getPlayerVocation(cid) == 3 and getPlayerLevel(cid) >= 120 then ---Anbu Transforms
        doPlayerSetVocation(cid, 13)
        local outfit = {lookType = 53 , lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookAddons = 0}
        doSetCreatureOutfit(cid, outfit, -1)
        doSendMagicEffect(getCreaturePosition(cid), 13)
        doPlayerSendCancel(cid, "Welcome to Konoha Anbus!")
		elseif getPlayerLevel(cid) <= 120 then
        doPlayerSendCancel(cid, "You need more level!")
	elseif getPlayerVocation(cid) == 5 and getPlayerLevel(cid) >= 120 then
        doPlayerSetVocation(cid, 15)
        local outfit = {lookType = 53 , lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookAddons = 0}
        doSetCreatureOutfit(cid, outfit, -1)
        doSendMagicEffect(getCreaturePosition(cid), 13)
        doPlayerSendCancel(cid, "Welcome to Suna Anbus!!")
        elseif getPlayerLevel(cid) <= 120 then
        doPlayerSendCancel(cid, "You need more level!")
	elseif getPlayerVocation(cid) == 6 and getPlayerLevel(cid) >= 120 then
        doPlayerSetVocation(cid, 15)
        local outfit = {lookType = 14 , lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookAddons = 0}
        doSetCreatureOutfit(cid, outfit, -1)
        doSendMagicEffect(getCreaturePosition(cid), 13)
        doPlayerSendCancel(cid, "Welcome to Suna Anbus!!")
        elseif getPlayerLevel(cid) <= 120 then
        doPlayerSendCancel(cid, "You need more level!")
	elseif getPlayerVocation(cid) == 7 and getPlayerLevel(cid) >= 120 then
        doPlayerSetVocation(cid, 13)
        local outfit = {lookType = 14 , lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookAddons = 0}
        doSetCreatureOutfit(cid, outfit, -1)
        doSendMagicEffect(getCreaturePosition(cid), 13)
        doPlayerSendCancel(cid, "Welcome to Konoha Anbus!!")
        elseif getPlayerLevel(cid) <= 120 then
        doPlayerSendCancel(cid, "You need more level!")
	elseif getPlayerVocation(cid) == 8 and getPlayerLevel(cid) >= 120 then
        doPlayerSetVocation(cid, 13)
        local outfit = {lookType = 14 , lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookAddons = 0}
        doSetCreatureOutfit(cid, outfit, -1)
        doSendMagicEffect(getCreaturePosition(cid), 13)
        doPlayerSendCancel(cid, "Welcome to Konoha Anbus!!")
        elseif getPlayerLevel(cid) <= 120 then
        doPlayerSendCancel(cid, "You need more level!")
	elseif getPlayerVocation(cid) == 9 and getPlayerLevel(cid) >= 120 then
        doPlayerSetVocation(cid, 13)
        local outfit = {lookType = 53 , lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookAddons = 0}
        doSetCreatureOutfit(cid, outfit, -1)
        doSendMagicEffect(getCreaturePosition(cid), 13)
        doPlayerSendCancel(cid, "Welcome to Konoha Anbus!!")
        elseif getPlayerLevel(cid) <= 120 then
        doPlayerSendCancel(cid, "You need more level!")
	else
		doPlayerSendCancel(cid, "You are part of a organization.")
	end
	if getPlayerVocation(cid) == 4 and getPlayerLevel(cid) >= 120 then ---Kazekage Transform
        doPlayerSetVocation(cid, 14)
        local outfit = {lookType = 127 , lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookAddons = 0}
        doSetCreatureOutfit(cid, outfit, -1)
        doSendMagicEffect(getCreaturePosition(cid), 13)
        doPlayerSendCancel(cid, "Welcome to Suna new kazekage!")
		elseif getPlayerLevel(cid) <= 120 then
        doPlayerSendCancel(cid, "You need more level!")
		else
		doPlayerSendCancel(cid, "You are part of a organization.")
	end
	if getPlayerVocation(cid) == 2 and getPlayerLevel(cid) >= 120 then ---Renegade Transform
        doPlayerSetVocation(cid, 16)
        local outfit = {lookType = 164 , lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookAddons = 0}
        doSetCreatureOutfit(cid, outfit, -1)
        doSendMagicEffect(getCreaturePosition(cid), 13)
        doPlayerSendCancel(cid, "You are explused of konoha!")
		elseif getPlayerLevel(cid) <= 120 then
        doPlayerSendCancel(cid, "You need more level!")
		else
		doPlayerSendCancel(cid, "You are part of a organization.")
	end
	return true
end