local combat = createCombatObject() 
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -28, -29, -30, -31)
function onCastSpell(cid, var)

local storage = 2
local time = 1
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)

local eff = 84 -- ID do efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+2, y=getCreaturePosition(target).y+2, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 0, position, eff)

local eff = 84 -- ID do efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+2, y=getCreaturePosition(target).y+2, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 500, position, eff)
return doCombat(cid, combat, var)
else
     doPlayerSendCancel(cid, "Exausted")
  end
end