local villarejo = {

    portalPosition = {x = 999, y = 875, z = 7}, -- posição onde o portal irá ser criado.
    topLeft = {x = 1226, y = 135, z = 3}, -- posição superior esquerda, posição < /\.
    bottomRight = {x = 1226, y = 135, z = 5}, -- posição inferior direita canto > \/.
    villarejo_position ={x = 1226, y = 135, z = 5}, -- posição que será enviado ao entrar no portal.
    guilds = {},
}

local function compare(a,b)
	return a.x == b.x and a.y == b.y and a.z == b.z
end

villarejo.finish = function()

	local guilds = villarejo.guilds
	
	table.sort(guilds, compare)
	
	local topGuild = guilds[1]
	
    if topGuild then
        db.query("INSERT INTO guilds_villarejo(guild_id, date) VALUES (" .. topGuild.id .. ", " .. os.time() .. ")")
        broadcastMessage("A guild ".. topGuild.name .." acaba de dominar o villarejo" , MESSAGE_EVENT_ADVANCE)
    end

    local players = getPlayersOnline()
    for _, player in pairs (players) do 
        if isInRange(getCreaturePosition(player), GGN_POSITION_TOPLEFT, GGN_POSITION_BOTTOMRIGHT) then
            if getTownTemplePosition(getPlayerTown(player)) then
                doTeleportThing(player, getTownTemplePosition(getPlayerTown(player)), true)
            end
        end
    end
    
    local tile = getTileThingByPos(villarejo.portalPos)
    if tile then
        local teleport = getTileItemById(villarejo.portalPos, 1387)
        local item = getTileItemById(villarejo.portalPos, 9565)
        if teleport and teleport.uid ~= 0 then
            doRemoveItem(teleport.uid)
        end
        if item.uid ~= 0 then
            doRemoveItem(item.uid)
        end
    end
    updateGuildVillageWin()
end

villarejo.start =  function()

    if getTileItemById(villarejo.portalPosition, 1387).uid > 0 then
        return
    end        
    local teleport = doCreateItem(1387, 1, villarejo.portalPos)
    
    if teleport then
        doCreateItem(9565, 1, villarejo.portalPos)
        doItemSetAttribute(teleport, "aid", 25002)
    end

    broadcastMessage("O Portal para a o Villarejo foi aberto !", MESSAGE_EVENT_ADVANCE)
    villarejo.guilds = {}
end