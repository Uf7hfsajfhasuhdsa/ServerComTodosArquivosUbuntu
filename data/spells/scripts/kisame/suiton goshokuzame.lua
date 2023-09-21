local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 233)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -21, -22, -23, -24)
function onCastSpell(cid, var)
local tPos = var.pos or getThingPos(var.number)
if tPos then tPos.x = tPos.x + 1 doSendMagicEffect(tPos, 233) end
return doCombat(cid, combat, var)
end