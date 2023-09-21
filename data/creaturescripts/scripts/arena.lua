local arena = {
frompos = {x=957, y=867, z=5}, -- Top Left Corner
topos = {x=961, y=869, z=5}, -- Bottom Right Corner
exit = {x=963, y=867, z=7} -- Exit
} 

function onPrepareDeath(cid, lastHitKiller, mostDamageKiller)
if isPlayer(cid) == TRUE then
if isInArea(getPlayerPosition(cid), arena.frompos, arena.topos) then
doCreatureAddHealth(cid, getCreatureMaxHealth(cid))
doTeleportThing(cid, arena.exit)
doSendMagicEffect(arena.exit, 10)
return FALSE
end
end
return TRUE
end