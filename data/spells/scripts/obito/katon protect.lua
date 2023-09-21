local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 75)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -17, -18, -19, -20)

arr = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 1, 1, 2, 1, 1, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local area = createCombatArea(arr)
setCombatArea(combat, area)

function onCastSpell(cid, var)

local eff = 243 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+3, y=getCreaturePosition(cid).y, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 000, position, eff)

local eff = 243 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+2, y=getCreaturePosition(cid).y-1, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 000, position, eff)

local eff = 243 -- ID do efeito
local position = {x=getCreaturePosition(cid).x, y=getCreaturePosition(cid).y-1, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 000, position, eff)

local eff = 243 -- ID do efeito
local position = {x=getCreaturePosition(cid).x-1, y=getCreaturePosition(cid).y, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 000, position, eff)

local eff = 243 -- ID do efeito
local position = {x=getCreaturePosition(cid).x-1, y=getCreaturePosition(cid).y+2, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 000, position, eff)

local eff = 243 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+1, y=getCreaturePosition(cid).y+2, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 000, position, eff)

local eff = 243 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+3, y=getCreaturePosition(cid).y+2, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 000, position, eff)

doCombat(cid, combat, var)
return true
end