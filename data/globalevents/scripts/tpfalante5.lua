local config = {
    positions = {
        ["Invasao"] = {x = 1019, y = 848, z = 5}, -- Coordenadas do teleport
   
    }
}

function onThink(cid, interval, lastExecution)
    for text, pos in pairs(config.positions) do
        doSendAnimatedText(pos, text, math.random(1, 255))
    end
    
    return TRUE
end