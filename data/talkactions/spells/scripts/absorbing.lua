local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 14) 
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition = createConditionObject(CONDITION_MANASHIELD)
setConditionParam(condition, CONDITION_PARAM_TICKS, 90000)
setCombatCondition(combat, condition)

function onCastSpell(cid, var) 
	return doCombat(cid, combat, var)
end
