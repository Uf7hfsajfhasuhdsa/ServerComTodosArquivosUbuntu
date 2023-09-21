local timetoss = 5 --minutes


function onTime()
return prepareShutdown(math.abs(math.ceil(timetoss)))
end


function prepareShutdown(minutes)
if(minutes <= 0) then
addEvent(close, 1*1000)
addEvent(global, 5*1000)
return false
end


if(minutes == 1) then
doBroadcastMessage("Servidor sera reiniciado em " .. minutes .. " minutos, Porfavor Relogue!")
elseif(minutes <= 3) then
doBroadcastMessage("Servidor sera reiniciado em " .. minutes .. " minutos, Porfavor Relogue!.")
else
doBroadcastMessage("Servidor sera reiniciado em " .. minutes .. " minutos.")
end


shutdownEvent = addEvent(prepareShutdown, 60000, minutes - 1)
return true
end




function close()
doSetGameState(GAMESTATE_CLOSED)
end


function global()
doSetGameState(GAMESTATE_SHUTDOWN)
end