local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 183)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)

local condition = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition, CONDITION_PARAM_TICKS, 10000)
setConditionParam(condition, CONDITION_PARAM_SKILL_MELEE, 10)
setConditionParam(condition, CONDITION_PARAM_SKILL_DISTANCE, 10)
setConditionParam(condition, CONDITION_PARAM_SKILL_SHIELD, 10)
setConditionParam(condition, CONDITION_PARAM_BUFF, true)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
