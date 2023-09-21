---Transform Version 2.0 By Uffox
function onSay(cid, words, param)
	if getPlayerVocation(cid) == 12 and getPlayerLevel(cid) >= 120 then ---Shippuden Transforms
        doPlayerSetVocation(cid, 12)
        local outfit = {lookType = 84 , lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookAddons = 0}
        doSetCreatureOutfit(cid, outfit, -1)
        doSendMagicEffect(getCreaturePosition(cid), 13)
        doPlayerSendCancel(cid, "Yeah Shippuden!")
		elseif getPlayerLevel(cid) <= 120 then
        doPlayerSendCancel(cid, "You need more level!")
	elseif getPlayerVocation(cid) == 12 and getPlayerLevel(cid) >= 120 then
        doPlayerSetVocation(cid, 12)
        local outfit = {lookType = 75 , lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookAddons = 0}
        doSetCreatureOutfit(cid, outfit, -1)
        doSendMagicEffect(getCreaturePosition(cid), 13)
        doPlayerSendCancel(cid, "Yeah Shippuden!!")
        elseif getPlayerLevel(cid) <= 120 then
        doPlayerSendCancel(cid, "You need more level!")
		else
		doPlayerSendCancel(cid, "You are part of a organization.")
	end
	return true
end