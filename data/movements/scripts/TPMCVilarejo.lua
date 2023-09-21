local tp_temple_mineracao = {x = 1028, y = 848, z = 5}
local tp_mineracao = {x = 1796, y = 1081, z = 7}
local areasMineracao = {
[1] = {{x = 1717, y = 1051, z = 5}, {x = 1802, y = 1092, z = 7}},
[2] = {{x = 1716, y = 1049, z = 7}, {x = 1801, y = 1095, z = 8}}
}
function onStepIn(cid, item, position, fromPosition, toPosition)
if (not isPlayer(cid)) then
        return false
    end
    for _, v in pairs(areasMineracao) do
        for _, pid in pairs(getPlayersOnline()) do
            if (getPlayerIp(pid) == getPlayerIp(cid) and isInRange(getThingPos(pid), v[1], v[2])) then
                doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE,"So e permitido 1 jogador por IP no Evento.")
                doTeleportThing(cid, tp_temple_mineracao, false)
                doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
                return true
            end
        end
    end
     doTeleportThing(cid, tp_mineracao, false)
      doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
    return true
end