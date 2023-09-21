local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 0)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -70, -80, -90, -100)
function onCastSpell(cid, var)
local tPos = var.pos or getThingPos(var.number)
if tPos then tPos.x = tPos.x + 2 doSendMagicEffect(tPos, 128) end
return doCombat(cid, combat, var)
end