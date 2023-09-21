function onUse(cid, item)


local exhaust = 5 -- Tempo para player poder se curar novamente! (tempo em segundos)

if (getPlayerStorageValue(cid, 12290) <= os.time() and doRemoveItem(item.uid, 1) ) then
doCreatureAddHealth(cid, 20000)
setPlayerStorageValue(cid, 12290, os.time()+exhaust)
doCreatureSay(cid, "Life!", 19)
else
doPlayerSendCancel(cid, "Desculpe, você só pode se curar novamente depois de "..exhaust.." segundos.")
end
return TRUE
end
