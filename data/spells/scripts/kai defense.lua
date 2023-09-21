local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 12)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_MANASHIELD)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end