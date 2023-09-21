--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==13541 then
queststatus = getPlayerStorageValue(cid,13540)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"voce ja e vip.")
 
else
doPlayerSendTextMessage(cid,22,"Você recebeu acesso a area vip! A e uma esmolinha uns 5 Gold :P.")
doSendMagicEffect(topos,7)
coins_uid = doPlayerAddItem(cid,2160,5)
setPlayerStorageValue(cid,13540,1)
end
return 0
end
return 1
end
