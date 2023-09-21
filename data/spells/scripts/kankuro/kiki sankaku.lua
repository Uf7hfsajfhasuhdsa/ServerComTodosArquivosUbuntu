local combat1 = createCombatObject() 
local combat2 = createCombatObject() 
local combat3 = createCombatObject() 
local combat4 = createCombatObject() 


local combat1 = createCombatObject() 
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 190)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 8)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -4.4, 1, -4.8, 1)

local combat2 = createCombatObject() 
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 190)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, 8)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -4.4, 1, -4.8, 1)

local combat3 = createCombatObject() 
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 190)
setCombatParam(combat3, COMBAT_PARAM_DISTANCEEFFECT, 8)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, -4.4, 1, -4.8, 1)

local combat4 = createCombatObject() 
setCombatParam(combat4, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatParam(combat4, COMBAT_PARAM_EFFECT, 190)
setCombatParam(combat4, COMBAT_PARAM_DISTANCEEFFECT, 8)
setCombatFormula(combat4, COMBAT_FORMULA_LEVELMAGIC, -4.4, 1, -4.8, 1)

local function onCastSpell1(parameters) 
    doCombat(parameters.cid, combat1, parameters.var) 
end 
local function onCastSpell2(parameters) 
    doCombat(parameters.cid, combat2, parameters.var) 
end 
local function onCastSpell3(parameters) 
    doCombat(parameters.cid, combat1, parameters.var) 
end 
local function onCastSpell4(parameters) 
    doCombat(parameters.cid, combat2, parameters.var) 
end 
 

local condition = createConditionObject(CONDITION_POISON)

setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)

addDamageCondition(condition, 2434, 1500, -2547)

setCombatCondition(combat, condition)

 

function onCastSpell(cid, var)
local storage = 1
local time = 1.5
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time) 
local parameters = { cid = cid, var = var} 
addEvent(onCastSpell1, 0, parameters) 
addEvent(onCastSpell2, 250, parameters) 
addEvent(onCastSpell3, 350, parameters) 
addEvent(onCastSpell4, 450, parameters) 
return true
else
     doPlayerSendCancel(cid, "Exausted")
  end
end 