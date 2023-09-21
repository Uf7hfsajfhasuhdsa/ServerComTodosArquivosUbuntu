local STAMINA = 10000000

function onUse(cid, item, fromPosition, itemEx, toPosition)
local exhaust = 8 -- Tempo para player poder se curar novamente! (tempo em segundos)

if (getPlayerStorageValue(cid, 12290) <= os.time() and doRemoveItem(item.uid, 1) ) then

	if isPlayer(itemEx.uid) == FALSE then
		return FALSE
	end

	if doPlayerAddStamina(itemEx.uid, math.random(STAMINA)) == LUA_ERROR then
		return FALSE
	end

setPlayerStorageValue(cid, 12290, os.time()+exhaust)

doPlayerSay(cid, "Stamina Regenerator!",1)
else
doPlayerSendCancel(cid, "Desculpe, você só pode se curar novamente depois de "..exhaust.." segundos.")
end
return TRUE
end