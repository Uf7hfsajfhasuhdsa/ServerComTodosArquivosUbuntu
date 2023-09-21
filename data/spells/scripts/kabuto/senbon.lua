local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 8)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -14, -15, -16, -17)
function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end