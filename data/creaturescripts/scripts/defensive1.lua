local config = { 
storage = 3482103,
effect1 = 366, --- efeito ao ser atacado estando invulnerável
percent = 100 -- porcentagem de esquivar
} 


function onStatsChange(cid, attacker, type, combat, value)
if value >= 1 and (type == STATSCHANGE_HEALTHLOSS or (getCreatureCondition(cid, CONDITION_MANASHIELD) and type == STATSCHANGE_MANALOSS))  then
if getPlayerStorageValue(cid,config.storage) > 0 and isCreature(attacker) and math.random(1,100) <= config.percent then
doSendMagicEffect(getCreaturePosition(cid), config.effect1)
doSendAnimatedText(getCreaturePosition(cid), "kawarimi no jutsu defensive", 215)
setPlayerStorageValue(cid, config.storage, getPlayerStorageValue(cid, config.storage) - 1)
return false
end
end
return true
end