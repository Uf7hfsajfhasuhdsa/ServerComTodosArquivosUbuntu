Quote

--- skull remover by kakilo - quinto script



function onSay(cid, words, param, channel)



if (getCreatureSkullType(cid) == SKULL_BLACK) then

if doPlayerRemoveMoney(cid, 1000000) then

doCreatureSetSkullType(cid, SKULL_NONE)

doPlayerSendTextMessage(cid, 22, "Your soul was been cleaned.")

else

doPlayerSendTextMessage(cid, 22, "You need 200.000 gold pieces to remove the black skull")

end

end



if (getCreatureSkullType(cid) == SKULL_RED) then

if doPlayerRemoveMoney(cid, 500000) then

doCreatureSetSkullType(cid, SKULL_NONE)

doPlayerSendTextMessage(cid, 22, "Your soul was been cleaned.")

else

doPlayerSendTextMessage(cid, 22, "You need 100.000 gold pieces to remove the red skull")

end

end



if (getCreatureSkullType(cid) == SKULL_WHITE) then

if doPlayerRemoveMoney(cid, 250000) then

doCreatureSetSkullType(cid, SKULL_NONE)

doPlayerSendTextMessage(cid, 22, "Your soul was been cleaned.")

else

doPlayerSendTextMessage(cid, 22, "You need 10.000 gold pieces to remove the white skull")

end

end



if (getCreatureSkullType(cid) == SKULL_NONE) then

doPlayerSendTextMessage(cid, 22, "Your soul clean like water!")

end



return TRUE

end