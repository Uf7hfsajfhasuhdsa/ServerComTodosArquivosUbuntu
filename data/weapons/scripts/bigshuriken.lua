local combat = createCombatObject()

setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)

setCombatParam(combat, COMBAT_PARAM_BLOCKSHIELD, 1)

setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)

setCombatParam(combat, COMBAT_PARAM_EFFECT, 0)

setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 23)

setCombatFormula(combat, COMBAT_FORMULA_SKILL, 80, 0, 80, 0)



function onUseWeapon(cid, var)
return doCombat(cid, combat, var)

end
