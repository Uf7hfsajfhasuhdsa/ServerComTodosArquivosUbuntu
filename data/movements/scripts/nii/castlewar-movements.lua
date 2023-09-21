local storage = 1755
local emGuerra = 1756
function onStepIn(cid, item, position, lastPosition, fromPosition, toPosition, actor)
   if getGlobalStorageValue(storage) == getPlayerGuildId(cid) then
      return true
   end
   
   if getGlobalStorageValue(emGuerra) == 1 then
      return true
   else
       doTeleportThing(cid,fromPosition,false)
       return doPlayerSendCancel(cid,"Por favor espere a batalha começar!")       
   end

return true
end