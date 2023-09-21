local text = "DEBUFF!" -- msg

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 14)

local combatX = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(combatX, CONDITION_PARAM_TICKS, 10000)
setConditionParam(combatX, CONDITION_PARAM_SKILL_SHIELD, -20)
setConditionParam(combatX, CONDITION_PARAM_SKILL_DISTANCE, -20)
setConditionParam(combatX, CONDITION_PARAM_SKILL_SWORD, -20)
setConditionParam(combatX, CONDITION_PARAM_SKILL_FIST, -20)
setConditionParam(combatX, CONDITION_PARAM_SKILL_AXE, -20)
setConditionParam(combatX, CONDITION_PARAM_STAT_MAGICLEVEL, -20)
setCombatCondition(combat, combatX)

function onCastSpell(cid, var)
local waittime = 15.0 -- Tempo de exhaustion
local storage = 45680 -- não mecha

if exhaustion.check(cid, storage) then
    doPlayerSendCancel(cid, "Aguarde "..(exhaustion.get(cid, storage)).." segundos(s) para usar novamente.")
    return false
end
exhaustion.set(cid, storage, waittime)
local position1 = {x=getThingPosition(getCreatureTarget(cid)).x, y=getThingPosition(getCreatureTarget(cid)).y, z=getThingPosition(getCreatureTarget(cid)).z}
            doSendAnimatedText(position1, text, 14)
    return doCombat(cid, combat, var)
end