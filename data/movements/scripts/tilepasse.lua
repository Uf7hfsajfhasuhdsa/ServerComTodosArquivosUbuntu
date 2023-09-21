function onStepIn(cid, item, pos, fromPos)
storage = 10000 -- aqui a storage que deseja

if getPlayerStorageValue(cid, storage) < 1 then
doTeleportThing(cid, fromPos)
doSendMagicEffect(fromPos, CONST_ME_POFF)
doPlayerSendCancel(cid, 'Pague o Passe de Batalha, para entrar nessa area!.') -- aqui a mensagem de erro se o player não tiver a storage
end

doSendMagicEffect(pos, CONST_ME_MAGIC_BLUE)
return true
end