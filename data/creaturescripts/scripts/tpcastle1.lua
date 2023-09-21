function onDeath(cid)
	local tp = tps[getCreatureName(cid)]
	if tp then
		doCreateTeleport(tpId, tp.toPos, tp.pos)
		doCreatureSay(cid, "O teleport irá sumir em "..tp.time.." minutos.", TALKTYPE_ORANGE_1)
		addEvent(removeTp, tp.time*1000, tp)
	end
	return TRUE
end

local tps = {
	["Master Guardian One"] = {pos = {x=1605, y=1310, z=5}, toPos = {x=1626, y=1336, z=6}, time = 10},
	["Master Guardian Two"] = {pos = {x=1606, y=1311, z=4}, toPos = {x=1626, y=1336, z=6}, time = 10},
	["Master Guardian Three"] = {pos = {x=1606, y=1311, z=3}, toPos = {x=1626, y=1336, z=6}, time = 10},
}
local function removeTp(tp)
local t = getTileItemById(tp.pos, 5023).uid
return t > 0 and doRemoveItem(t) and doSendMagicEffect(tp.pos, CONST_ME_POFF)
end
function onDeath(cid)
                        local tp = tps[getCreatureName(cid)]
                        if tp then
                        doCreateTeleport(5023, tp.toPos, tp.pos)
                        doCreatureSay(cid, "O teleport irá sumir em "..tp.time.." minutos.", TALKTYPE_ORANGE_1)
                        addEvent(removeTp, tp.time*1000, tp)
                        end
                        return true
end