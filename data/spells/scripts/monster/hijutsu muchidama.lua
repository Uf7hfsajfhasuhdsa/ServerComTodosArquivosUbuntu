local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 245)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -31, -32, -33, -34)
function onCastSpell(cid, var)
local eff = 245 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+1, y=getCreaturePosition(target).y+1, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 200, position, eff)

local eff = 245 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x-1, y=getCreaturePosition(target).y-1, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 400, position, eff)

local eff = 245 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x-1, y=getCreaturePosition(target).y+1, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 600, position, eff)

local eff = 245 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+1, y=getCreaturePosition(target).y-1, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 600, position, eff)
return doCombat(cid, combat, var)
end