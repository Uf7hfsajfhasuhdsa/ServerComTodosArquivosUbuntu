function onUse(cid, item, frompos, item2, topos)
local vipstorage = 13450

if item.actionid == 13450 then
if getPlayerStorageValue(cid, vipstorage) == TRUE then
pos = getPlayerPosition(cid)

if pos.x == topos.x then
if pos.y < topos.y then
pos.y = topos.y + 1
else
pos.y = topos.y - 1
end
elseif pos.y == topos.y then
if pos.x < topos.x then
pos.x = topos.x + 1
else
pos.x = topos.x - 1
end
else
doPlayerSendTextMessage(cid,22,'Fique na frente da porta.')
return 1
end

doTeleportThing(cid,pos)
doSendMagicEffect(topos,12)
doPlayerSay(cid, "Bem Vindo a Zona Super Vip.", TALKTYPE_ORANGE_1)
else
doPlayerSendTextMessage(cid,22,'So players Super vip podem passar!')
end
return 1
end
return TRUE
end