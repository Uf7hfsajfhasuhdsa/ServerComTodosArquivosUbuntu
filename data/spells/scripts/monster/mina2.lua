local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -6, -17, -26, -37)

function onCastSpell(cid, var)

local player = getCreaturePosition(cid)
local target = getCreatureTarget(cid)
local enemypos = getCreaturePosition(target)

if target == isMonster or isCreature then
doTeleportThing(cid, enemypos)

local tPos = var.pos or getThingPos(var.number)
if tPos then
    tPos.x = tPos.x + 3
    tPos.y = tPos.y + 0
    doSendMagicEffect(tPos, 325)
end
end
return doCombat(cid, combat, var)

  end
