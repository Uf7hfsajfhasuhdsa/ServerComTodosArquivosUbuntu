local telePos = {x=1122, y=1073, z=7}

function onUse(cid, item, frompos, item2, topos)
ppos = getPlayerPosition(cid)
if not (getCreatureCondition(cid, CONDITION_INFIGHT) > 0) then
doSendMagicEffect(ppos,36)
doSendAnimatedText(frompos,'Teleport!',TEXTCOLOR_RED)
doTeleportThing(cid, telePos, TRUE)
doRemoveItem(item.uid,1)
else
doPlayerSendCancel(cid,"Tienes Pz Lock Espera Para Poder Usarlo.")
end
return 1
end