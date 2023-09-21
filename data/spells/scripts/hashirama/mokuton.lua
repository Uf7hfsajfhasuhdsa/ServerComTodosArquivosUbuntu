local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 28)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -31, -32, -33, -34)
function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end

