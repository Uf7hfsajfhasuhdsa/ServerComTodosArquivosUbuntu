function onUse(cid, item, fromPosition, itemEx, toPosition)

	local pos = {x = 1025, y = 827, z = 7}
	local hours = 0
	local storage = 43534

	if getPlayerStorageValue(cid, storage) - os.time() > 0 then
		doPlayerSendTextMessage(cid, 27, "You need wait.")
		return true
	end

	if not getTilePzInfo(fromPosition) then
		doPlayerSendTextMessage(cid, 27, "You need to be in protection zone.")
		return true
	end

	doTeleportThing(cid, pos)
	setPlayerStorageValue(cid, storage, os.time()+hours*60*1000)

	return true
end