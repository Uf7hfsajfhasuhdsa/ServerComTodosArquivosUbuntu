-- Script por Killua, antigo amoeba13 --

function onKill(cid, target, lastHit)
    
    if not isMonster(target) or not isPlayer(cid) then
        return true
    end
    
    for _, tasks in pairs(amoebaTask) do
        if isInArray(tasks.creatures, getCreatureName(target)) then
            if taskKills(cid, tasks.storagecount) < tasks.count then
                doPlayerSetStorageValue(cid, tasks.storagecount, taskKills(cid, tasks.storagecount)+1)
                break
            end
        end
    end
    return true
end