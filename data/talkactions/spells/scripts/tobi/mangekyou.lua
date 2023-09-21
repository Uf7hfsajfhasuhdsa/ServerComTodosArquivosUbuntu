local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 110)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)

local condition = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition, CONDITION_PARAM_TICKS, 100000)
setConditionParam(condition, CONDITION_PARAM_SKILL_MELEEPERCENT, 9000)
setConditionParam(condition, CONDITION_PARAM_SKILL_SHIELDPERCENT, 9000)
setConditionParam(condition, CONDITION_PARAM_BUFF, true)
setCombatCondition(combat, condition)

local condition = createConditionObject(CONDITION_HASTE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 99000)
setConditionFormula(condition, 0.7, -56, 0.7, -56)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
