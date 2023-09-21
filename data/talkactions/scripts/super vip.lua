function onSay(cid, words, param)
if doPlayerRemoveMoney(cid, 50000000) == TRUE then
setPlayerStorageValue(cid,13450,1)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Agora Voce e Super Vip ")
doSendMagicEffect(getPlayerPosition(cid), 7)
else
doPlayerSendCancel(cid, "Precisa 5000 Gold para super vip (Vale a Pena xD).")
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Precisa 5000 Gold para super vip (Vale a Pena xD.")
doSendMagicEffect(getPlayerPosition(cid), 2)
end
end