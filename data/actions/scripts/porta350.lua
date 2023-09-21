function onUse(cid, item, frompos, item2, topos)
 
local lvl = 349
 
if getPlayerLevel(cid) <= lvl then
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Only the worthy may pass.")
return true
end
 
if frompos.x > topos.x then
doTeleportThing(cid, {x=topos.x - 1, y=topos.y, z=topos.z})
elseif frompos.x < topos.x then
doTeleportThing(cid, {x=topos.x + 1, y=topos.y, z=topos.z})
elseif frompos.y < topos.y then
doTeleportThing(cid, {x=topos.x, y=topos.y + 1, z=topos.z})
elseif frompos.y > topos.y then
doTeleportThing(cid, {x=topos.x, y=topos.y - 1, z=topos.z})
end
return true
end