function onEquip(cid, item, slot)
if getPlayerVocation(cid) == 2 then
doSendMagicEffect(getPlayerPosition(cid), 180)     
addEvent(kolczyki,ext,cid)




if isPlayer(cid) == 1 and getPlayerVocation(cid) == 1 then
doPlayerSetVocation(cid,2) 
doPlayerSendCancel(cid, "Success Transform.") 
doSetCreatureOutfit(cid, 23, -1)

function onDeEquip(cid, item, slot)
stopEvent(onEquip,cid)
doPlayerSetVocation(cid,1) 
doSetCreatureOutfit(cid, 75, -1)
 end
    return 1
    end