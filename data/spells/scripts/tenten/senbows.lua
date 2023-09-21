local combat1 = createCombatObject() 

local combat1 = createCombatObject() 
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 21)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -15, -16, -17, -18)

local function onCastSpell1(parameters) 
    doCombat(parameters.cid, combat1, parameters.var) 
end 

function onCastSpell(cid, var) 
local parameters = { cid = cid, var = var} 
addEvent(onCastSpell1, 0, parameters) 
return true
end 