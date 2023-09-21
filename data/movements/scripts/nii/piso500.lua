function onStepIn(cid, item, position, fromPosition)
 
level = 500
 
if getPlayerLevel(cid) < level then
doTeleportThing(cid, fromPosition, false)
doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "Somente Players level 500+ podem passar !")
else
 
doSendMagicEffect(position, CONST_ME_MAGIC_RED)
doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "Bem Vindo !")
 
end
return TRUE
end