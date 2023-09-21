local MIN = 40000
local MAX = 60000

function onUse(cid, item, fromPosition, itemEx, toPosition)
	if isPlayer(itemEx.uid) == FALSE then
		return FALSE
	end

	if doCreatureAddHealth(itemEx.uid, math.random(MIN, MAX)) == LUA_ERROR then
		return FALSE
	end

	doSendMagicEffect(getThingPos(itemEx.uid),  68)
	doCreatureSay(itemEx.uid, "Me sinto melhor...", TALKTYPE_ORANGE_1)
	doRemoveItem(item.uid,1,2145)
	return TRUE
end