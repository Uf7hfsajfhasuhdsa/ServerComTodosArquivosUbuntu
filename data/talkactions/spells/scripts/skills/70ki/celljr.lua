local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 0)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 20)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -5.5, -0, -6.0, 0)

function onCastSpell(cid, var)
	doCombat(cid, combat, var)
end
