function onStepIn(cid, item, pos)

	if isPlayer(cid) == 1 then
		if item.actionid == 5550 then
			doPlayerSendTextMessage(cid, 22, "Em Construçao.")
			return 1
		end
		return 1
	end
    return 1
end