function onStepIn(cid, item, position, lastPosition, fromPosition, toPosition, actor)
doAddCondition(cid, condition)
doTransformItem(item.uid, 2154)
return doAreaCombatHealth(0, COMBAT_PHYSICALDAMAGE, getThingPosition(cid), 0, -20000, -20000, 227)
end