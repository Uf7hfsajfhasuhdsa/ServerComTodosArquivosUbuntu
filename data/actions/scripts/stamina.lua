local config = {
stamina = 2520, -- Stamina do player ao usar o item, 2520 = Full stamina!
}

function onUse(cid, item, fromPos, itemEx, toPos)

if isPremium(cid) then
doPlayerSendTextMessage(cid, 25, "Sua stamina foi restaurada!")
doPlayerSetStamina(cid, config.stamina)
doRemoveItem(item.uid, 1)
else
doPlayerSendCancel(cid, "You must be a premium player to use this item.")
return true
end
end