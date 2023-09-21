function onUse(cid, item, frompos, item2, topos)
if item.uid == 5552 then

getPlayerStorageValue(cid,3517)
doPlayerSendTextMessage(cid,22,"Ganhou Food!.")
doPlayerAddItem(cid,2667,100)
setPlayerStorageValue(cid,3517,1)
else

doPlayerSendTextMessage(cid,22,"Ganhou Food!")


end

return 1

end 