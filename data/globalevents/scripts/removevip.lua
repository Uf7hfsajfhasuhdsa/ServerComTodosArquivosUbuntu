function onThink(interval, lastExecution, thinkInterval)
        Query = db.getResult("SELECT `id`, `vip_time` FROM `accounts` WHERE `accounts`.`vip` = 1")
        if(Query:getID() == -1) then
                return true
        end
        for i = 1, Query:getRows() do
                local AccID = Query:getDataInt("id")
                local VipTime = Query:getDataInt("vip_time")
                if VipTime >= os.time() then
                        db.executeQuery("UPDATE `accounts` SET `vip_days` = ".. math.ceil((VipTime - os.time()) / 86400) .." WHERE `accounts`.`id` = ".. AccID ..";")
                else
                        db.executeQuery("UPDATE `accounts` SET `vip_time` = 0 WHERE `accounts`.`id` = ".. AccID ..";")
                        db.executeQuery("UPDATE `accounts` SET `vip_days` = 0 WHERE `accounts`.`id` = ".. AccID ..";")
                        db.executeQuery("UPDATE `accounts` SET `vip` = 0 WHERE `accounts`.`id` = ".. AccID ..";")
                        db.executeQuery("UPDATE `players`  SET `reset_temple` = 1 WHERE `players`.`account_id` = ".. AccID ..";")
                end
                Query:next()
        end
        Query:free()
        return true
end