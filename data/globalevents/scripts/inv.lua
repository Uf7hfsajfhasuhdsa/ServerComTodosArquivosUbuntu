local i = {
["15:02"] = {nome = "Kyuubi está invadindo Konohagakure, defenda sua vila!", pos = {x=1022, y=921, z=7}, monster = {"1 Kyuubi"}},
}

local timenopvp = 30 -- em minutos

function onThink(interval, lastExecution)
	hours = tostring(os.date("%X")):sub(1, 5)
	tb = i[hours]
	if tb then
		doBroadcastMessage(tb.nome .. " iníciou.")
		for _,x in pairs(tb.monster) do
			for s = 1, tonumber(x:match("%d+")) do
				doSummonCreature(x:match("%s(.+)"), tb.pos)
			end
		end
		setWorldType(WORLD_TYPE_NO_PVP)
		addEvent(setWorldType, 1000 * 60 * timenopvp, WORLD_TYPE_PVP)
		setGlobalStorageValue(95474, day)
	end
	return true
end