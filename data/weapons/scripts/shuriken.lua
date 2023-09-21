local combat = createCombatObject()

setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)

setCombatParam(combat, COMBAT_PARAM_BLOCKSHIELD, 1)

setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)

setCombatParam(combat, COMBAT_PARAM_EFFECT, 0)

setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 18)

setCombatFormula(combat, COMBAT_FORMULA_SKILL, 75, 0, 75, 0)


function onUseWeapon(cid, var)
return doCombat(cid, combat, var)

end
