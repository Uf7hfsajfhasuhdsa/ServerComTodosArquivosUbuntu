function onSay(cid, words, param)
if getPlayerBlessing(cid,5) then
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Você já está com Bless")
doSendMagicEffect(getPlayerPosition(cid), 230)
else
if doPlayerRemoveMoney(cid, 200000) == TRUE then
for i = 1,5 do
doPlayerAddBlessing(cid,i)
end
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Você comprou Bless")
doSendMagicEffect(getPlayerPosition(cid), 230)
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Você precisa de 20 golds para comprar Bless")
doSendMagicEffect(getPlayerPosition(cid), 230)
end
end
end