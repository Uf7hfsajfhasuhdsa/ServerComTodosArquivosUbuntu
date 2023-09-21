local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 224)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -11, -12, -13, -14)
function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
