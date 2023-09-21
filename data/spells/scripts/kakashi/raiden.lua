local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 75)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -27.2, 1, -28.9, 1)
function onCastSpell(cid, var)
local storage = 2
local time = 2.5
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)
local eff = 234 -- ID do efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x-1, y=getCreaturePosition(target).y+1, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 0, position, eff)
local eff = 234 -- ID do efeito
local position = {x=getCreaturePosition(target).x+1, y=getCreaturePosition(target).y+1, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 0, position, eff)
local eff = 4 -- ID do efeito
local position = {x=getCreaturePosition(target).x+1, y=getCreaturePosition(target).y-0, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 200, position, eff)
local eff = 4 -- ID do efeito
local position = {x=getCreaturePosition(target).x+1, y=getCreaturePosition(target).y-1, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 200, position, eff)
local eff = 4 -- ID do efeito
local position = {x=getCreaturePosition(target).x+1, y=getCreaturePosition(target).y-2, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 200, position, eff)
local eff = 4 -- ID do efeito
local position = {x=getCreaturePosition(target).x-1, y=getCreaturePosition(target).y-2, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 200, position, eff)
local eff = 4 -- ID do efeito
local position = {x=getCreaturePosition(target).x-1, y=getCreaturePosition(target).y-1, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 200, position, eff)
local eff = 4 -- ID do efeito
local position = {x=getCreaturePosition(target).x-1, y=getCreaturePosition(target).y-0, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 200, position, eff)
	return doCombat(cid, combat, var)
	else
     doPlayerSendCancel(cid, "Exausted")
  end
end
