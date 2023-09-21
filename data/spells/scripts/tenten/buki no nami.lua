local combat1 = createCombatObject() 
local combat2 = createCombatObject() 
local combat3 = createCombatObject()
local combat4 = createCombatObject()
local combat5 = createCombatObject()

local combat1 = createCombatObject() 
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 0)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -3, 1, -3.4, 1)

local combat2 = createCombatObject() 
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, 23)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -3, 1, -3.4, 1)

local combat3 = createCombatObject() 
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_DISTANCEEFFECT, 22)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, -3, 1, -3.4, 1)

local combat4 = createCombatObject() 
setCombatParam(combat4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat4, COMBAT_PARAM_DISTANCEEFFECT, 0)
setCombatFormula(combat4, COMBAT_FORMULA_LEVELMAGIC, -3, 1, -3.4, 1)

local combat5 = createCombatObject() 
setCombatParam(combat5, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat5, COMBAT_PARAM_DISTANCEEFFECT, 23)
setCombatFormula(combat5, COMBAT_FORMULA_LEVELMAGIC, -3, 1, -3.4, 1)


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
local storage = 3
local time = 2.5
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)
local eff = 213 -- ID do efeito
local position = {x=getCreaturePosition(cid).x-0, y=getCreaturePosition(cid).y, z=getCreaturePosition(cid).z}
doSendMagicEffect(position, eff)
local eff = 213 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+2, y=getCreaturePosition(cid).y, z=getCreaturePosition(cid).z}
doSendMagicEffect(position, eff)
local parameters = { cid = cid, var = var} 
addEvent(onCastSpell1, 0, parameters) 
addEvent(onCastSpell2, 100, parameters) 
addEvent(onCastSpell3, 250, parameters)
addEvent(onCastSpell4, 400, parameters)
addEvent(onCastSpell5, 550, parameters) 
return true
else
     doPlayerSendCancel(cid, "Exausted")
  end
end 