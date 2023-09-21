local combat = createCombatObject() 
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 75)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -140, -150, -160, -170)
function onCastSpell(cid, var)
local eff = 255 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+1, y=getCreaturePosition(target).y+1, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 200, position, eff)
return doCombat(cid, combat, var)
end
