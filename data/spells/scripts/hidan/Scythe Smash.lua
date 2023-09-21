local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 0)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 2)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -16.5, 1, -18, 1)


local function onCastSpell1(parameters)
    doCombat(parameters.cid, parameters.combat1, parameters.var)
end

function onCastSpell(cid, var)
local storage = 1
local time = 1.5
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)
local parameters = { cid = cid, var = var, combat1 = combat1 }
addEvent(onCastSpell1, 100, parameters)    
return TRUE
else
     doPlayerSendCancel(cid, "Exausted")
  end
end