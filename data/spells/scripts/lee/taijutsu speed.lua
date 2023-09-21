local combat = createCombatObject()

setCombatParam(combat, COMBAT_PARAM_EFFECT, 13)

setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)


local condition = createConditionObject(CONDITION_HASTE)

setConditionParam(condition, CONDITION_PARAM_TICKS, 35000)
setConditionFormula(condition, 3.5, -45, 3.5, -45)
setCombatCondition(combat, condition)


function onCastSpell(cid, var)
return doCombat(cid, combat, var)

end
