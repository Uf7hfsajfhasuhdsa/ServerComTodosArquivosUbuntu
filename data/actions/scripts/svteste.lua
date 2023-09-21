local t = {
storage = 678760,  -- storage, so mude se tiver usando pra outra coisa.
tempo = 1, -- Tempo em horas.
}


function onUse(cid, item, fromPos, itemEx, toPos)
    if getPlayerStorageValue(cid, t.storage) < os.time() then  
	   doPlayerAddExp(cid, 60000)	   
	   doPlayerAddItem(cid, 7437, 1)
	   doPlayerAddItem(cid, 7463, 1)
	   doPlayerAddItem(cid, 8851, 1)
	   doPlayerAddItem(cid, 2525, 1)
	   doPlayerAddItem(cid, 7857, 1)
	   doPlayerAddItem(cid, 7374, 1)
	   doPlayerAddItem(cid, 2160, 300)
	   doPlayerAddItem(cid, 2145, 300)
	   doSendMagicEffect(getPlayerPosition(cid), 5)
       setPlayerStorageValue(cid, t.storage, os.time() + t.tempo * 60 * 60)
    else
       doSendMagicEffect(getPlayerPosition(cid), 3)
	   doPlayerPopupFYI(cid, "[NTO FUN CLOSED BETA] Voce precisa aguardar ".. getPlayerStorageValue(cid, t.storage) - os.time() .." segundos para pegar a recompensa novamente.")
    end
    return true
end