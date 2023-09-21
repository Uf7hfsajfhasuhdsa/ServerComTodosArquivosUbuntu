local table = {
[1] = 2930, --[vocation] = id do corpse
[56] = 2813,
[57] = 5978,
[58] = 5978,
[59] = 5978,
[60] = 2814,

[2] = 2806,
[51] = 2806,
[52] = 2806,
[53] = 5978,
[54] = 2897,
[55] = 2807,

[3] = 2851,
[61] = 2851,
[62] = 2851,
[63] = 2851,
[64] = 2851,
[65] = 2851,

[4] = 2816,
[66] = 2816,
[67] = 2817,
[68] = 2818,
[69] = 2819,
[70] = 2819,

[5] = 2820,
[71] = 2820,
[72] = 2820,
[73] = 2820,
[74] = 2820,
[85] = 2820,

[6] = 2898,
[76] = 2898,
[77] = 2898,
[78] = 2898,
[79] = 2898,
[80] = 2898,

[7] = 2852,
[81] = 2852,
[82] = 2852,
[83] = 2852,
[84] = 2852,
[85] = 2821,
}

local function transform(pos, id, voc)
local item = getTileItemById(pos, id)
if item and item.uid > 1 then
   doTransformItem(item.uid, table[voc])
   doDecayItem(item.uid or 0)
end
end

function onDeath(cid, corpse)
if not isPlayer(cid) or not table[getPlayerVocation(cid)] then return true end
   addEvent(transform, 15, getThingPos(cid), corpse.itemid, getPlayerVocation(cid))
return true
end