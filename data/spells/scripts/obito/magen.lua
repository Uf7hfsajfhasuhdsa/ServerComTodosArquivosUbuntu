local config = {
            exhaustionSeconds = 1, -- exausted em segundos
            storageUse = 34538 -- storage usado.
}

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 75)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -27, -28, -29, -30)

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

local condition = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 5000) -- aqui vai o tempo de paralyze, 1000 = 1 segundo
setConditionParam(condition, CONDITION_PARAM_SPEED, -300) -- velocidade que o monstro irá perder
setConditionFormula(condition, 0, 0, 0, 0)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)

local eff = 108 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+1, y=getCreaturePosition(cid).y, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 200, position, eff)
local eff = 108 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+2, y=getCreaturePosition(cid).y, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 400, position, eff)
local eff = 108 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+2, y=getCreaturePosition(cid).y-1, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 600, position, eff)
local eff = 108 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+2, y=getCreaturePosition(cid).y-2, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 800, position, eff)

local eff = 108 -- ID do efeito
local position = {x=getCreaturePosition(cid).x-1, y=getCreaturePosition(cid).y, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 200, position, eff)
local eff = 108 -- ID do efeito
local position = {x=getCreaturePosition(cid).x-2, y=getCreaturePosition(cid).y, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 400, position, eff)
local eff = 108 -- ID do efeito
local position = {x=getCreaturePosition(cid).x-2, y=getCreaturePosition(cid).y-1, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 600, position, eff)
local eff = 108 -- ID do efeito
local position = {x=getCreaturePosition(cid).x-2, y=getCreaturePosition(cid).y-2, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 800, position, eff)

local eff = 108 -- ID do efeito
local position = {x=getCreaturePosition(cid).x, y=getCreaturePosition(cid).y+1, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 200, position, eff)
local eff = 108 -- ID do efeito
local position = {x=getCreaturePosition(cid).x, y=getCreaturePosition(cid).y+2, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 400, position, eff)
local eff = 108 -- ID do efeito
local position = {x=getCreaturePosition(cid).x-1, y=getCreaturePosition(cid).y+2, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 600, position, eff)
local eff = 108 -- ID do efeito
local position = {x=getCreaturePosition(cid).x-2, y=getCreaturePosition(cid).y+2, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 800, position, eff)

local eff = 108 -- ID do efeito
local position = {x=getCreaturePosition(cid).x, y=getCreaturePosition(cid).y-1, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 200, position, eff)
local eff = 108 -- ID do efeito
local position = {x=getCreaturePosition(cid).x, y=getCreaturePosition(cid).y-2, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 400, position, eff)
local eff = 108 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+1, y=getCreaturePosition(cid).y+2, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 600, position, eff)
local eff = 108 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+2, y=getCreaturePosition(cid).y+2, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 800, position, eff)

if(exhaustion.check(cid, config.storageUse) == TRUE) then
   if (exhaustion.get(cid, config.storageUse) >= 60) then
   doPlayerSendCancel(cid, "Voçê só pode usar após [" .. math.floor(exhaustion.get(cid, config.storageUse) / 60 + 1) .."] minutos.")
   end
            if (exhaustion.get(cid, config.storageUse) <= 60) then
            doPlayerSendCancel(cid, "Voçê só pode usar após [" .. exhaustion.get(cid, config.storageUse).."] segundos.")
            end
return false
end

doCombat(cid, combat, var)
exhaustion.set(cid, config.storageUse, config.exhaustionSeconds)
return true
end