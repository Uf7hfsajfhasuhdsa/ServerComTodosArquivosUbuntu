local combat1 = createCombatObject() 

local combat1 = createCombatObject() 
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -27, -28, -29, -30)

local function onCastSpell1(parameters) 
    doCombat(parameters.cid, combat1, parameters.var) 
end 

function onCastSpell(cid, var) 
local storage = 2
local time = 1
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)

local eff = 266 -- ID do efeito
local eff2 = 271 -- ID do efeito

local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x, y=getCreaturePosition(target).y, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 0, position, eff)

local position1 = {x=getCreaturePosition(target).x+3, y=getCreaturePosition(target).y, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 450, position1, eff2)

local parameters = { cid = cid, var = var} 
addEvent(onCastSpell1, 100, parameters) 

return true
else
     doPlayerSendCancel(cid, "Exausted")
  end
end 