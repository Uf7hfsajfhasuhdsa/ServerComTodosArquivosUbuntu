local config = {
    positions = {
        ["Quests"] = {x = 1024, y = 840, z = 7}, -- Coordenadas do teleport
   
    }
}

function onThink(cid, interval, lastExecution)
    for text, pos in pairs(config.positions) do
        doSendAnimatedText(pos, text, math.random(1, 255))
    end
    
    return TRUE
end