local voca = 12 -- Mude para a vocação que quiser
function onUse(cid, item, frompos, item2, topos)
if not isPlayer(item2.uid) then
doPlayerSendCancel(cid, "Isto não e um player")
return false
end
if getCreatureName(item2.uid) ~= getCreatureName(cid) then
doPlayerSendCancel(cid, "Use a runa em você")
return false
end
doPlayerSetVocation(cid, voca)
doRemoveItem(item.uid)
doPlayerSendTextMessage(cid, 21, "Você será desconectado, para mudar sua vocação.")
addEvent(doRemoveCreature, 5*1000, cid, true)
return true
end