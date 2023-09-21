local combat1 = createCombatObject() 

local combat1 = createCombatObject() 
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 188)
setCombatParam(combat1, COMBAT_PARAM_HITCOLOR, 0)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 15)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -10, -11, -12, -13)

local function onCastSpell1(parameters) 
    doCombat(parameters.cid, combat1, parameters.var) 
end 

function onCastSpell(cid, var) 
local parameters = { cid = cid, var = var} 
addEvent(onCastSpell1, 0, parameters) 
return true
end 