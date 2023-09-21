function onUse(cid, item, frompos, item2, topos)
bag = doPlayerAddItem(cid, 1999, 1) -- aqui voce coloca o id de uma bag ou backpack

if item.uid == 7212 then
queststatus = getPlayerStorageValue(cid,7000)
if queststatus == -1 then
doPlayerSendTextMessage(cid,21,"Você pegou seus items.")
doPlayerAddItem(cid, 1999, 1)
doAddContainerItem(bag, 2462, 1) -- aqui voce add os items que voce quer que o player ganhe dentro da bag
doAddContainerItem(bag, 2665, 1)
doAddContainerItem(bag, 2478, 1)
doAddContainerItem(bag, 2643, 1)
doAddContainerItem(bag, 2379, 1)
doAddContainerItem(bag, 2380, 1)
setPlayerStorageValue(cid,7000,1)
else
oPlayerSendTextMessage(cid,25,"It is empty.")
end
else
return 0
end
return 1
end