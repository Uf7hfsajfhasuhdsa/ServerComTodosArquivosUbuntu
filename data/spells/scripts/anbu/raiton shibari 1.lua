local combat1 = createCombatObject() 
local combat2 = createCombatObject() 

local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -7,3, -7,6, -8, -8,3)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -7,3, -7,6, -8, -8,3)

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, -7,3, -7,6, -8, -8,3)

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

local storage = 1
local time = 1
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)

local eff = 132 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+1, y=getCreaturePosition(target).y, z=getCreaturePosition(target).z}
doSendMagicEffect(position, eff)

local eff = 132 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x, y=getCreaturePosition(target).y, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 300, position, eff)

local eff = 132 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x-1, y=getCreaturePosition(target).y, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 600, position, eff)

local parameters = { cid = cid, var = var, combat1 = combat1, combat2 = combat2, combat3 = combat3 }
addEvent(onCastSpell1, 0000, parameters)
addEvent(onCastSpell2, 0300, parameters)
addEvent(onCastSpell3, 0600, parameters)
return true
else
     doPlayerSendCancel(cid, "Exausted")
  end
end