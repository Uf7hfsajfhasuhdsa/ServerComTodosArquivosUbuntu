function table.insert(table, element)
    table[#table + 1] = element
end
local ips = {}
function onStepIn(cid, item, position, fromPosition)
	if not isPlayer(cid) then
		return false
	end
	local ip = getPlayerIp(pid)
	if table.find(ips, ip) then
		doTeleportThing(cid, fromPosition)
		return false
	else
		table.insert(ips, ip)
		return true
	end
end