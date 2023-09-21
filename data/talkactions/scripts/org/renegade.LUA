---Transform Version 2.0 By Uffox
function onSay(cid, words, param)
	if getPlayerVocation(cid) == 16 and getPlayerLevel(cid) >= 120 then ---Renegade Transform
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