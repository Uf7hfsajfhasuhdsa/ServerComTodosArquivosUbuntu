function onUse(cid, item, frompos, item2, topos)

local lvl = 200

if getPlayerLevel(cid) <= lvl then
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Only the worthy may pass.")
return true
end

if getPlayerPosition(cid).x > getThingPos(item.uid).x then
doTeleportThing(cid, {x=getThingPos(item.uid).x - 1, y=getThingPos(item.uid).y, z=getThingPos(item.uid).z})
elseif getPlayerPosition(cid).x < getThingPos(item.uid).x then
doTeleportThing(cid, {x=getThingPos(item.uid).x + 1, y=getThingPos(item.uid).y, z=getThingPos(item.uid).z})
elseif getPlayerPosition(cid).y < getThingPos(item.uid).y then
doTeleportThing(cid, {x=getThingPos(item.uid).x, y=getThingPos(item.uid).y + 1, z=getThingPos(item.uid).z})
elseif getPlayerPosition(cid).y > getThingPos(item.uid).y then
doTeleportThing(cid, {x=getThingPos(item.uid).x, y=getThingPos(item.uid).y - 1, z=getThingPos(item.uid).z})
elseif getPlayerPosition(cid).y > getThingPos(item.uid).y + 1 then
doTeleportThing(cid, {x=getThingPos(item.uid).x, y=getThingPos(item.uid).y - 1, z=getThingPos(item.uid).z})
elseif getPlayerPosition(cid).y > getThingPos(item.uid).y - 1 then
doTeleportThing(cid, {x=getThingPos(item.uid).x, y=getThingPos(item.uid).y - 1, z=getThingPos(item.uid).z})
end
return TRUE
end