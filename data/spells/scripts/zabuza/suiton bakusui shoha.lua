local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 248)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -85, -90, -95, -100)
function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end