local configuration = {
["Monday"] = 1, -- Segunda!
["Wednesday"] = 3, -- Quarta!
["Saturday"] = 6, -- Sabado!
-----------------------------------
to_pos = {x = 1775, y = 1082, z = 9},
pos = {x = 1030, y = 839, z = 6},

-----------------------------------
to_pos1 = {x = 1775, y = 1082, z = 9},
pos1 = {x = 1030, y = 839, z = 6},
teleport_id = 1387,
}
local CTF1 = {
    fromPos = {x=1715, y=1053, z=5, stackpos=253},
    toPos = {x=1801, y=1093, z=9, stackpos=253},
    deTile = {x=1028, y=848, z=5,stackpos=1}
}
local CTF3 = {
    fromPos = {x=1715, y=1053, z=5, stackpos=253},
    toPos = {x=1801, y=1093, z=9, stackpos=253},
    deTile = {x=1028, y=848, z=5,stackpos=1}
}
local CTF6 = {
    fromPos = {x=1715, y=1053, z=7, stackpos=253},
    toPos = {x=1801, y=1093, z=7, stackpos=253},
    deTile = {x=1028, y=848, z=5,stackpos=1}
}
function onTime()
    if configuration[os.date("%A")] then
        local item = getTileItemById(configuration.pos, configuration.teleport_id).uid
        local item1 = getTileItemById(configuration.pos1, configuration.teleport_id).uid
        if item > 0 then
		    doRemoveItem(item, 1)
            doRemoveItem(item1, 1)
            broadcastMessage("[Vilarejo] Foi fechado... Parabens ao time Dominante !..", MESSAGE_STATUS_WARNING)
             for _, pid in ipairs(getPlayersOnline()) do
              if isInArea(getPlayerPosition(pid), CTF1.fromPos, CTF1.toPos) then
               doTeleportThing(pid, CTF1.deTile, false)
              end
               if isInArea(getPlayerPosition(pid), CTF3.fromPos, CTF3.toPos) then
               doTeleportThing(pid, CTF3.deTile, false)
              end

              if isInArea(getPlayerPosition(pid), CTF6.fromPos, CTF6.toPos) then
               doTeleportThing(pid, CTF6.deTile, false)
              end

             end
        else
            doCreateTeleport(configuration.teleport_id, configuration.to_pos1, configuration.pos1)
            broadcastMessage("[Vilarejo] Foi aberto Durante 1 hora ! Vamos Ninjas Tentem o Dominio !...", MESSAGE_STATUS_WARNING)
        end
    end
    return true
end