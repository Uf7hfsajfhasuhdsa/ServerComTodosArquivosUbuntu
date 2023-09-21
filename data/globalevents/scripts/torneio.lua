function onTime()

if #getPlayersInArea(torneio.area) > 1 then
doBroadcastMessage("O Torneio dessa vez não teve vencedor, tente na proxima vez")
return true
end

for _, pid in ipairs(getPlayersInArea(torneio.waitArea)) do
puxar = math.random(-2, 2)
doTeleportThing(pid, {x = torneio.tournamentFight.x + puxar, y = torneio.tournamentFight.y + puxar, z = torneio.tournamentFight.z})
end

doBroadcastMessage("O torneio Iniciou!")
return true
end