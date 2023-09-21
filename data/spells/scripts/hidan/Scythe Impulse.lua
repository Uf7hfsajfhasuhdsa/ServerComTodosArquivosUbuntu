local combat1 = createCombatObject() 
local combat2 = createCombatObject() 
local combat3 = createCombatObject() 
local combat4 = createCombatObject() 
local combat5 = createCombatObject() 

local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 2)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -4.5, 1, 4.8, 1)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, 2)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -4.5, 1, 4.8, 1)

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_DISTANCEEFFECT, 2)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, -4.5, 1, 4.8, 1)

local combat4 = createCombatObject()
setCombatParam(combat4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat4, COMBAT_PARAM_DISTANCEEFFECT, 2)
setCombatFormula(combat4, COMBAT_FORMULA_LEVELMAGIC, -4.5, 1, 4.8, 1)

local combat5 = createCombatObject()
setCombatParam(combat5, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat5, COMBAT_PARAM_DISTANCEEFFECT, 2)
setCombatFormula(combat5, COMBAT_FORMULA_LEVELMAGIC, -4.5, 1, 4.8, 1)


local function onCastSpell1(parameters)
    doCombat(parameters.cid, parameters.combat1, parameters.var)
end

local function onCastSpell2(parameters)
    doCombat(parameters.cid, parameters.combat2, parameters.var)
end

local function onCastSpell3(parameters)
    doCombat(parameters.cid, parameters.combat3, parameters.var)
end

local function onCastSpell4(parameters)
      doCombat(parameters.cid, parameters.combat4, parameters.var)
end
local function onCastSpell5(parameters)
      doCombat(parameters.cid, parameters.combat5, parameters.var)
end


function onCastSpell(cid, var)
local storage = 2
local time = 2.5
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)
local parameters = { cid = cid, var = var, combat1 = combat1, combat2 = combat2, combat3 = combat3, combat4 = combat4, combat5 = combat5 }
addEvent(onCastSpell1, 0, parameters)    
addEvent(onCastSpell2, 200, parameters)       
addEvent(onCastSpell3, 400, parameters)       
addEvent(onCastSpell4, 600, parameters)
addEvent(onCastSpell5, 800, parameters)
return TRUE       
else
     doPlayerSendCancel(cid, "Exausted")
  end
end









