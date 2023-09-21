local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 0)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_THROWINGKNIFE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -5.5, -0, -6.0, 0)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
