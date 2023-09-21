local combat = createCombatObject() 
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -20, -21, -22, -23)
function onCastSpell(cid, var)
local tPos = var.pos or getThingPos(var.number)
if tPos then
    tPos.x = tPos.x + 2
    tPos.y = tPos.y
    doSendMagicEffect(tPos, 225)
end
return doCombat(cid, combat, var)
end