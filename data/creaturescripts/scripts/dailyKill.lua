local countKill = 0

function onKill(cid, target)

    local infoTask = GetTaskInfo(cid)

    if (infoTask) then

        if (string.lower(getCreatureName(target)) == string.lower(infoTask.PokemonName)) then

            if (getPlayerStorageValue(cid, task_storage_time) == 1) then
                return true
            end

            if (countKill == infoTask.Count-1) then
                countKill = 0
                doPlayerSendTextMessage(cid, MESSAGE_EVENT_ORANGE, "Parabens, voce matou todos os "..infoTask.PokemonName.."s.")
                setPlayerStorageValue(cid, task_storage_time, 1)
                setPlayerStorageValue(cid, task_finish, 1)
                ClearAllStoragePlayer(cid)
                return true
            end

            countKill = (getPlayerStorageValue(cid, infoTask.Storage)+1)

            if (countKill == 0 or countKill >= infoTask.Count) then
                countKill = 1
            end

            setPlayerStorageValue(cid, infoTask.Storage, countKill)
            doPlayerSendTextMessage(cid, MESSAGE_EVENT_ORANGE, "Voce ja matou ["..countKill.. "/"..infoTask.Count.."] "..infoTask.PokemonName.."(s).")
        end
        

    end

    return TRUE
end