local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 201)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -7.3, 1, -8, 1)
local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 201)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -7.3, 1, -8, 1)

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 201)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, -7.3, 1, -8, 1)


local function onCastSpell1(parameters)
    doCombat(parameters.cid, parameters.combat1, parameters.var)
end

local function onCastSpell2(parameters)
    doCombat(parameters.cid, parameters.combat2, parameters.var)
end

local function onCastSpell3(parameters)
    doCombat(parameters.cid, parameters.combat3, parameters.var)
end



function onCastSpell(cid, var)
local storage = 33
local time = 1.5
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)
local parameters = { cid = cid, var = var, combat1 = combat1, combat2 = combat2, combat3 = combat3, combat4 = combat4, combat5 = combat5 }
addEvent(onCastSpell1, 100, parameters)    
addEvent(onCastSpell2, 300, parameters)       
addEvent(onCastSpell3, 600, parameters)       
return TRUE       
else
     doPlayerSendCancel(cid, "Exausted")
  end
end






