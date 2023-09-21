function onSay(player, words, param)
    if not player:hasFlag(PlayerFlag_CanDoEverything) then
        return false
    end

    local lookType = tonumber(param)

    if lookType then
        local currentOutfit = player:getOutfit()
        player:setOutfit({lookType = lookType, lookHead = currentOutfit.lookHead, lookBody = currentOutfit.lookBody, lookLegs = currentOutfit.lookLegs, lookFeet = currentOutfit.lookFeet})
        player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Outfit changed.")
    else
        player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Invalid looktype.")
    end

    return false
end
