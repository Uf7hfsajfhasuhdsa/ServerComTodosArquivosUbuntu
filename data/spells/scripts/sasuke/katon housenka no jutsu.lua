local combat1 = createCombatObject() 
local combat2 = createCombatObject() 

local combat1 = createCombatObject() 
setCombatParam(combat1, COMBAT_PARAM_TYPE, 8)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 74)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 39)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -5.5, -6.0, -6.5, -7.0)

local combat2 = createCombatObject() 
setCombatParam(combat2, COMBAT_PARAM_TYPE, 8)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 74)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, 40)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -5.5, -6.0, -6.5, -7.0)

local function onCastSpell1(parameters) 
    doCombat(parameters.cid, combat1, parameters.var) 
end 
local function onCastSpell2(parameters) 
    doCombat(parameters.cid, combat2, parameters.var) 
end 

function onCastSpell(cid, var) 
local parameters = { cid = cid, var = var} 
addEvent(onCastSpell1, 0, parameters) 
addEvent(onCastSpell2, 200, parameters) 
return true
end 