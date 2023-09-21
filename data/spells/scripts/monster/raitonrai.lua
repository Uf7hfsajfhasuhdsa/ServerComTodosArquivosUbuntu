local combat = createCombatObject() 
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 385)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -10000, -10000, -10000, -10000)
function onCastSpell(cid, var)
local tPos = var.pos or getThingPos(var.number)
if tPos then
    tPos.x = tPos.x + 4 
    tPos.y = tPos.y + 0
    doSendMagicEffect(tPos, 237)
end
local tPos = var.pos or getThingPos(var.number)
if tPos then
    tPos.x = tPos.x - 0
    tPos.y = tPos.y + 0
    doSendMagicEffect(tPos, 236)
end
local tPos = var.pos or getThingPos(var.number)
if tPos then
    tPos.x = tPos.x + 4
    tPos.y = tPos.y + 0
    doSendMagicEffect(tPos, 51)
end
return doCombat(cid, combat, var)
end
