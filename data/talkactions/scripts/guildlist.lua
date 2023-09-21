function onSay(cid, words, param, channel)  
        if param == '' then  
                local lista = db.getResult("SELECT `name` FROM `guilds`;")  
                if(lista:getID() ~= -1) then  
                        local a = ''  
                        repeat  
                                a = a .. lista:getDataString("name")  .. "\n"  
                        until not lista:next()  
                        lista:free()  
                        doShowTextDialog(cid, 2529, a)  
                else  
                        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Não existem guilds no servidor.")  
                end  
        else  
                local b = getGuildId(param)  
                if b then  
                        local lista = db.getResult("SELECT `name`, `rank_id` FROM `players` WHERE `rank_id` IN (SELECT `id` FROM `guild_ranks` WHERE `guild_id` = " .. b .. ");")  
                        if(lista:getID() ~= -1) then  
                                local a = ''  
                                repeat  
                                        local rank = db.getResult("SELECT `name` FROM `guild_ranks` WHERE `id` = " .. lista:getDataInt("rank_id") .. " LIMIT 1;")  
                                        a = a .. lista:getDataString("name")  .. " [" .. rank:getDataString("name") .. "]\n"  
                                        rank:free()  
                                until not lista:next()  
                                lista:free()  
                                doShowTextDialog(cid, 2529, a)  
                        else  
                                doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Não há jogadores nesta guild.")  
                        end  
                else  
                        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Está Guild não existe.")  
                end  
        end  
        return TRUE  
end