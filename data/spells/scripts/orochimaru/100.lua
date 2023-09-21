local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 7)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -21, -22, -23, -24)
function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end