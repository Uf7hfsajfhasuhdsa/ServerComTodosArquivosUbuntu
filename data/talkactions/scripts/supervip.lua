function onSay(cid, words, param)
if doPlayerRemoveItem(cid,2160,200) then
 	setPlayerStorageValue(cid,13700,1)
 	setPlayerStorageValue(cid,13700,1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MORTAREA)
doCreatureSay(cid, "VOCÊ SE TORNOU VIP UHU VOCÊ É FODÃO!!!", TALKTYPE_ORANGE_1)
else
doPlayerSendCancel(cid, 'você precisa de 200 gold bar para usar este comando.')
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_FLAMEAREA)
end
end  