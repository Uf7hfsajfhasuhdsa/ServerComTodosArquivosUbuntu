local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT,75)

function onGetFormulaValues(cid, level, maglevel)
min = (level * 3 + maglevel * 1.5) * 10
max = (level * 3 + maglevel * 1.5) * 10.1	

return min, max
end

setCombatCallback(combat1, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

arr1 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 2, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local area1 = createCombatArea(arr1)
setCombatArea(combat1, area1)

local function onCastSpell1(parameters)
    return isPlayer(parameters.cid) and doCombat(parameters.cid, combat1, parameters.var)
end

function onCastSpell(cid, var)
local eff = 36 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+3, y=getCreaturePosition(cid).y+1, z=getCreaturePosition(cid).z}
doSendMagicEffect(position, eff)

local eff = 36 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+2, y=getCreaturePosition(cid).y+2, z=getCreaturePosition(cid).z}
doSendMagicEffect(position, eff)

local eff = 36 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+1, y=getCreaturePosition(cid).y+3, z=getCreaturePosition(cid).z}
doSendMagicEffect(position, eff)

local eff = 36 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+1, y=getCreaturePosition(cid).y-1, z=getCreaturePosition(cid).z}
doSendMagicEffect(position, eff)

local eff = 36 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+2, y=getCreaturePosition(cid).y, z=getCreaturePosition(cid).z}
doSendMagicEffect(position, eff)

local eff = 36 -- ID do efeito
local position = {x=getCreaturePosition(cid).x, y=getCreaturePosition(cid).y, z=getCreaturePosition(cid).z}
doSendMagicEffect(position, eff)

local eff = 36 -- ID do efeito
local position = {x=getCreaturePosition(cid).x-1, y=getCreaturePosition(cid).y+1, z=getCreaturePosition(cid).z}
doSendMagicEffect(position, eff)

local eff = 36 -- ID do efeito
local position = {x=getCreaturePosition(cid).x, y=getCreaturePosition(cid).y+2, z=getCreaturePosition(cid).z}
doSendMagicEffect(position, eff)

local parameters = { cid = cid, var = var}
addEvent(onCastSpell1, 100, parameters)
return TRUE
end