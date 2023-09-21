function onUse(cid, item, frompos, item2, topos)

local cfg = {
salaAward = {x = 1003, y = 901 , z = 6}, -- Coordenates of the award place
}

local area = {fromx = 998, fromy = 906, fromz = 4, tox = 1031, toy = 919, toz = 8} -- Positions
local check = getPlayersInArea(area)
local maxhour = "19:15:00"

if #check > 1 then
doPlayerSendTextMessage(cid, 27, "Before everything ends up with other players!!")
return true
end

if os.date("%X") < maxhour then
doPlayerSendTextMessage(cid, 27, "Wait for all participants enter the arena!")
return true
end

doTeleportThing(cid, cfg.salaAward)
doPlayerSendTextMessage(cid, 20, "Congratulations, you won, take your prize in this room.")
doBroadcastMessage("The player "..getCreatureName(cid).." wins the Tournament! Congratulations.", MESSAGE_STATUS_CONSOLE_RED)
end