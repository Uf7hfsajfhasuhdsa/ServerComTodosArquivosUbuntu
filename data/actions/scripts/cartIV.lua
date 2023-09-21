function onUse(cid, item, fromPosition, itemEx, toPosition)
if (getPlayerStorageValue(cid, 120706072014) == EMPTY_STORAGE) then
doPlayerSendTextMessage(cid,22,"Voce ganhou Carta Part IV Hanzou Helmet e um pouco de experiencia.") 
doPlayerAddExperience(cid,80000) -- quantidade de experiencia
doPlayerAddItem(cid,11500,1) -- 9778 > id do item, 1 > quantidade
doPlayerAddItem(cid,2160,10) -- 9778 > id do item, 1 > quantidade
doTeleportThing(cid, {x=1082, y=737, z=7}) -- posição para teleportar
setPlayerStorageValue(cid, 120706072014, 1)
doSendMagicEffect(getCreaturePosition(cid), CONST_ME_HOLYDAMAGE)
else
doPlayerSendTextMessage(cid,22,"O bau esta vazio.")
end
return true
end