local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 117)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition, CONDITION_PARAM_TICKS, 1000000)
setConditionParam(condition, CONDITION_PARAM_SKILL_CLUB, 50)
setConditionParam(condition, CONDITION_PARAM_SKILL_SWORD, 50)
setConditionParam(condition, CONDITION_PARAM_SKILL_AXE, 50)
setConditionParam(condition, CONDITION_PARAM_SKILL_DISTANCE, 50)
setConditionParam(condition, CONDITION_PARAM_SKILL_MAGIC, 50)
setConditionParam(condition, CONDITION_PARAM_BUFF, TRUE)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
