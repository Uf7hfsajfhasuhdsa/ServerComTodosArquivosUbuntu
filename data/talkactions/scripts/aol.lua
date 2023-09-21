function onSay(cid, words, param)
        if doPlayerRemoveMoney(cid, 500) == TRUE then
doPlayerAddItem(cid, 2138, 1)
                        doSendMagicEffect(getPlayerPosition(cid), 1)
doCreatureSay(cid, "Jashin Protector!" ,19)
doSendMagicEffect(getPlayerPosition(cid), 13)
else
            doPlayerSendCancel(cid, "You need 5 dolares to buy jashin amulet!")
                end
return TRUE
                end

