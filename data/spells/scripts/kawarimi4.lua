local config = { 
storage = 3482102,
cooldown = 3,  --- tempo entre um uso e outro
maxcharge = 20, --- máximo de cargas que dá pra acumular
effect1 = 29 -- efeito que sai ao falar a spell
} 




function onCastSpell(cid, var)
  
    if getPlayerStorageValue(cid, config.storage) >= 20 then
doPlayerSendCancel(cid, "You already reached the max of charges for this skill.")
return false
end
  
  if os.time() - getPlayerStorageValue(cid, 55697) >= config.cooldown then
setPlayerStorageValue(cid, 55697, os.time())
doSendMagicEffect(getCreaturePosition(cid), config.effect1)
setPlayerStorageValue(cid, config.storage, getPlayerStorageValue(cid, config.storage) + 1)
doPlayerSendTextMessage(cid, 27, "You have now ".. getPlayerStorageValue(cid, config.storage) .." charge(s).")
else
doPlayerSendCancel(cid, "Your skill is in cooldown, you must wait "..(config.cooldown - (os.time() - getPlayerStorageValue(cid, 55697))).." seconds.")
return false
end  
    return true
end