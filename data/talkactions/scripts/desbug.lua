function onSay(cid, words, param)
if doPlayerRemoveItem(cid,2160,10) == TRUE then
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Voce Desbugou!")
doSendMagicEffect(getPlayerPosition(cid), 12)
addLevel(cid, 1)
else
doPlayerSendCancel(cid, "Presisa De 10 Gold Para Desbugar!")
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Presisa De 10 Gold Para Desbugar!")
doSendMagicEffect(getPlayerPosition(cid), 2)
end
end