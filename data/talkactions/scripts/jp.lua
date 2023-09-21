function onSay(cid, words, param)
    if doPlayerRemoveMoney(cid, 100) == TRUE then
            doPlayerAddItem(cid, 2120, 1)
            doPlayerSendTextMessage(cid, 19,"Comprou jet pack.")
            doSendMagicEffect(getPlayerPosition(cid), 432)
			doSendMagicEffect(getPlayerPosition(cid), 432)
        else
            doPlayerSendCancel(cid, "Custa 100 coins!!!")
            doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MAGIC_GREEN)
        end
    end