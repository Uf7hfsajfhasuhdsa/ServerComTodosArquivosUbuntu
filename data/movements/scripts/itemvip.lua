local storageVIp = 13700 -- mude a storage vip, conforme a storage do sistema vip do seu otserv!

function onEquip(cid, item, slot)

if getPlayerStorageValue(cid, storageVIp) <= 0 then
   doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "Apenas players vip podem usar essa arma!")
   return FALSE
end

return TRUE
end