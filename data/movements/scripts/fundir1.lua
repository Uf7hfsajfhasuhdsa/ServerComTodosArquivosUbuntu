function onStepIn(cid, item, position, fromPosition)
local from,to,players,limit = {x=1151, y=802, z=5}, {x=1153, y=808, z=5},{},1
for _, pid in ipairs(getPlayersOnline()) do
if isInRange(getCreaturePosition(pid), from, to) then
table.insert(player, pid)
end
end
if #players >= limit then
doTeleportThing(cid, fromPosition, true)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE,"This training room is already full!")
doSendMagicEffect(getThingPos(cid), CONST_ME_MAGIC_BLUE)
return true
end 
return true
end                         