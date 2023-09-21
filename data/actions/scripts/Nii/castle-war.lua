local storage = 1755
local emGuerra = 1756

function onUse(cid, item, frompos, item2, topos) 
   if getPlayerGuildId(cid) == nil or getPlayerGuildId(cid) <= 0 or getPlayerGuildId(cid) == false then
      return doPlayerSendCancel(cid,"Voce precisa de uma guild para dominar o castelo!")
   end
   if getGlobalStorageValue(emGuerra) <= 0 then
      return doPlayerSendCancel(cid,"O Castelo nao está em guerra!")
   end   
   
   if getPlayerGuildId(cid) == getGlobalStorageValue(storage) then
      return doPlayerSendCancel(cid,"Sua guild ja está dominando o castelo!")
   end
   
   setGlobalStorageValue(storage,getPlayerGuildId(cid))
   doBroadcastMessage("A Guild ".. getPlayerGuildName(cid) .." dominou o castelo!",22)        
   return true
end