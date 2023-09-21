local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 75)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -10.3, 1, -11, 1)
local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 75)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -10.3, 1, -11, 1)

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 75)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, -10.3, 1, -11, 1)


local function onCastSpell1(parameters)
    doCombat(parameters.cid, parameters.combat1, parameters.var)
end

local function onCastSpell2(parameters)
    doCombat(parameters.cid, parameters.combat2, parameters.var)
end

local function onCastSpell3(parameters)
    doCombat(parameters.cid, parameters.combat3, parameters.var)
end



function onCastSpell(cid, var)
local storage = 1
local time = 2.0
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)
local eff = 32 -- ID do efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+1, y=getCreaturePosition(target).y, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 0, position, eff)
local eff = 32 -- ID do efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+1, y=getCreaturePosition(target).y, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 200, position, eff)
local eff = 32 -- ID do efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+1, y=getCreaturePosition(target).y, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 400, position, eff)
local parameters = { cid = cid, var = var, combat1 = combat1, combat2 = combat2, combat3 = combat3, combat4 = combat4, combat5 = combat5 }
addEvent(onCastSpell1, 100, parameters)    
addEvent(onCastSpell2, 300, parameters)       
addEvent(onCastSpell3, 600, parameters)       
return TRUE       
else
     doPlayerSendCancel(cid, "Exausted")
  end
end






