local combat = createCombatObject() 
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 201)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -22, -23, -24, -25)
function onCastSpell(cid, var)

local storage = 1
local time = 1
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)

	return doCombat(cid, combat, var)
else
     doPlayerSendCancel(cid, "Exausted")
  end
end