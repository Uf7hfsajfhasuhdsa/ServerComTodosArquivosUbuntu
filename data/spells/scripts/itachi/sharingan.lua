local condition = createConditionObject(CONDITION_MUTED)
setConditionParam(condition, CONDITION_PARAM_TICKS, 2900)
 
 
local chance = 80
 
 
 
 
 
 
function silence(tar, text)
    if(isCreature(tar) == true) then
        doSendAnimatedText(getCreaturePosition(tar), text, 215)
        doAddCondition(tar, condition)
    end
    return true
end
 
 
function onCastSpell(cid, var)
local waittime = 30 -- Tempo de exhaustion
local storage = 10087

if exhaustion.check(cid, storage) then
return false
end
    local position = {x=getThingPosition(getCreatureTarget(cid)).x+1, y=getThingPosition(getCreatureTarget(cid)).y, z=getThingPosition(getCreatureTarget(cid)).z}
    exhaustion.set(cid, storage, waittime)
	doSendMagicEffect(position, 290)
    local tar = getCreatureTarget(cid)
    if hasCondition(tar, CONDITION_MUTED) == true then
        return false
    else
        if isCreature(tar) == true then
if math.random(1,100) <= chance then
local text = "Genjutsu"
                    silence(tar, text)     
else
local text = "Fail"
doSendAnimatedText(getCreaturePosition(tar), text, 215)
end
        else
            if isPlayer(cid) == true then
                doPlayerSendCancel(cid, "Genjutsu can be cast only on other creatures.")
            end
            return false
        end
    end
    return true
end