function onDeath(cid)
	local tp = tps[getCreatureName(cid)]
	if tp then
		doCreateTeleport(tpId, tp.toPos, tp.pos)
		doCreatureSay(cid, "O teleport irá sumir em "..tp.time.." segundos.", TALKTYPE_ORANGE_1)
		addEvent(removeTp, tp.time*1000, tp)
	end
	return TRUE
end

local tps = { 
	["Ultimate Pain Boss"] = {pos = {x=810, y=644, z=8}, toPos = {x=611, y=990, z=8}, time = 120},
	["Kazekage Boss"] = {pos = {x=640, y=1220, z=3}, toPos = {x=638, y=1194, z=7}, time = 120},
	["Guardian One"] = {pos = {x=735, y=730, z=5}, toPos = {x=710, y=721, z=5}, time = 30},
	["Guardian Two"] = {pos = {x=699, y=730, z=5}, toPos = {x=723, y=714, z=5}, time = 30},
	["Guardian Three"] = {pos = {x=735, y=708, z=5}, toPos = {x=710, y=716, z=5}, time = 30},
	["Guardian Four"] = {pos = {x=699, y=708, z=5}, toPos = {x=709, y=719, z=5}, time = 30},
	["Guardian Five"] = {pos = {x=701, y=708, z=4}, toPos = {x=710, y=721, z=4}, time = 30},
	["Guardian Six"] = {pos = {x=699, y=730, z=4}, toPos = {x=713, y=718, z=4}, time = 30},
	["Offensive Guardian"] = {pos = {x=713, y=721, z=1}, toPos = {x=709, y=720, z=0}, time = 40},
	["Killer Bee Boss"] = {pos = {x=721, y=720, z=0}, toPos = {x=721, y=730, z=5}, time = 120},
	["Hashirama Hokage"] = {pos = {x=997, y=895, z=7}, toPos = {x=1009, y=895, z=4}, time = 120},
	["Tobirama Hokage"] = {pos = {x=997, y=895, z=6}, toPos = {x=1014, y=895, z=4}, time = 120},
	["Sarutobi Hokage"] = {pos = {x=997, y=895, z=5}, toPos = {x=1009, y=899, z=4}, time = 120},
	["Minato Hokage"] = {pos = {x=997, y=895, z=4}, toPos = {x=1014, y=899, z=4}, time = 120},
	["Tsunade Hokage"] = {pos = {x=997, y=895, z=3}, toPos = {x=1009, y=903, z=4}, time = 120},
	["Ameyuri Ringo Espadachim"] = {pos = {x=462, y=1483, z=8}, toPos = {x=467, y=1462, z=8}, time = 120},
	["Jinpachi Munashi Espadachim"] = {pos = {x=554, y=1511, z=8}, toPos = {x=464, y=1450, z=8}, time = 120},
	["Mangetsu Hozuki Espadachim"] = {pos = {x=557, y=1334, z=8}, toPos = {x=473, y=1386, z=8}, time = 120},
	["Jinin Akebino Espadachim"] = {pos = {x=391, y=1526, z=8}, toPos = {x=414, y=1523, z=8}, time = 120},
	["Kushimaru Kuriarare Espadachim"] = {pos = {x=586, y=1528, z=8}, toPos = {x=500, y=1598, z=8}, time = 120},
	["Fuguki Suikazan Espadachim"] = {pos = {x=399, y=1537, z=8}, toPos = {x=360, y=1534, z=8}, time = 120},
	["Zabuza Momochi Espadachim"] = {pos = {x=337, y=1316, z=8}, toPos = {x=480, y=1316, z=8}, time = 120},
	["Mokuton Bunshin Boss"] = {pos = {x=1343, y=1264, z=8}, toPos = {x=1353, y=1254, z=10}, time = 120},
    ["Hashirama Boss"] = {pos = {x=1353, y=1269, z=10}, toPos = {x=1318, y=1235, z=7}, time = 120},
	["Kakashi Hokage"] = {pos = {x=997, y=895, z=2}, toPos = {x=1014, y=903, z=4}, time = 120},
	["Hanzou Boss"] = {pos = {x=640, y=1371, z=4}, toPos = {x=647, y=1365, z=7}, time = 30}
}
local function removeTp(tp)
local t = getTileItemById(tp.pos, 5023).uid
return t > 0 and doRemoveItem(t) and doSendMagicEffect(tp.pos, CONST_ME_POFF)
end
function onDeath(cid)
                        local tp = tps[getCreatureName(cid)]
                        if tp then
                        doCreateTeleport(5023, tp.toPos, tp.pos)
                        doCreatureSay(cid, "O teleport irá sumir em "..tp.time.." segundos.", TALKTYPE_ORANGE_1)
                        addEvent(removeTp, tp.time*1000, tp)
                        end
                        return true
end