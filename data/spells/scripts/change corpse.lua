--< Digaao >--
local config = {
        storage = 12456, -- storage que salva o delay da magia
        time = 15, -- tempo que deve esperar para usar a magia em segundos
        player = true, -- funciona com player true/false
        monster = false, -- funciona com monstros true/false
        npc = false, -- funciona com npc true/false
        chance = 100, -- numero de 1 a 100 representando a chance de sucesso
}
function onCastSpell(cid, var)
        
        local function doSend(pos1, pos2, num)
                doSendDistanceShoot(getCreaturePosition(pos1), getCreaturePosition(pos2), 4)
                doSendDistanceShoot(getCreaturePosition(pos2), getCreaturePosition(pos1), 4)
                if type(num) == "number" and num == 1 then
                        if math.random(100, 100) <= config.chance then
                                local pp1 = getCreaturePosition(pos1)
                                local pp2 = getCreaturePosition(pos2)
                                doTeleportThing(pos2, pp1)
                                doTeleportThing(pos1, pp2)
                        else
                                doPlayerSendCancel(cid, "Opps que azar, tente denovo!")
                        end
                end
                return true
        end
        
        local target = getCreatureTarget(cid)
        
        if type(target) ~= "number" or target == 0 then
                doPlayerSendCancel(cid, "Você precisa selecionar alguma creature para fazer isso!")
                return false
        end
        
                if (config.player == false and isPlayer(target)) or (isPlayer(target) and getPlayerAccess(target) > getPlayerAccess(cid)) or (config.monster == false and isMonster(target)) or (config.npc == false and isNpc(target)) then
                doPlayerSendCancel(cid, "Voce nao pode fazer isso com essa criatura!")
                return false
        end
        
        if getPlayerStorageValue(cid, config.storage) > os.time() then
                doPlayerSendCancel(cid, "Voçê só pode usar após 20 segundos.")
                                return false
        else
                for i = 1, 1 do
                        addEvent(doSend, 1, cid, target, 0)
                end
                addEvent(doSend, 1, cid, target, 1)
                setPlayerStorageValue(cid, config.storage, os.time() + config.time)
        end
        
        return true
end