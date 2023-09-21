local combat = createCombatObject() 
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 212)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -140, -150, -160, -170)
function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end
