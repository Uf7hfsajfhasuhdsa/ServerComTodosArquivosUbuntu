local combat = createCombatObject() 
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 0)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -20.4, 1, -22.1, 1)
function onCastSpell(cid, var)
local storage = 1
local time = 1.5
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)
local eff = 71 -- ID do efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+1, y=getCreaturePosition(target).y, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 0, position, eff)
return doCombat(cid, combat, var)
else
     doPlayerSendCancel(cid, "Exausted")
  end
end