local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 0)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -6, -17, -26, -37)
function onCastSpell(cid, var)



local eff = 328 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+3, y=getCreaturePosition(target).y+1, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 500, position, eff)

return doCombat(cid, combat, var)
end

