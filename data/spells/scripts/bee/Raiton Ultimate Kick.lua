local combat = createCombatObject() 
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 0)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -22, 1, -24, 1)
function onCastSpell(cid, var)

local storage = 1
local time = 1.5
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)

local eff = 131 -- ID do efeito
local position = {x=getCreaturePosition(cid).x, y=getCreaturePosition(cid).y, z=getCreaturePosition(cid).z}
doSendMagicEffect(position, eff)
  
local eff = 31 -- ID do efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+2, y=getCreaturePosition(target).y+2, z=getCreaturePosition(target).z}
doSendMagicEffect(position, eff)

return doCombat(cid, combat, var)
else
     doPlayerSendCancel(cid, "Exausted")
  end
end