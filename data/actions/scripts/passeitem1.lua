function onUse(cid, item)
   if getPlayerStorageValue(cid, 10000) < 1 then
      setPlayerStorageValue(cid, 10000, 1)
      doRemoveItem(item.uid, 1)
   end
   return true
end