function onUse(cid, item, frompos, item2, topos)
local config={
dias="2"
}
doPlayerAddPremiumDays(cid, config.dias)
doPlayerSendTextMessage(cid,22,"Voce Recebeu 2 dias Premium")
doRemoveItem(item.uid,1) 
return TRUE
end