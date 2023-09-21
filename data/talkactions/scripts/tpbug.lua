local tempo = 30
local storage, exhaust = 94360, 30

function onSay(cid, words, param, condition, channel)

if not getCreatureCondition(cid, CONDITION_INFIGHT) then

if (getPlayerStorageValue(cid, storage) <= os.time()) then

doPlayerSendTextMessage(cid,25,"Personagem Teleportado!")
doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
doSendMagicEffect(getCreaturePosition(cid),6)
   setPlayerStorageValue(cid, storage, os.time()+exhaust)
else
   doPlayerSendCancel(cid, "Você so pode usar o comando daqui a "..exhaust.." segundos.")
end
else
   doPlayerSendCancel(cid, "Você está em batalha.")
end
   return true
end