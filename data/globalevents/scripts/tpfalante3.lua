local config = {
    positions = {
        ["Event PVP"] = {x = 1025, y = 841, z = 5}, -- Coordenadas do teleport
   
    }
}

function onThink(cid, interval, lastExecution)
    for text, pos in pairs(config.positions) do
        doSendAnimatedText(pos, text, math.random(1, 255))
    end
    
    return TRUE
end