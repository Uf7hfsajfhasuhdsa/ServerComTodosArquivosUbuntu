local config = {
    positions = {
        ["Trainers"] = {x = 1018, y = 850, z = 7}, -- Coordenadas do teleport
   
    }
}

function onThink(cid, interval, lastExecution)
    for text, pos in pairs(config.positions) do
        doSendAnimatedText(pos, text, math.random(1, 255))
    end
    
    return TRUE
end