function onUse(cid, item)
   if getPlayerStorageValue(cid, 10000) < 1 then
      setPlayerStorageValue(cid, 10000, 1)
      doRemoveItem(item.uid, 1)
	  doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Parabens, agora voce tem o Passe de Batalha Premium!")
   end
   return true
end