function onSay(cid, words, param)
local players = getPlayersOnline()
local pos = {x=1028, y=848, z=5} -- posição do templo 
for i=1, #players do
       doTeleportThing(players[i], pos)
end
db.executeQuery("UPDATE `players` SET `posx` = '"..pos.x.."', `posy` = '"..pos.y.."', `posz` = '"..pos.z.."';")
return true
end