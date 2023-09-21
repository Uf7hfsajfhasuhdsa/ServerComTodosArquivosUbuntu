local combat = createCombatObject() 
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 0)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 29)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -145, -155, -165, -175)
function onCastSpell(cid, var)
local tPos = var.pos or getThingPos(var.number)
if tPos then tPos.x = tPos.x + 6 doSendMagicEffect(tPos, 135)
end
return doCombat(cid, combat, var)
end