local DOOR_LEVER = {
   [1945] = 1221,
   [1946] = 1222
}

local DOOR_POSITION = {x=722, y=726, z=5}

function onUse(cid, item, fromPosition, itemEx, toPosition)
doCreatureSay(cid, "Voce abriu uma porta.", TALKTYPE_MONSTER)
   if not DOOR_LEVER[item.itemid] then
       return false
   end

   local door = getTileItemById(DOOR_POSITION, DOOR_LEVER[item.itemid])
local newitem = item.itemid == 1945 and 1946 or 1945
   if door.uid > 0 then
       doTransformItem(door.uid, DOOR_LEVER[newitem])
   end
   doTransformItem(item.uid, newitem)
   return true
end