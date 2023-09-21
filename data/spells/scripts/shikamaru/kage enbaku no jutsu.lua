local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 188)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -26.35, 1, -28.05, 1)
function onCastSpell(cid, var)
local storage = 1
local time = 2.0
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)
local eff = 188 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x-1, y=getCreaturePosition(target).y+0, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 200, position, eff)
local eff = 188 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+1, y=getCreaturePosition(target).y+0, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 200, position, eff)
local eff = 188 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+1, y=getCreaturePosition(target).y-1, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 200, position, eff)
local eff = 188 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+1, y=getCreaturePosition(target).y+1, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 200, position, eff)
local eff = 188 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x-1, y=getCreaturePosition(target).y+1, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 200, position, eff)
local eff = 188 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x-1, y=getCreaturePosition(target).y-1, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 200, position, eff)
local eff = 188 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x-0, y=getCreaturePosition(target).y-1, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 200, position, eff)
local eff = 188 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x-0, y=getCreaturePosition(target).y+1, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 200, position, eff)
 
local eff = 227 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x-1, y=getCreaturePosition(target).y+0, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 400, position, eff)
local eff = 227 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+1, y=getCreaturePosition(target).y+0, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 400, position, eff)
local eff = 227 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+1, y=getCreaturePosition(target).y-1, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 400, position, eff)
local eff = 227 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+1, y=getCreaturePosition(target).y+1, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 400, position, eff)
local eff = 227 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x-1, y=getCreaturePosition(target).y+1, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 400, position, eff)
local eff = 227 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x-1, y=getCreaturePosition(target).y-1, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 400, position, eff)
local eff = 227 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x-0, y=getCreaturePosition(target).y-1, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 400, position, eff)
local eff = 227 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x-0, y=getCreaturePosition(target).y+1, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 400, position, eff)
return doCombat(cid, combat, var)
else
     doPlayerSendCancel(cid, "Exausted")
  end
end