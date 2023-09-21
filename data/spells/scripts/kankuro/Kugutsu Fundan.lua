local combat1 = createCombatObject() 
local combat2 = createCombatObject() 
local combat3 = createCombatObject() 
local combat4 = createCombatObject() 
local combat5 = createCombatObject() 

local combat1 = createCombatObject() 
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 75)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -4.96, 1, -5.28, 1)

local combat2 = createCombatObject() 
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 75)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -4.96, 1, -5.28, 1)

local combat3 = createCombatObject() 
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 75)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, -4.96, 1, -5.28, 1)

local combat4 = createCombatObject() 
setCombatParam(combat4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat4, COMBAT_PARAM_EFFECT, 75)
setCombatFormula(combat4, COMBAT_FORMULA_LEVELMAGIC, -4.96, 1, -5.28, 1)

local combat5 = createCombatObject() 
setCombatParam(combat5, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat5, COMBAT_PARAM_EFFECT, 75)
setCombatFormula(combat5, COMBAT_FORMULA_LEVELMAGIC, -4.96, 1, -5.28, 1)

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
local time = 2.0
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time) 
		local eff = 431 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x, y=getCreaturePosition(target).y+0, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 400, position, eff)
		local eff = 431 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x-1, y=getCreaturePosition(target).y+0, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 200, position, eff)
		local eff = 431 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+1, y=getCreaturePosition(target).y+0, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 600, position, eff)
		local eff = 431 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+2, y=getCreaturePosition(target).y+0, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 800, position, eff)
		local eff = 431 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+3, y=getCreaturePosition(target).y+0, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 1000, position, eff)
local parameters = { cid = cid, var = var} 
addEvent(onCastSpell1, 0, parameters) 
addEvent(onCastSpell2, 200, parameters) 
addEvent(onCastSpell3, 600, parameters) 
addEvent(onCastSpell4, 800, parameters) 
addEvent(onCastSpell5, 1000, parameters) 
return true
else
     doPlayerSendCancel(cid, "Exausted")
  end
end 