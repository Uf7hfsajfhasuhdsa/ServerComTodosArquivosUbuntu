local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 5)
function onGetFormulaValues(cid, level, maglevel)
min = -(level * 0.28 + maglevel * 1.48) * 13.0
max = -(level * 0.34 + maglevel * 2.34) * 13.0
	return min, max
end
setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
