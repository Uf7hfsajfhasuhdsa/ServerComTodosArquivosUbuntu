local combat1 = createCombatObject() 
local combat2 = createCombatObject() 
local combat3 = createCombatObject() 
local combat4 = createCombatObject() 
local combat5 = createCombatObject() 

local combat1 = createCombatObject() 
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 247)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -5.0, -5.0, -7.0, -10)

local combat2 = createCombatObject() 
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 247)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -5.0, -5.0, -7.0, -10)

local combat3 = createCombatObject() 
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 247)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, -5.0, -5.0, -7.0, -10)

local combat4 = createCombatObject() 
setCombatParam(combat4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat4, COMBAT_PARAM_EFFECT, 247)
setCombatFormula(combat4, COMBAT_FORMULA_LEVELMAGIC, -5.0, -5.0, -7.0, -10)

local combat5 = createCombatObject() 
setCombatParam(combat5, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat5, COMBAT_PARAM_EFFECT, 247)
setCombatFormula(combat5, COMBAT_FORMULA_LEVELMAGIC, -5.0, -5.0, -7.0, -10)


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
local function onCastSpell5(parameters) 
    doCombat(parameters.cid, combat5, parameters.var) 
end 

function onCastSpell(cid, var) 
local parameters = { cid = cid, var = var} 
addEvent(onCastSpell1, 0, parameters) 
addEvent(onCastSpell2, 200, parameters) 
addEvent(onCastSpell3, 400, parameters) 
addEvent(onCastSpell4, 600, parameters) 
addEvent(onCastSpell5, 800, parameters) 
return true
end 