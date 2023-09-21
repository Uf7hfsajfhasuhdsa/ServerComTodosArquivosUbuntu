local config = {
itemid = 7859, -- ID Do Item
many = 1, -- Quantidade
pos = {x=694, y=634, z=7}, -- Posição do item
tepos = {x=692, y=628, z=7} -- Para onde vai ao teleportar
}
function onUse(cid, item, frompos, item2, topos)
if getTileItemById(config.pos, config.itemid) and doRemoveItem(getTileItemById(config.pos, config.itemid).uid, config.many) then
doTeleportThing(cid, config.tepos)
doPlayerAddItem(cid, 7859, 1)
else
doPlayerSendTextMessage(cid, 20, "Não trouxe o anel da akatsuki contigo? sem chances de entrar aqui")
end
return true
end