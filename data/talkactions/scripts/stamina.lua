function onSay(cid, words, param)
        if doPlayerRemoveMoney(cid, 500000000) == TRUE then
doPlayerAddItem(cid, 2138, 1)
                        doSendMagicEffect(getPlayerPosition(cid), 1)
doPlayerSay(cid, "O Comando !stamina foi retirado",1) 
else
            doPlayerSendCancel(cid, "O Comando !stamina foi retirado")
                end
return TRUE
                end
