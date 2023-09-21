function onSay(cid, words, param)
    if doPlayerRemoveMoney(cid, 50000) == TRUE then
            doPlayerAddItem(cid, 1685, 1)
            doPlayerSendTextMessage(cid, 19,"Comprou Teleport Temple.")
            doSendMagicEffect(getPlayerPosition(cid), 432)
			doSendMagicEffect(getPlayerPosition(cid), 432)
        else
            doPlayerSendCancel(cid, "Custa 5 Gold!!!")
            doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MAGIC_GREEN)
        end
    end