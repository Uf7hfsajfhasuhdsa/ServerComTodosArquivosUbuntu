local combat = createCombatObject() 
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -32, 1, -34, 1)
function onCastSpell(cid, var)


local eff = 127 -- ID do efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x-1, y=getCreaturePosition(target).y, z=getCreaturePosition(target).z}
doSendMagicEffect(position, eff)

local eff = 127 -- ID do efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x, y=getCreaturePosition(target).y+1, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 500, position, eff)

local eff = 127 -- ID do efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+1, y=getCreaturePosition(target).y, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 1000, position, eff)

local eff = 227 -- ID do efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x, y=getCreaturePosition(target).y+1, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 1500, position, eff)

local eff = 227 -- ID do efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x-1, y=getCreaturePosition(target).y, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 1500, position, eff)

local eff = 227 -- ID do efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+1, y=getCreaturePosition(target).y, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 1500, position, eff)

local eff = 227 -- ID do efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x, y=getCreaturePosition(target).y-1, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 1500, position, eff)

return doCombat(cid, combat, var)
end