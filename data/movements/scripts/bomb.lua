function onStepIn(cid, item, position, lastPosition, fromPosition, toPosition, actor)
doAddCondition(cid, condition)
doTransformItem(item.uid, 2154)
return doAreaCombatHealth(0, COMBAT_PHYSICALDAMAGE, getThingPosition(cid), 0, -5000, -5000, 227)
end