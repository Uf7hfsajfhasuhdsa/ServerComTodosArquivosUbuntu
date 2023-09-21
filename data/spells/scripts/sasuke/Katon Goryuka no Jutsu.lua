local combat1 = createCombatObject() 
local combat2 = createCombatObject() 

local combat1 = createCombatObject() 
setCombatParam(combat1, COMBAT_PARAM_TYPE, 8)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 421)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 10)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -15.5, 1, -16.5, 1)

local combat2 = createCombatObject() 
setCombatParam(combat2, COMBAT_PARAM_TYPE, 8)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 421)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, 10)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -15.5, 1, -16.5, 1)

local function onCastSpell1(parameters) 
    doCombat(parameters.cid, combat1, parameters.var) 
end 
local function onCastSpell2(parameters) 
    doCombat(parameters.cid, combat2, parameters.var) 
end 

function onCastSpell(cid, var)
local storage = 1
local time = 2.0
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time) 
local parameters = { cid = cid, var = var} 
addEvent(onCastSpell1, 0, parameters) 
addEvent(onCastSpell2, 200, parameters) 
return true
else
     doPlayerSendCancel(cid, "Exausted")
  end
end 