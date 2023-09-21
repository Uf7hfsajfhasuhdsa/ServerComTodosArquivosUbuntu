local config = { 
storage = 3482101,
cooldown = 30,  --- tempo entre um uso e outro
duration = 5, --- duração
effect1 = 119 -- efeito que sai ao falar a spell
} 



function onCastSpell(cid, var)
  
  if os.time() - getPlayerStorageValue(cid, 55695) >= config.cooldown then
setPlayerStorageValue(cid, 55695, os.time())
doSendMagicEffect(getCreaturePosition(cid), config.effect1)
setPlayerStorageValue(cid, config.storage, os.time() + config.duration)
doCreatureSay(cid,"UNTOUCHABLE!!!", 19)
doPlayerSendTextMessage(cid, 27, "You have now ".. config.duration .." seconds of invulnerability.")
else
doPlayerSendCancel(cid, "Your skill is in cooldown, you must wait "..(config.cooldown - (os.time() - getPlayerStorageValue(cid, 55695))).." seconds.")
return false
end  
    return true
end