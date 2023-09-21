saida = "no"
templepos = {x = 1028, y = 909, z =6}
jailpos = {x = 997, y = 894, z =10}

function onSay(cid, words, param)

if words == "!jail" or words == "/jail" then
if getPlayerAccess(cid) > 3 then
local par = string.explode(param, ", ")
if type(par[1]) == "string" and type(tonumber(par[2])) == "number" and type(par[3]) == "string" then
local creat = getCreatureByName(par[1])
if isPlayer(creat) then
if getPlayerStorageValue(creat, 17900) - os.time() < 0 then
doJail(creat, par[2], jailpos)
doPlayerSendTextMessage(creat, 4, "Você foi preso por ".. getCreatureName(cid) ..". Motivo: ".. par[3] .. ".")
doPlayerSendTextMessage(cid, 22, "Você prendeu ".. par[1] .. " por ".. par[2] .. " segundos.")
doBroadcastMessage("O jogador ".. par[1] .. " foi preso por ".. getCreatureName(cid).. ". Motivo: ".. par[3] .. ".", BroadCast_Type)
else
doPlayerSendCancel(cid, "Este jogador já esta preso.")
doSendMagicEffect(getCreaturePosition(cid), 2)
end
else
doPlayerSendCancel(cid, "Este jogador não esta online.")
doSendMagicEffect(getCreaturePosition(cid), 2)
end
else
doPlayerSendCancel(cid, "São necesários três parâmetros.")
doSendMagicEffect(getCreaturePosition(cid), 2)
end
else
doPlayerSendCancel(cid, "Você não pode executar este comando.")
doSendMagicEffect(getCreaturePosition(cid), 2)
end
end

if words == "!unjail" or words == "/unjail" then
if getPlayerAccess(cid) > 3 then
local create = getCreatureByName(param)
if isPlayer(create) then
if getPlayerStorageValue(create, 17900) - os.time() > 0 then
doUnjail(create, templepos)
doPlayerSendTextMessage(create, 4, "Você foi solto por ".. getCreatureName(cid) .. ".")
doPlayerSendTextMessage(cid, 22, "Você soltou ".. param .. ".")
else
doPlayerSendCancel(cid, "Este jogador não esta preso.")
doSendMagicEffect(getCreaturePosition(cid), 2)
end
else
doPlayerSendCancel(cid, "Este jogador não esta online.")
doSendMagicEffect(getCreaturePosition(cid), 2)
end
else
doPlayerSendCancel(cid, "Você não pode executar este comando.")
doSendMagicEffect(getCreaturePosition(cid), 2)
end
end

if words == "!out" and saida == "no" then
if getPlayerStorageValue(cid, 17900) - os.time() < 1 and getPlayerStorageValue(cid, 17900) ~= -1 then
doTeleportThing(cid, templepos)
setPlayerStorageValue(cid, 17900, -1)
doSendMagicEffect(getCreaturePosition(cid), 49)
else
doPlayerSendCancel(cid, "Você não está preso ou seu periodo na cadeia ainda não acabou.")
doSendMagicEffect(getCreaturePosition(cid), 2)
end
end

if words == "/tempo" then
if getPlayerStorageValue(cid, 17900) - os.time() > 0 then
doShowTextDialog(cid, 2160, "Faltam ".. os.date("%M", math.floor(getPlayerStorageValue(cid, 17900) - os.time())) .. ":" .. os.date("%S", math.floor(getPlayerStorageValue(cid, 17900) - os.time())) .. " segundos para você sair da cadeia.")
else
doPlayerSendCancel(cid, "Você não esta preso.")
doSendMagicEffect(getCreaturePosition(cid), 2)
end
end
return TRUE
end