function onTime(interval, lastExecution, thinkInterval)
 
local eventName = "War Castle"
local posCreate = {x=988, y=853, z=7} -- Onde Sera Criado.
local posTeleport = {x=1554, y=1306, z=7} -- Para Onde ira leva
local time = 1 -- Tempo que levara para o Portal fecha
local tpId = 1387 -- ID Do Portal
 
      function removeTp()
        local tp = getTileItemById(posCreate, tpId)
         doRemoveItem(tp.uid, 1)
          doSendMagicEffect(posCreate, 2)
         doBroadcastMessage("O Teleport para o "..eventName.." se fechou.")
       return true
      end
 
 doCreateTeleport(tpId, posTeleport, posCreate)
  doBroadcastMessage("O Teleport Para o "..eventName.." foi aberto, e vai se fechar em "..time.." Minuto(s).")
   addEvent(removeTp, time*60000)
 
 return true
end