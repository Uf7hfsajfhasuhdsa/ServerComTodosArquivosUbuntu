local cfg = {
amount = 5
}

function onUse(cid, item, fromPosition, itemEx, toPosition)

if getPlayerLevel(cid) >= 1 then
doAccountAddPoints(cid, cfg.amount)
doCreatureSay(cid, "Parabéns! Você recebeu 5 Premium Points! ", TALKTYPE_ORANGE_1)
doSendMagicEffect(getCreaturePosition(cid), 15)
doRemoveItem(item.uid,5)
else
doPlayerSendCancel(cid,"Você precisa de level 1 para usar este item.")
end
return TRUE
end