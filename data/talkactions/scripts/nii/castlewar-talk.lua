local storage = 1755
local emGuerra = 1756
local firstpos = {x = 742,y = 1207,z = 7}
local secondpos = {x = 873,y = 1293,z = 8}
function onSay(cid, words, param) 
   if param == "open" then
         setGlobalStorageValue(emGuerra,1)
         doBroadcastMessage("A Guerra pelo castelo começou!",22)   
   return true
   elseif param == "close" then
          for _, pid in ipairs(getPlayersOnline()) do
              if isInArea(getCreaturePosition(pid),firstpos,secondpos)then
                 if getGlobalStorageValue(storage) ~= getPlayerGuildId(pid) then
              doTeleportThing(pid,getTownTemplePosition(getPlayerTown(pid)))
              doPlayerSendTextMessage(pid, MESSAGE_STATUS_CONSOLE_BLUE,"Desculpe mas sua guild não venceu essa guerra!")
                 else
                 doPlayerSendTextMessage(pid,MESSAGE_STATUS_CONSOLE_BLUE,"Sua guild conseguio dominar o castelo. Parabens por ajuda-la!")
                 end
              end
          end
          setGlobalStorageValue(emGuerra,0)         
          doBroadcastMessage("A Guerra pelo castelo terminou!",22)
   else 
        return doPlayerSendCancel(cid,"Digite !war open[inicia a guerra] ou !war close[terminaa guerra]")
   end
return true
end 