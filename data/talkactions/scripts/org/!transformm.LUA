---Transform Version 2.0 By Uffox
function onSay(cid, words, param)
	if getPlayerVocation(cid) == 1 and getPlayerLevel(cid) >= 120 then ---Sannin Transform
        doPlayerSetVocation(cid, 11)
        local outfit = {lookType = 168 , lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookAddons = 0}
        doSetCreatureOutfit(cid, outfit, -1)
        doSendMagicEffect(getCreaturePosition(cid), 13)
        doPlayerSendCancel(cid, "You are a new legend in the world of shinobi!")
		elseif getPlayerLevel(cid) <= 120 then
        doPlayerSendCancel(cid, "You need more level!")
		else
		doPlayerSendCancel(cid, "You are part of a organization.")
	end
	if getPlayerVocation(cid) == 3 and getPlayerLevel(cid) >= 120 then ---Shippuden Transforms
        doPlayerSetVocation(cid, 12)
        local outfit = {lookType = 84 , lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookAddons = 0}
        doSetCreatureOutfit(cid, outfit, -1)
        doSendMagicEffect(getCreaturePosition(cid), 13)
        doPlayerSendCancel(cid, "Yeah Shippuden!")
		elseif getPlayerLevel(cid) <= 120 then
        doPlayerSendCancel(cid, "You need more level!")
	elseif getPlayerVocation(cid) == 4 and getPlayerLevel(cid) >= 120 then
        doPlayerSetVocation(cid, 12)
        local outfit = {lookType = 75 , lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookAddons = 0}
        doSetCreatureOutfit(cid, outfit, -1)
        doSendMagicEffect(getCreaturePosition(cid), 13)
        doPlayerSendCancel(cid, "Yeah Shippuden!!")
        elseif getPlayerLevel(cid) <= 120 then
        doPlayerSendCancel(cid, "You need more level!")
	elseif getPlayerVocation(cid) == 5 and getPlayerLevel(cid) >= 120 then
        doPlayerSetVocation(cid, 12)
        local outfit = {lookType = 51 , lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookAddons = 0}
        doSetCreatureOutfit(cid, outfit, -1)
        doSendMagicEffect(getCreaturePosition(cid), 13)
        doPlayerSendCancel(cid, "Yeah Shippuden!!")
        elseif getPlayerLevel(cid) <= 120 then
        doPlayerSendCancel(cid, "You need more level!")
	elseif getPlayerVocation(cid) == 6 and getPlayerLevel(cid) >= 120 then
        doPlayerSetVocation(cid, 12)
        local outfit = {lookType = 145 , lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookAddons = 0}
        doSetCreatureOutfit(cid, outfit, -1)
        doSendMagicEffect(getCreaturePosition(cid), 13)
        doPlayerSendCancel(cid, "Yeah Shippuden!!")
        elseif getPlayerLevel(cid) <= 120 then
        doPlayerSendCancel(cid, "You need more level!")
	elseif getPlayerVocation(cid) == 7 and getPlayerLevel(cid) >= 120 then
        doPlayerSetVocation(cid, 12)
        local outfit = {lookType = 74 , lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookAddons = 0}
        doSetCreatureOutfit(cid, outfit, -1)
        doSendMagicEffect(getCreaturePosition(cid), 13)
        doPlayerSendCancel(cid, "Yeah Shippuden!!")
        elseif getPlayerLevel(cid) <= 120 then
        doPlayerSendCancel(cid, "You need more level!")
	elseif getPlayerVocation(cid) == 8 and getPlayerLevel(cid) >= 120 then
        doPlayerSetVocation(cid, 12)
        local outfit = {lookType = 73 , lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookAddons = 0}
        doSetCreatureOutfit(cid, outfit, -1)
        doSendMagicEffect(getCreaturePosition(cid), 13)
        doPlayerSendCancel(cid, "Yeah Shippuden!!")
        elseif getPlayerLevel(cid) <= 120 then
        doPlayerSendCancel(cid, "You need more level!")
	elseif getPlayerVocation(cid) == 9 and getPlayerLevel(cid) >= 120 then
        doPlayerSetVocation(cid, 12)
        local outfit = {lookType = 82 , lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookAddons = 0}
        doSetCreatureOutfit(cid, outfit, -1)
        doSendMagicEffect(getCreaturePosition(cid), 13)
        doPlayerSendCancel(cid, "Yeah Shippuden!!")
        elseif getPlayerLevel(cid) <= 120 then
        doPlayerSendCancel(cid, "You need more level!")
	else
		doPlayerSendCancel(cid, "You are part of a organization.")
	end
	if getPlayerVocation(cid) == 2 and getPlayerLevel(cid) >= 120 then ---Akatsuki Transform
        doPlayerSetVocation(cid, 17)
        local outfit = {lookType = 208 , lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookAddons = 0}
        doSetCreatureOutfit(cid, outfit, -1)
        doSendMagicEffect(getCreaturePosition(cid), 13)
        doPlayerSendCancel(cid, "Welcome to Akatsuki Group!")
		elseif getPlayerLevel(cid) <= 120 then
        doPlayerSendCancel(cid, "You need more level!")
		else
		doPlayerSendCancel(cid, "You are part of a organization.")
	end
	return true
end