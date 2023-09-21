function onTime(interval, lastExecution, thinkInterval)
 
local eventName = "War Castle"
local posCreate = {x=1019, y=846, z=5} -- Onde Sera Criado.
local posTeleport = {x=1554, y=1306, z=7} -- Para Onde ira leva

local posCreate2 = {x=1549, y=1306, z=7} -- Onde Sera Criado.
local posTeleport2 = {x=1547, y=1306, z=7} -- Para Onde ira leva

local posCreate3 = {x=1554, y=1310, z=7} -- Onde Sera Criado.
local posTeleport3 = {x=1554, y=1312, z=7} -- Para Onde ira leva

local posCreate4 = {x=1554, y=1310, z=6} -- Onde Sera Criado.
local posTeleport4 = {x=1554, y=1312, z=6} -- Para Onde ira leva

local posCreate5 = {x=1554, y=1302, z=6} -- Onde Sera Criado.
local posTeleport5 = {x=1554, y=1300, z=6} -- Para Onde ira leva

local time = 60 -- Tempo que levara para o Portal fecha
local tpId = 1387 -- ID Do Portal
 
      function removeTp()
        local tp = getTileItemById(posCreate, tpId)
        local tp2 = getTileItemById(posCreate2, tpId)
        local tp3 = getTileItemById(posCreate3, tpId)
        local tp4 = getTileItemById(posCreate4, tpId)
        local tp5 = getTileItemById(posCreate5, tpId)
         doRemoveItem(tp.uid, 1)
          doSendMagicEffect(posCreate, 2)
          doSendMagicEffect(posCreate2, 2)
          doSendMagicEffect(posCreate3, 2)
          doSendMagicEffect(posCreate4, 2)
          doSendMagicEffect(posCreate5, 2)
         doBroadcastMessage("O Teleport para o "..eventName.." se fechou.")
       return true
      end
 
 doCreateTeleport(tpId, posTeleport, posCreate)
 doCreateTeleport(tpId, posTeleport2, posCreate2)
 doCreateTeleport(tpId, posTeleport3, posCreate3)
 doCreateTeleport(tpId, posTeleport4, posCreate4)
 doCreateTeleport(tpId, posTeleport5, posCreate5)
  doBroadcastMessage("O Teleport Para o "..eventName.." foi aberto, e vai se fechar em "..time.." Minuto(s).")
   addEvent(removeTp, time*60000)
   addEvent(removeTp2, time*60000)
   addEvent(removeTp3, time*60000)
   addEvent(removeTp4, time*60000)
   addEvent(removeTp5, time*60000)
 
 return true
end