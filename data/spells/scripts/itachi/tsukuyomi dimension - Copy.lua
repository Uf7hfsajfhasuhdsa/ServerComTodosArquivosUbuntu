local newPos = {x = 16, y = 20, z = 6} --pos pra onde sera levado o target
local time = 8 --tempo pra teleporta devolta, em segs
local function teleport(cid, pos)
if isCreature(cid) then
doTeleportThing(cid, getClosestFreeTile(cid, pos))
doSendMagicEffect(getPlayerPosition(cid), 182)
end
end

function onCastSpell(cid, var)

if BlockRunesInArea(cid) then
doPlayerSendCancel(cid, "você não pode jogar runas nesta area.") return false
end

local storage = 10
local time1 = 90
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time1)
local target = getCreatureTarget(cid)
if not isCreature(target) then
return doPlayerSendTextMessage(cid, 27, "You need a target to do this!")
end
local posTarget = getPlayerPosition(target)
teleport(target, newPos)
addEvent(teleport, time*1000, target, posTarget)
return true
else
     doPlayerSendCancel(cid, "Exausted")
  end
end