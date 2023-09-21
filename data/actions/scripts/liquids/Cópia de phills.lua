local MIN_HEALTH = 50000
local MAX_HEALTH = 50000
local MIN_MANA = 50000
local MAX_MANA = 50000

function onUse(cid, item, fromPosition, itemEx, toPosition)
local exhaust = 8 -- Tempo para player poder se curar novamente! (tempo em segundos)

if (getPlayerStorageValue(cid, 12289) <= os.time() and doRemoveItem(item.uid, 1) ) then

	if isPlayer(itemEx.uid) == FALSE then
		return FALSE
	end

	if doCreatureAddHealth(itemEx.uid, math.random(MIN_HEALTH, MAX_HEALTH)) == LUA_ERROR then
		return FALSE
	end

	if doCreatureAddMana(itemEx.uid, math.random(MIN_MANA, MAX_MANA)) == LUA_ERROR then
		return FALSE
	end

setPlayerStorageValue(cid, 12289, os.time()+exhaust)

doPlayerSay(cid, "Usei Phill!",1)
else
doPlayerSendCancel(cid, "Desculpe, você só pode se curar novamente depois de "..exhaust.." segundos.")
end
return TRUE
end