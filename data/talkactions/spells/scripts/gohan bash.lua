local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 233)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 15)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -6.0, 0, -7.0, 0)


function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end