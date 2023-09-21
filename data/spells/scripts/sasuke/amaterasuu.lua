local combat1 = createCombatObject() 
local combat2 = createCombatObject() 

local combat1 = createCombatObject() 
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -6, -6,2, -6,5, -6,7)

local combat2 = createCombatObject() 
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -6, -6,2, -6,5, -6,7)

local combat3 = createCombatObject() 
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, -6, -6,2, -6,5, -6,7)

local combat4 = createCombatObject() 
setCombatParam(combat4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat4, COMBAT_FORMULA_LEVELMAGIC, -6, -6,2, -6,5, -6,7)

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

function onCastSpell(cid, var)
local storage = 2
local time = 1
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)

local eff = 79 -- ID do efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+1, y=getCreaturePosition(target).y, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 0, position, eff)

local eff = 79 -- ID do efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+1, y=getCreaturePosition(target).y, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 500, position, eff)

local eff = 79 -- ID do efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+1, y=getCreaturePosition(target).y, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 1000, position, eff)

local eff = 110 -- ID do efeito
local position = {x=getCreaturePosition(cid).x, y=getCreaturePosition(cid).y, z=getCreaturePosition(cid).z}
doSendMagicEffect(position, eff)

local parameters = { cid = cid, var = var} 
addEvent(onCastSpell1, 0, parameters) 
addEvent(onCastSpell2, 500, parameters) 
addEvent(onCastSpell3, 1000, parameters) 
addEvent(onCastSpell4, 1500, parameters) 
return true
else
     doPlayerSendCancel(cid, "Exausted")
  end
end