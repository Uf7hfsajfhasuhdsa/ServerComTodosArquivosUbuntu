function onSay(cid, words, param)

access = 4  -- Coloque aqui o access requirido para Ativar/Desativar o sistema

if param == "start" then
   if getPlayerAccess(cid) == access then
      setGlobalStorageValue(54321,1)
      doPlayerSendTextMessage(cid, 20, "Voce ativou o Castle Wars com suscesso!")
      return TRUE
   end
elseif param == "stop" then
   if getPlayerAccess(cid) == access then
      setGlobalStorageValue(54321,2)
      doPlayerSendTextMessage(cid, 20, "Voce desativou o Castle Wars com suscesso!")
      return TRUE
   end
end
end