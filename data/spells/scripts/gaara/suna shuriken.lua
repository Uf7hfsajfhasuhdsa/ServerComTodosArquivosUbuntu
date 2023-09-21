local combat = createCombatObject() 
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 19)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 52)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -15, -16, -17, -18)
function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end