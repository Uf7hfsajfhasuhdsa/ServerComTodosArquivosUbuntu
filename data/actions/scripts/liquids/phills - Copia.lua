function onUse(cid, item)


local exhaust = 8 -- Tempo para player poder se curar novamente! (tempo em segundos)

if (getPlayerStorageValue(cid, 12289) <= os.time() and doRemoveItem(item.uid, 1) ) then
doCreatureAddHealth(cid, 50000)
doCreatureAddMana(cid, 50000)
setPlayerStorageValue(cid, 12289, os.time()+exhaust)

doPlayerSay(cid, "Usei Phill!",1)
else
doPlayerSendCancel(cid, "Desculpe, você só pode se curar novamente depois de "..exhaust.." segundos.")
end
return TRUE
end