function onUse(cid, item, frompos, item2, topos)
bag = doPlayerAddItem(cid, 1988, 1) -- aqui voce coloca o id de uma bag ou backpack

if item.uid == 7213 then
queststatus = getPlayerStorageValue(cid,7213)
if queststatus == -1 then
doPlayerSendTextMessage(cid,25,"You have found a 5 gold bars.")
doAddContainerItem(bag, 2160, 5) -- aqui voce add os items que voce quer que o player ganhe dentro da bag
setPlayerStorageValue(cid,2643,1)
else
oPlayerSendTextMessage(cid,25,"It is empty.")
end
else
return 0
end
return 1
end