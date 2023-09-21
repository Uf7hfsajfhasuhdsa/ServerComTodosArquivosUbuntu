local config = { 
storage = 3482103,
cooldown = 6,  --- tempo entre um uso e outro
maxcharge = 1, --- máximo de cargas que dá pra acumular
effect1 = 12 -- efeito que sai ao falar a spell
} 




function onCastSpell(cid, var)
local waittime = 15 -- Tempo de exhaustion
local storage1 = 155697

if exhaustion.check(cid, storage1) then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Aguarde " .. exhaustion.get(cid, storage1) .. " segundos para usar a spell novamente.")
return false
end
  
    if getPlayerStorageValue(cid, config.storage) >= 3 then
doPlayerSendCancel(cid, "Kawarimi no Jutsu Defensive ja está Ativo !")
return false
end
  
  if os.time() - getPlayerStorageValue(cid, 55697) >= config.cooldown then
setPlayerStorageValue(cid, 55697, os.time())
doSendMagicEffect(getCreaturePosition(cid), config.effect1)
setPlayerStorageValue(cid, config.storage, getPlayerStorageValue(cid, config.storage) + 1)
else
doPlayerSendCancel(cid, "Your skill is in cooldown, you must wait "..(config.cooldown - (os.time() - getPlayerStorageValue(cid, 55697))).." seconds.")
exhaustion.set(cid, storage1, waittime)
return false
end  
    return true
end