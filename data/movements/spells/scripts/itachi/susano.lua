local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 117)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)

local condition = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition, CONDITION_PARAM_TICKS, 50000)
setConditionParam(condition, CONDITION_PARAM_SKILL_MELEE, 25)
setConditionParam(condition, CONDITION_PARAM_SKILL_SWORD, 30)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
