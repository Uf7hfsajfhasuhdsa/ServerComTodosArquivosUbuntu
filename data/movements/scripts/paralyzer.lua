local condition = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 2 * 1000)
setConditionFormula(condition, -0.9, 0, -1, 0)

function onStepIn(cid, item, position, lastPosition, fromPosition, toPosition, actor)
doAddCondition(cid, condition)
doTransformItem(item.uid, 2156)
return doAreaCombatHealth(0, COMBAT_PHYSICALDAMAGE, getThingPosition(cid), 0, 0, 0, 10)
end