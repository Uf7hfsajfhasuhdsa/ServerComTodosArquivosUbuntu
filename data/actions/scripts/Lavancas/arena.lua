-- pvp arena lever



function onUse(cid, item, frompos, item2, topos)
	if item.uid == 10000 and item.itemid == 1945 then
		player1pos = {x=437, y=516, z=7, stackpos=253}
		player1 = getThingfromPos(player1pos)

		player2pos = {x=439, y=516, z=7, stackpos=253}
		player2 = getThingfromPos(player2pos)

exit = {x=438, y=514, z=7, stackpos=253}

function tp(cid1)
if getPlayerHealth(player1.uid) <= ( getPlayerHealth(player1.uid) /1.8 ) then
doPlayerAddHealth(player1.uid, getPlayerMaxHealth(player1.uid) ) 
doTeleportThing(player1.uid,exit)
addEvent(tp,20,player1.uid)
end
end

function tp2(cid2)
if getPlayerHealth(player2.uid) <= ( getPlayerHealth(player2.uid) /1.8 ) then
doPlayerAddHealth(player2.uid, getPlayerMaxHealth(player2.uid) ) 
doTeleportThing(player2.uid,exit)                 
addEvent(tp2,20,player2.uid)
end
end

		if player1.itemid > 0 and player2.itemid > 0 then
			arenalevel = 25
			player1level = getPlayerLevel(player1.uid)
			player2level = getPlayerLevel(player2.uid)

			if player1level >= arenalevel and player2level >= arenalevel then
				for arenax = 432, 445 do
					for arenay = 518, 526 do
						arenapos = {x=arenax, y=arenay, z=7, stackpos=253}
						arenacreature = getThingfromPos(arenapos)

						if arenacreature.itemid > 0 then
							doPlayerSendCancel(cid,"Espere esse Duelo acabar.")
							return 1
						end
					end
				end

				nplayer1pos = {x=437, y=518, z=7}
				nplayer2pos = {x=440, y=518, z=7}

				doSendMagicEffect(player1pos,2)
				doSendMagicEffect(player2pos,2)

				doTeleportThing(player1.uid,nplayer1pos)
				doTeleportThing(player2.uid,nplayer2pos)

				doSendMagicEffect(nplayer1pos,10)
				doSendMagicEffect(nplayer2pos,10)

				doPlayerSendTextMessage(player1.uid,18,"FIGHT!")
				doPlayerSendTextMessage(player2.uid,18,"FIGHT!")
			else
				doPlayerSendCancel(cid,"Os 2 presisa ter level 100.")
			end
		else
			doPlayerSendCancel(cid,"Presisa ter 2 player para duelar.")
		end
	else
		return 0
   	end

	return 1
end
