function onEquip(cid, item, slot)
local nomeitem = "Nto"
local iditem = 102
local storage = 88889999
local moedanome = "Falumir Coins"
if getPlayerStorageValue(cid,storage) == 1 then
doPlayerSendCancel(cid,"Voce Tem Permissao Para Ultilizar O ".. nomeitem ..".")
else
doPlayerRemoveItem(cid,iditem,1)
local nome = getPlayerName(cid)
doPlayerSendTextMessage(cid,25,"Desculpe ".. nome .."!, Para Usar O ".. nomeitem .." Voce precisa Ter Comprado Com ".. moedanome .."!")
end
return TRUE
end