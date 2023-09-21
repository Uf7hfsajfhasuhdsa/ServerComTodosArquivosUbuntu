local vida = 100000
local tempo = 5000
local cooldown = 5
local storage = 34214
local sex = getPlayerSex(cid)


local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)


local condition = createConditionObject(CONDITION_REGENERATION)
setConditionParam(condition, CONDITION_PARAM_TICKS, tempo)
setConditionParam(condition, CONDITION_PARAM_HEALTHGAIN, vida)
setConditionParam(condition, CONDITION_PARAM_HEALTHTICKS, 1)
setConditionParam(condition, CONDITION_PARAM_BUFF, TRUE)
setCombatCondition(combat, condition)


local condition2 = createConditionObject(CONDITION_ATTRIBUTES) 
setConditionParam(condition2, CONDITION_PARAM_STAT_MAXHEALTH, vida) 
setConditionParam(condition2, CONDITION_PARAM_TICKS, tempo) 
setConditionParam(condition2, CONDITION_PARAM_BUFF, TRUE)
setCombatCondition(combat, condition, condition2)


function onCastSpell(cid, var)
local eff = 38 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+1, y=getCreaturePosition(cid).y+1, z=getCreaturePosition(cid).z}
doSendMagicEffect(position, eff)

if os.time() - getPlayerStorageValue(cid, storage) >= cooldown then
doPlayerSetStorageValue(cid, storage, os.time())
else
doPlayerSendTextMessage(cid, 20, "Your spell is in cooldown, you must wait "..(cooldown - (os.time() - getPlayerStorageValue(cid, storage))).." seconds.")
return false
end


if sex == 0 then
doSendAnimatedText(getPlayerPosition(cid), "Immortal!", TEXTCOLOR_WHITE)
doPlayerSendTextMessage(cid,20,"You are immortal.")
else 
doSendAnimatedText(getPlayerPosition(cid), "Immortal!", TEXTCOLOR_WHITE)
doPlayerSendTextMessage(cid,20,"You are immortal.")
end
return doCombat(cid, combat, var), doAddCondition(cid, condition2) and doCreatureAddHealth(cid, getCreatureMaxHealth(cid)) 
end