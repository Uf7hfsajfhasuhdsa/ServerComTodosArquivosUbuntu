local combat1 = createCombatObject() 
local combat2 = createCombatObject() 
local combat3 = createCombatObject() 
local combat4 = createCombatObject() 
local combat5 = createCombatObject() 
local combat6 = createCombatObject() 
local combat7 = createCombatObject() 
local combat8 = createCombatObject() 
local combat9 = createCombatObject() 
local combat10 = createCombatObject() 


local combat1 = createCombatObject() 
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 16)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -2.2, 1, -2.4, 1)

local combat2 = createCombatObject() 
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 16)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -2.2, 1, -2.4, 1)

local combat3 = createCombatObject() 
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 16)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, -2.2, 1, -2.4, 1)

local combat4 = createCombatObject() 
setCombatParam(combat4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat4, COMBAT_PARAM_EFFECT, 16)
setCombatFormula(combat4, COMBAT_FORMULA_LEVELMAGIC, -2.2, 1, -2.4, 1)

local combat5 = createCombatObject() 
setCombatParam(combat5, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat5, COMBAT_PARAM_EFFECT, 16)
setCombatFormula(combat5, COMBAT_FORMULA_LEVELMAGIC, -2.2, 1, -2.4, 1)

local combat6 = createCombatObject() 
setCombatParam(combat6, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat6, COMBAT_PARAM_EFFECT, 16)
setCombatFormula(combat6, COMBAT_FORMULA_LEVELMAGIC, -2.2, 1, -2.4, 1)

local combat7 = createCombatObject() 
setCombatParam(combat7, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat7, COMBAT_PARAM_EFFECT, 16)
setCombatFormula(combat7, COMBAT_FORMULA_LEVELMAGIC, -2.2, 1, -2.4, 1)

local combat8 = createCombatObject() 
setCombatParam(combat8, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat8, COMBAT_PARAM_EFFECT, 16)
setCombatFormula(combat8, COMBAT_FORMULA_LEVELMAGIC, -2.2, 1, -2.4, 1)

local combat9 = createCombatObject() 
setCombatParam(combat9, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat9, COMBAT_PARAM_EFFECT, 16)
setCombatFormula(combat9, COMBAT_FORMULA_LEVELMAGIC, -2.2, 1, -2.4, 1)

local combat10 = createCombatObject() 
setCombatParam(combat10, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat10, COMBAT_PARAM_EFFECT, 16)
setCombatFormula(combat10, COMBAT_FORMULA_LEVELMAGIC, -2.2, 1, -2.4, 1)

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
local function onCastSpell6(parameters) 
    doCombat(parameters.cid, combat6, parameters.var) 
end 
local function onCastSpell7(parameters) 
    doCombat(parameters.cid, combat7, parameters.var) 
end 
local function onCastSpell8(parameters) 
    doCombat(parameters.cid, combat8, parameters.var) 
end 
local function onCastSpell9(parameters) 
    doCombat(parameters.cid, combat9, parameters.var) 
end 
local function onCastSpell10(parameters) 
    doCombat(parameters.cid, combat10, parameters.var) 
end 

function onCastSpell(cid, var)
local storage = 1
local time = 1.5
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time) 
local parameters = { cid = cid, var = var} 
addEvent(onCastSpell1, 0, parameters) 
addEvent(onCastSpell2, 200, parameters) 
addEvent(onCastSpell3, 400, parameters) 
addEvent(onCastSpell4, 600, parameters) 
addEvent(onCastSpell5, 800, parameters) 
addEvent(onCastSpell6, 1200, parameters) 
addEvent(onCastSpell7, 1400, parameters) 
addEvent(onCastSpell8, 1600, parameters) 
addEvent(onCastSpell9, 1800, parameters) 
addEvent(onCastSpell10, 2000, parameters) 

return true
else
     doPlayerSendCancel(cid, "Exausted")
  end
end 