local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 83)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 46)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -15.9, 0, -15.9, 0)


function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end