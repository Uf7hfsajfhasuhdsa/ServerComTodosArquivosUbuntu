function onSay(cid, words, param, channel)
        local Data = string.explode(param, ",")
        if (words:sub(2, 2) == "a") then
                if (not Data) then
                        doPlayerSendCancel(cid, "Insira um nome.")
                        return true
                elseif (not Data[2] or Data[2] == "") then
                        doPlayerSendCancel(cid, "Insira a quantidade de dias de vip que ira adionar ao player.")
                        return true
                elseif not isNumber(Data[2]) then
                        doPlayerSendCancel(cid, "Use apenas numeros.")
                        return true
                end
                local Target = db.getResult("SELECT `name` FROM `players` WHERE `name` = " .. db.escapeString(Data[1]) .. ";")
                if (Target:getID() ~= -1) then
                        if (getPlayerByName(Data[1])) then
                                doSendMagicEffect(getCreaturePosition(getPlayerByName(Data[1])), CONST_ME_MAGIC_GREEN)
                        end
                        if getVipTimeByName(Data[1]) == 0 then
                                db.executeQuery("UPDATE `accounts` SET `vip_time` = 86400 * ".. Data[2] .." + ".. os.time() .." WHERE `accounts`.`id` = ".. getAccountIdByName(Data[1]) ..";")
                        else
                                db.executeQuery("UPDATE `accounts` SET `vip_time` = `accounts`.`vip_time` + (86400 * ".. Data[2] ..") WHERE `accounts`.`id` = ".. getAccountIdByName(Data[1]) ..";")
                        end
                        db.executeQuery("UPDATE `accounts` SET `vip` = 1 WHERE `accounts`.`id` = ".. getAccountIdByName(Data[1]) ..";")
                        db.executeQuery("UPDATE `accounts` SET `vip_days` = `accounts`.`vip_days` + ".. Data[2] .." WHERE `accounts`.`id` = ".. getAccountIdByName(Data[1]) ..";")
                        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Foi adicionado ".. Data[2] .." dias de vip ao player ".. Data[1] ..".")
                else
                        doPlayerSendCancel(cid, "O player ".. Data[1] .." não existe.")
                end
                Target:free()
        else
                if getVipDays(cid) == 0 then
                        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Você não é um jogador vip.")
                elseif getVipDays(cid) >= 2 then
                        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Você tem ".. getVipDays(cid) .." dias de vip.")
                else
                        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Você tem 1 dia de vip.")
                end
        end
        return true
end