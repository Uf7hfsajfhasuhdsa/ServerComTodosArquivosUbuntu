local days = {
["Friday"] = {
["01:10"] = {nome = "Evento Teste", pos = {x=998, y=898, z=7}, monster = {"itachi uchiha", "kisame hoshigake"}},
},
["Wednesday"] = {
["00:00"] = {nome = "Demon Invasões", pos = {x=185, y=54, z=7}, monster = {"40 Demon", "50 Fire Devil", "4 Orshabaal"}},
["12:48"] = {nome = "Dragon Invasões", pos = {x=185, y=57, z=7},monster = {"100 Dragon"}}
}
}
function onThink(interval, lastExecution)
function getDayName()
local days = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}
return days[os.date("*t")["wday"]]
end
hours = tostring(os.date("%X")):sub(1, 5)	  
	tb = days[getDayName()][hours]
	if tb then
			doBroadcastMessage(hours .. " - " .. tb.nome .. " Iníciou.")
			for _,x in pairs(tb.monster) do
							doSummonCreature(x:match("%s(.+)"), tb.pos)
					end
			end
	end
	return true
end