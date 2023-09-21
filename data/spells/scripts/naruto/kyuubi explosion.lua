local combat = createCombatObject() 
setCombatParam(combat, COMBAT_PARAM_TYPE, 8)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 0)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -22, -23, -24, -25)
function onCastSpell(cid, var)
local tPos = var.pos or getThingPos(var.number)
if tPos then tPos.x = tPos.x + 1 doSendMagicEffect(tPos, 66) end
return doCombat(cid, combat, var)
end