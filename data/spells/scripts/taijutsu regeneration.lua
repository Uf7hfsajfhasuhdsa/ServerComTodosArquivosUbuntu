local combat = createCombatObject()

setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HEALING)

setCombatParam(combat, COMBAT_PARAM_EFFECT, 13)

setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)


function onGetFormulaValues(cid, level, maglevel)
min = (level * 3 + maglevel * 1.5) * 10.5
max = (level * 3 + maglevel * 1.5) * 10.6	

return min, max
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(cid, var)
local storage = 1222
local time = 0.5
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)
return doCombat(cid, combat, var)
else
     doPlayerSendCancel(cid, "Exausted")
  end
end