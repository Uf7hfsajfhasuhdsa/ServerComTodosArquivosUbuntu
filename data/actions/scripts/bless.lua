local config = {
item_id = 2187,
lossPercent = 2,
}
function onUse(cid, item, frompos)
if getPlayerItemCount(cid, config.item) >= 1
doPlayerRemoveItem(cid, config.item)
doPlayerSetLossPercent(cid, PLAYERLOSS_EXPERIENCE, config.lossPercent)
doSendMagicEffect(getPlayerPosition(cid), 29)
doSendPlayerTextMessage(cid, 27, "You are been blessed.")
else
doSendPlayerTextMessage(cid, 27, "You cannot use this item.")
end
end