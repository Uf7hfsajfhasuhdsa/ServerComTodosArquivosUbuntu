function onSay(cid, words, param)
    if doPlayerRemoveMoney(cid, 10000) == TRUE then
            doPlayerAddItem(cid, 1999, 1)
            doPlayerSendTextMessage(cid, 19,"Comprou blue capsule.")
            doSendMagicEffect(getPlayerPosition(cid), 432)
			  doSendMagicEffect(getPlayerPosition(cid), 432)
        else
            doPlayerSendCancel(cid, "Custa 1 Gold!!!")
            doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MAGIC_GREEN)
        end
    end