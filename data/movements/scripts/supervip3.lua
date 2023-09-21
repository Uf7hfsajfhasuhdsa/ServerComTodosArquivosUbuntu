-- Vip System by Gean Riot
function onStepIn(cid, item, position, fromPosition)

local config = {
msgDenied = "desculpe,apenas Jogadores VIP account Podem Passar",
msgWelcome = "Seja Bem Vindo a area vip !"
}

vip = getPlayerStorageValue(cid,13800)
if vip == -1 then
doTeleportThing(cid, fromPosition, true)
doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "Area não permitida para players!.")
doSendMagicEffect(getThingPos(cid), CONST_ME_MAGIC_BLUE)
return true
end
doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "é nóiz.")
return true
end