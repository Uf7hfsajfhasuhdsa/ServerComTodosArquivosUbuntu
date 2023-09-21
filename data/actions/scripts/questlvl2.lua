function onUse(cid, item, fromPosition, itemEx, toPosition)
local pos = {x=1026, y=843, z=3}
local level = 139 -- quantos lvls vai ganhar
if getPlayerStorageValue(cid, 54556) <= 0 then
doTeleportThing(cid,pos)
doPlayerSendCancel(cid,"Desculpe você já fez.")
if queststatus == -1 then
end
doPlayerAddLevel(cid, level)
setPlayerStorageValue(cid,54556,1)
doPlayerSendCancel(cid,"Parabéns")
return true
end
end