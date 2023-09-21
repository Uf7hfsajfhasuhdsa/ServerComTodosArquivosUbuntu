local combat1 = createCombatObject() 

local combat1 = createCombatObject() 
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 188)
setCombatParam(combat1, COMBAT_PARAM_HITCOLOR, 0)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 15)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -18, -19, -20, -21)

local function onCastSpell1(parameters) 
    doCombat(parameters.cid, combat1, parameters.var) 
end 

function onCastSpell(cid, var) 
local eff = 188 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x-1, y=getCreaturePosition(target).y+0, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 200, position, eff)
local eff = 188 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+1, y=getCreaturePosition(target).y+0, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 200, position, eff)
local eff = 189 -- Efeito
local position = {x=getPlayerPosition(cid).x, y=getPlayerPosition(cid).y, z=getPlayerPosition(cid).z}
addEvent(doSendMagicEffect, 100, position, eff)
local parameters = { cid = cid, var = var} 
addEvent(onCastSpell1, 0, parameters) 
return true
end 