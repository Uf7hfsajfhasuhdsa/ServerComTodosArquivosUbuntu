function onSay(cid, words, param)
local create_pos = {x = 1024, y = 844, z = 7, stackpos = 1} -- Posição em que o teleport será criado
local tp_pos = {x = 986, y = 895, z = 7} -- Posição em que o teleport levará

if param == "open" then
if getGlobalStorageValue(7377) == 1 then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "O evento já está aberto.") return true
end
setGlobalStorageValue(7377, 1)
doCreateTeleport(1387, tp_pos, create_pos)
doSendMagicEffect(create_pos, 10)
doBroadcastMessage("[Sala de Invasao] Teleporte Para Sala de Invasão Aberta !") return true
elseif param == "close" then
if getGlobalStorageValue(7377) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "O evento já está fechado.") return true
end
setGlobalStorageValue(7377, -1)
doRemoveItem(getThingFromPos(create_pos).uid, 1)
doSendMagicEffect(create_pos, 2)
doBroadcastMessage("[Sala de Invasao] Teleporte Para Sala de Invasão se Fechou !") return true
end
return TRUE
end