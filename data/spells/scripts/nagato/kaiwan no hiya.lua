local combat1 = createCombatObject() 
local combat2 = createCombatObject() 

local combat1 = createCombatObject() 
setCombatParam(combat1, COMBAT_PARAM_TYPE, 8)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 74)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 39)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -13.5, -14, -14.5, -15)

local combat2 = createCombatObject() 
setCombatParam(combat2, COMBAT_PARAM_TYPE, 8)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 74)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, 40)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -13.5, -14, -14.5, -15)

local function onCastSpell1(parameters) 
    doCombat(parameters.cid, combat1, parameters.var) 
end 
local function onCastSpell2(parameters) 
    doCombat(parameters.cid, combat2, parameters.var) 
end 

function onCastSpell(cid, var) 

local storage = 2
local time = 1
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