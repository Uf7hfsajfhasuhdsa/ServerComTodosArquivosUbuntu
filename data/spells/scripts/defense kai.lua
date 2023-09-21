local shield = createConditionObject(CONDITION_MANASHIELD)
setConditionParam(shield, CONDITION_PARAM_TICKS, -1)
function onCastSpell(cid, var)
local waittime = 10 -- Tempo de exhaustion
local storage = 17805

if exhaustion.check(cid, storage) then
return false
end
    if getCreatureCondition(cid, CONDITION_MANASHIELD) then
        doRemoveCondition(cid, CONDITION_MANASHIELD)
    else
   exhaustion.set(cid, storage, waittime)
    end
    return true
end