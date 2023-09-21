local combat1 = createCombatObject() 
local combat2 = createCombatObject() 

local combat1 = createCombatObject() 
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 23)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -11, -11.5, -12, -12.5)

local combat2 = createCombatObject() 
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, 22)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -11, -11.5, -12, -12.5)

local function onCastSpell1(parameters) 
    doCombat(parameters.cid, combat1, parameters.var) 
end 
local function onCastSpell2(parameters) 
    doCombat(parameters.cid, combat2, parameters.var) 
end 

function onCastSpell(cid, var) 

local storage = 1
local time = 1.5
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)

local eff = 213 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+1, y=getCreaturePosition(cid).y, z=getCreaturePosition(cid).z}
doSendMagicEffect(position, eff)
local parameters = { cid = cid, var = var} 
addEvent(onCastSpell1, 200, parameters) 
addEvent(onCastSpell2, 450, parameters) 
return true
else
     doPlayerSendCancel(cid, "Exausted")
  end
end 