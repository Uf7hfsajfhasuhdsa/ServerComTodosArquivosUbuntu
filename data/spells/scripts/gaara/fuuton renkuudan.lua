local combat = createCombatObject() 
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 17)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -17, -18, -19, -20)
function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end