local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -54.2, 1, -56.2, 1)

function onCastSpell(cid, var)
local tPos = var.pos or getThingPos(var.number)
if tPos then
    tPos.x = tPos.x + 0
    tPos.y = tPos.y + 0
    doSendMagicEffect(tPos, 234)
end
local tPos = var.pos or getThingPos(var.number)
if tPos then
    tPos.x = tPos.x + 2
    tPos.y = tPos.y + 2
    doSendMagicEffect(tPos, 31)
end
return doCombat(cid, combat, var)
end