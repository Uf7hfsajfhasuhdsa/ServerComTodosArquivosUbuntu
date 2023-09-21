local quantSqm = 3 -- quantidade de sqms



function teleportPlayer(cid, position)

if (isPlayer(cid)) then

local o = 1

local positions = {}

	for i=1, quantSqm do	

			if getPlayerLookDir(cid) == 0 then

					position = {x=position.x, y=position.y-1, z=position.z}

			elseif getPlayerLookDir(cid) == 1 then

					position = {x=position.x+1, y=position.y, z=position.z}					

			elseif getPlayerLookDir(cid) == 2 then

					position = {x=position.x, y=position.y+1, z=position.z}

			elseif getPlayerLookDir(cid) == 3 then

					position = {x=position.x-1, y=position.y, z=position.z}

			end

			if isWalkable(position) then

				o = o+1

			end

			positions[#positions+1] = position		  

	end

	if o > quantSqm then

			doTeleportThing(cid, position)

		for i=1, #positions do

			doSendMagicEffect(positions[i], 83)

		end

			return true

	else

			doPlayerSendCancel(cid, "Você não pode atravesar isso!")

			return false

	end

end

end



function isWalkable(pos, creature, pz, proj) -- nord

	if getTileThingByPos({x = pos.x, y = pos.y, z = pos.z, stackpos = 0}).itemid == 0 then return false end

	local creature = getTopCreature(pos)

	if creature.type > 0 then	return false end

	if getTilePzInfo(pos) and not pz then return false end

	local n = not proj and 3 or 2

	for i = 0, 255 do

			pos.stackpos = i

			local tile = getTileThingByPos(pos)

			if tile.itemid ~= 0 and not isCreature(tile.uid) then

					if hasProperty(tile.uid, n) or hasProperty(tile.uid, 7) then

							return false

					end

			end

	end

return true

end



function onCastSpell(cid, var)

	if teleportPlayer(cid, getPlayerPosition(cid)) then

			return true

	end

end