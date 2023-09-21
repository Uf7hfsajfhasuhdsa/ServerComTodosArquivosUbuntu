local combat1 = createCombatObject() 
local combat2 = createCombatObject() 
local combat3 = createCombatObject() 
local combat4 = createCombatObject() 
local combat5 = createCombatObject() 

local combat1 = createCombatObject() 
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 11)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -4.8, 1, -5.2, 1)

local combat2 = createCombatObject() 
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, 11)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -4.8, 1, -5.2, 1)

local combat3 = createCombatObject() 
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_DISTANCEEFFECT, 11)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, -4.8, 1, -5.2, 1)

local combat4 = createCombatObject() 
setCombatParam(combat4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat4, COMBAT_PARAM_DISTANCEEFFECT, 11)
setCombatFormula(combat4, COMBAT_FORMULA_LEVELMAGIC, -4.8, 1, -5.2, 1)

local combat5 = createCombatObject() 
setCombatParam(combat5, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat5, COMBAT_PARAM_DISTANCEEFFECT, 11)
setCombatFormula(combat5, COMBAT_FORMULA_LEVELMAGIC, -4.8, 1, -5.2, 1)

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

local storage = 4
local time = 1.5
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)

local parameters = { cid = cid, var = var} 
addEvent(onCastSpell1, 0, parameters) 
addEvent(onCastSpell2, 100, parameters) 
addEvent(onCastSpell3, 200, parameters) 
addEvent(onCastSpell4, 300, parameters) 
addEvent(onCastSpell5, 400, parameters) 
return true
else
     doPlayerSendCancel(cid, "Exausted")
  end
end 