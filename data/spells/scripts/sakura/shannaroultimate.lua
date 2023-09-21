local combat = createCombatObject() 
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 75)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -21.7, 1, -23.1, 1)
function onCastSpell(cid, var)
local storage = 1
local time = 2.0
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)
local eff = 197 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x, y=getCreaturePosition(target).y+0, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 200, position, eff)
local eff = 197 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+2, y=getCreaturePosition(target).y+0, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 200, position, eff)
local eff = 51 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+4, y=getCreaturePosition(target).y+0, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 200, position, eff)
local eff = 22 -- Efeito
local position = {x=getPlayerPosition(cid).x, y=getPlayerPosition(cid).y, z=getPlayerPosition(cid).z}
addEvent(doSendMagicEffect, 100, position, eff)
return doCombat(cid, combat, var)
else
     doPlayerSendCancel(cid, "Exausted")
  end
end