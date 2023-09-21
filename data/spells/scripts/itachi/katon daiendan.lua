local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 0)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 26)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -17, -18, -19, -20)
function onCastSpell(cid, var)
local tPos = var.pos or getThingPos(var.number)
if tPos then
    tPos.x = tPos.x + 1
    tPos.y = tPos.y
    doSendMagicEffect(tPos, 66)
end
return doCombat(cid, combat, var)
end