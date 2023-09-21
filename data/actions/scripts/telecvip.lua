function onUse(cid, item, frompos, item2, topos)
pos = {x=140, y=369, z=9}
if item.itemid == 6500 then

doPlayerSendCancel(cid,"Abra o bau para se tornar vip!")
doTeleportThing(cid,pos)
doRemoveItem(item.uid,1)
else

doPlayerSendCancel(cid,"Falhou :D!")


end

return 1

end 