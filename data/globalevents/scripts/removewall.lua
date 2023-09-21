local config = {
timeToCreate = 60, -- minutes
walls = {{ x = 989, y = 854, z = 7, stackpos = STACKPOS_FIRST_ITEM_ABOVE_GROUNDTILE }, 
		 { x = 989, y = 854, z = 7, stackpos = STACKPOS_FIRST_ITEM_ABOVE_GROUNDTILE },
}

function removeWalls(item, position)
doBroadcastMessage("[WarCASTLE] Aberto! CORRAM! Fechara em 1hora.") -- mensaguem quando a parede for removida
addEvent(createWalls, config.timeToCreate * 60000) -- minutos que a parede sera criada -- em segundos
for i = 1, table.maxn(config.walls) do
doRemoveItem(getThingfromPos(config.walls[i]).uid)
doSendMagicEffect(config.walls[i], CONST_ME_MAGIC_RED) -- efeito quando a parede for removida
end
return TRUE
end

function createWalls(item, position)
for i = 1,table.maxn(config.walls) do
doCreateItem(1546, 1, config.walls[i]) -- id da parede
doBroadcastMessage("[WarCASTLE] foi fechado.") --mensaguem quando a parede for colocada novamente no lugar
doSendMagicEffect(config.walls[i], CONST_ME_MAGIC_GREEN) -- efeito quando a parede for criada
end
return TRUE
end

function onTime()
doBroadcastMessage("[WarCASTLE] vai abrir em [2] minutos.") -- Mensaguem antes da parede ser removida
addEvent(removeWalls, 120000)-- minutos que a mensaguem vai apareser para a galera antes da parede ser removida -- em segundos
return TRUE
end