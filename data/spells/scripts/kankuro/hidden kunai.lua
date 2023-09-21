local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 0)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 48)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -15, -16, -17, -18)
function onCastSpell(cid, var)
local tPos = var.pos or getThingPos(var.number)
if tPos then
    tPos.x = tPos.x
    tPos.y = tPos.y
    doSendMagicEffect(tPos, 75)
end
return doCombat(cid, combat, var)
end