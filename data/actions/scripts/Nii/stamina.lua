function onUse(cid, item, fromPosition, itemEx, toPosition)

local cfg = {}
cfg.refuel = 42 * 60 * 1000
if(getPlayerStamina(cid) >= cfg.refuel) then
doPlayerSendCancel(cid, "Your stamina is already full.")
else
doPlayerSetStamina(cid, cfg.refuel)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Your stamina has been refilled.")
doRemoveItem(item.uid)
enda
return true
end