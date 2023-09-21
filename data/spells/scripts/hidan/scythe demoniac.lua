local config = { 
storage = 3482102,
cooldown = 1,  --- tempo entre um uso e outro
duration = 3, --- duração
effect1 = 11 -- efeito que sai ao falar a spell
} 



function onCastSpell(cid, var)
  
  if os.time() - getPlayerStorageValue(cid, 55696) >= config.cooldown then
setPlayerStorageValue(cid, 55696, os.time())


local position = {x=getCreaturePosition(cid).x+1, y=getCreaturePosition(cid).y+1, z=getCreaturePosition(cid).z}
doSendMagicEffect(position, 11)

setPlayerStorageValue(cid, config.storage, os.time() + config.duration)
doCreatureSay(cid,"UNTOUCHABLE!!!", 19)
doPlayerSendTextMessage(cid, 27, "You have now ".. config.duration .." seconds of invulnerability.")
else
doPlayerSendCancel(cid, "Your skill is in cooldown, you must wait "..(config.cooldown - (os.time() - getPlayerStorageValue(cid, 55696))).." seconds.")
return false
end  
    return true
end