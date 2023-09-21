local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -16.5, 1, -18, 1)

function onCastSpell(cid, var)

local storage = 1
local time = 1.5
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)

local player = getCreaturePosition(cid)
local target = getCreatureTarget(cid)
local enemypos = getCreaturePosition(target)

if target == isMonster or isCreature then
doTeleportThing(cid, enemypos)

local tPos = var.pos or getThingPos(var.number)
if tPos then
    tPos.x = tPos.x
    tPos.y = tPos.y
    doSendMagicEffect(tPos, 220)
end
end
return doCombat(cid, combat, var)
else
     doPlayerSendCancel(cid, "Exausted")
  end
end