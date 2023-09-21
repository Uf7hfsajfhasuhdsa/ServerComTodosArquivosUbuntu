local tabela = {
horas = 24, -- Horas sem fazer a quest. 24 hhoras = 1 dia!
storage = 234235, -- Nunca o mesmo usado em outro script.
item = 2152, -- Id do item que vai ganhar.
quantidade = 30 -- Quantidade que vai ganhar do item.
}

function onUse(cid, item, fromPosition, itemEx, toPosition)
if getPlayerStorageValue(cid, tabela.storage) <= os.time() then
 doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Voce acabou de resgatar seu premio diario: "..getItemNameById(tabela.item).." ")
 doPlayerAddItem(cid, tabela.item, tabela.quantidade)
 setPlayerStorageValue(cid, tabela.storage, tabela.horas*60*60+os.time())
else
 doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "Espere passar as 24 horas para resgatar novamente.")
end  
 return true
end