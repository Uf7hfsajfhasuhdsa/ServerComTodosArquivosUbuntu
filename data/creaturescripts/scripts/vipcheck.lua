local config = {
        RookSistem = "no",
        RookTempleID = 1,
        MainTempleID = 2
}

config.RookSistem = getBooleanFromString(config.RookSistem)

function getResetTemple(cid)
        local Query = db.getResult("SELECT `reset_temple` FROM `players` WHERE `players`.`id` = ".. getPlayerGUID(cid) ..";")
        return (isPlayer(cid) == true and (Query:getDataInt("reset_temple") == 1)) and true or false
end

function goRookTemple(cid)
        doTeleportThing(cid, getTownTemplePosition(config.RookTempleID))
        doSendMagicEffect(fromPos, CONST_ME_POFF)
        doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
        db.executeQuery("UPDATE `players`  SET `reset_temple` = 0 WHERE `players`.`id` = ".. getPlayerGUID(cid) ..";")
end

function goMainTemple(cid)
        doTeleportThing(cid, getTownTemplePosition(config.MainTempleID))
        doPlayerSetTown(cid, config.MainTempleID)
        doSendMagicEffect(fromPos, CONST_ME_POFF)
        doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
        db.executeQuery("UPDATE `players`  SET `reset_temple` = 0 WHERE `players`.`id` = ".. getPlayerGUID(cid) ..";")
end

function onLogin(cid)
        fromPos = getCreaturePosition(cid)
        if getResetTemple(cid) == true then
                if (config.RookSistem) then
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