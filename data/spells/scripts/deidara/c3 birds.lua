local combat1 = createCombatObject() 
local combat2 = createCombatObject() 
local combat3 = createCombatObject() 

local combat1 = createCombatObject() 
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 227)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 20)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -9, -9.3, -9.6, -10)

local combat2 = createCombatObject() 
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 227)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, 20)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -9, -9.3, -9.6, -10)

local combat3 = createCombatObject() 
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 227)
setCombatParam(combat3, COMBAT_PARAM_DISTANCEEFFECT, 20)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, -9, -9.3, -9.6, -10)

local function onCastSpell1(parameters) 
    doCombat(parameters.cid, combat1, parameters.var) 
end 
local function onCastSpell2(parameters) 
    doCombat(parameters.cid, combat2, parameters.var) 
end 
local function onCastSpell3(parameters) 
    doCombat(parameters.cid, combat3, parameters.var) 
end 

function onCastSpell(cid, var)

local storage = 2
local time = 1
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)

local parameters = { cid = cid, var = var} 
addEvent(onCastSpell1, 0, parameters) 
addEvent(onCastSpell2, 200, parameters) 
addEvent(onCastSpell3, 400, parameters) 
addEvent(onCastSpell3, 600, parameters) 
return true
else
     doPlayerSendCancel(cid, "Exausted")
  end
end 