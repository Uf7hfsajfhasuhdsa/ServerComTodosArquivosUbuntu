local combat1 = createCombatObject() 
local combat2 = createCombatObject() 
local combat3 = createCombatObject()
local combat4 = createCombatObject()

local combat1 = createCombatObject() 
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 25)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -5.5, -6, -6.5, -7)

local combat2 = createCombatObject() 
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, 25)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -5.5, -6, -6.5, -7)

local combat3 = createCombatObject() 
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_DISTANCEEFFECT, 25)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, -11, -12, -13, -14)

local combat4 = createCombatObject() 
setCombatParam(combat4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat4, COMBAT_PARAM_DISTANCEEFFECT, 25)
setCombatFormula(combat4, COMBAT_FORMULA_LEVELMAGIC, -11, -12, -13, -14)

local function onCastSpell1(parameters) 
    doCombat(parameters.cid, combat1, parameters.var) 
end 
local function onCastSpell2(parameters) 
    doCombat(parameters.cid, combat2, parameters.var) 
end 
local function onCastSpell3(parameters) 
    doCombat(parameters.cid, combat3, parameters.var) 
end 
local function onCastSpell4(parameters) 
    doCombat(parameters.cid, combat4, parameters.var) 
end 

function onCastSpell(cid, var) 
local parameters = { cid = cid, var = var} 
addEvent(onCastSpell1, 0, parameters) 
addEvent(onCastSpell2, 300, parameters) 
addEvent(onCastSpell3, 600, parameters)
addEvent(onCastSpell4, 900, parameters)
return true
end 