local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 111)

setCombatParam(combat, COMBAT_PARAM_CREATEITEM, 1499)


function onCastSpell(cid, var)

	return doCombat(cid, combat, var)

end