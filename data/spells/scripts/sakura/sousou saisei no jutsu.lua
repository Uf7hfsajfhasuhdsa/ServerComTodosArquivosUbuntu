local combat = createCombatObject()

setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HEALING)

setCombatParam(combat, COMBAT_PARAM_EFFECT, 13)

setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)


function onGetFormulaValues(cid, level, maglevel)
min = (level * 3 + maglevel * 1.5) * 25
max = (level * 3 + maglevel * 1.5) * 25.1	

return min, max
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(cid, var)
local storage = 3
local time = 20
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)
return doCombat(cid, combat, var)
else
     doPlayerSendCancel(cid, "Exausted")
  end
end