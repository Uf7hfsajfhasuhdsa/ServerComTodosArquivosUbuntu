---Transform Version 2.0 By Uffox
function onSay(cid, words, param)
	if getPlayerVocation(cid) == 13 and getPlayerLevel(cid) >= 120 then ---Anbu Transforms
        doPlayerSetVocation(cid, 13)
        local outfit = {lookType = 53 , lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookAddons = 0}
        doSetCreatureOutfit(cid, outfit, -1)
        doSendMagicEffect(getCreaturePosition(cid), 13)
        doPlayerSendCancel(cid, "Welcome to Konoha Anbus!")
		elseif getPlayerLevel(cid) <= 120 then
        doPlayerSendCancel(cid, "You need more level!")
	elseif getPlayerVocation(cid) == 15 and getPlayerLevel(cid) >= 120 then
        doPlayerSetVocation(cid, 15)
        local outfit = {lookType = 53 , lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookAddons = 0}
        doSetCreatureOutfit(cid, outfit, -1)
        doSendMagicEffect(getCreaturePosition(cid), 13)
        doPlayerSendCancel(cid, "Welcome to Suna Anbus!!")
        elseif getPlayerLevel(cid) <= 120 then
        doPlayerSendCancel(cid, "You need more level!")
	else
		doPlayerSendCancel(cid, "You are part of a organization.")
	end
	return true
end