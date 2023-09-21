function goRookTemple(cid)
	doTeleportThing(cid, getTownTemplePosition(RookTempleID))
	doSendMagicEffect(fromPos, CONST_ME_POFF)
	doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
	db.executeQuery("UPDATE `players`  SET `reset_temple` = 0 WHERE `players`.`id` = ".. getPlayerGUID(cid) ..";")
end

function goMainTemple(cid)
	doTeleportThing(cid, getTownTemplePosition(MainTempleID))
	doPlayerSetTown(cid, MainTempleID)
	doSendMagicEffect(fromPos, CONST_ME_POFF)
	doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
	db.executeQuery("UPDATE `players`  SET `reset_temple` = 0 WHERE `players`.`id` = ".. getPlayerGUID(cid) ..";")
end

function onLogin(cid)
	domodlib('Rook_Config')
	domodlib('Vip_Libs')
	if getVipDays(cid) == 1 then
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Resta 1 dia de vip.")
	elseif getVipDays(cid) > 1 then
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Restam ".. getVipDays(cid) .." dias de vip.")
	end
	fromPos = getCreaturePosition(cid)
	if (isVip(cid) == false) then
		if getThingFromPos({x = fromPos.x, y = fromPos.y, z = fromPos.z, stackpos = 0}).actionid == 7777 then
			if (RookSistem == "no") then
				if isRookie(cid) == true then
					goRookTemple(cid)
				else
					goMainTemple(cid)
				end
			else
				goMainTemple(cid)
			end
		end
	end
	if getResetTemple(cid) == true then
		if (RookSistem == "no") then
			if isRookie(cid) == true then
				goRookTemple(cid)
			else
				goMainTemple(cid)
			end
		else
			goMainTemple(cid)
		end
	end
	return true
end