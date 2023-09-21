local combat = createCombatObject() 
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 91)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 27)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -25.5, 1, -27.2, 1)
function onCastSpell(cid, var)
local storage = 3
local time = 2.5
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)
return doCombat(cid, combat, var)
else
     doPlayerSendCancel(cid, "Exausted")
  end
end