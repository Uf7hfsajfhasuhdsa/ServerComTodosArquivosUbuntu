local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 0)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -25.5, 1, -27.2, 1)
function onCastSpell(cid, var)

local storage = 3
local time = 2.5
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)
		
local eff = 51 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+2, y=getCreaturePosition(target).y+1, z=getCreaturePosition(target).z}
doSendMagicEffect(position, eff)

local eff = 51 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+4, y=getCreaturePosition(target).y+1, z=getCreaturePosition(target).z}
doSendMagicEffect(position, eff)

local eff = 35 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+2, y=getCreaturePosition(target).y+1, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 200, position, eff)

local eff = 35 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+4, y=getCreaturePosition(target).y+1, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 400, position, eff)

local eff = 35 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+6, y=getCreaturePosition(target).y+1, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 500, position, eff)

return doCombat(cid, combat, var)
else
     doPlayerSendCancel(cid, "Exausted")
  end
end

