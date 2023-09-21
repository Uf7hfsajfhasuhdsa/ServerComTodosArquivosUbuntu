local text = "DEBUFF!" -- msg

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 11)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 5)

local condition = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition, CONDITION_PARAM_TICKS, 10000)
setConditionParam(condition, CONDITION_PARAM_SUBID, 13)
setConditionParam(condition, CONDITION_PARAM_SKILL_SHIELd, -20)
setConditionParam(condition, CONDITION_PARAM_SKILL_DISTANCE, -20)
setConditionParam(condition, CONDITION_PARAM_SKILL_MELEE, -20)
setConditionParam(condition, CONDITION_PARAM_STAT_MAGICLEVEL, -20)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
local waittime = 2.0 -- Tempo de exhaustion
local storage = 4563 -- não mecha

if exhaustion.check(cid, storage) then
    doPlayerSendCancel(cid, "Aguarde "..(exhaustion.get(cid, storage)).." segundos(s) para usar novamente.")
    return false
end
exhaustion.set(cid, storage, waittime)
local position1 = {x=getThingPosition(getCreatureTarget(cid)).x, y=getThingPosition(getCreatureTarget(cid)).y, z=getThingPosition(getCreatureTarget(cid)).z}
            doSendAnimatedText(position1, text, 190)
    return doCombat(cid, combat, var)
end