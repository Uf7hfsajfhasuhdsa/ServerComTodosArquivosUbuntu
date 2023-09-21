local config = {
    hitsToChance = 5, -- Número de hits necessários para ter a chance de dropar o item
    miningChance = 20, -- Porcentagem de chance de sucesso na mineração a cada 5 hits
    bonusRewardChance = 30, -- Porcentagem de chance de obter uma recompensa bônus ao monstro morrer
    miningItem = 2160 -- Substitua pelo ID do item que você deseja minerar
}

local hitCount = {}

function onPrepareDeath(creature, lastHitKiller, mostDamageKiller)
    local position = creature:getPosition()

    for _, player in ipairs(hitCount) do
        if math.random(1, 100) <= config.bonusRewardChance then
            local item = Game.createItem(config.miningItem, 1, position)
            item:registerReward(player.uid)
            player:sendTextMessage(MESSAGE_STATUS_WARNING, "You received a bonus reward!")
        end
    end

    hitCount = {}
    return false
end

function onThink(creature, interval)
    local healthPercent = (creature:getHealth() / creature:getMaxHealth()) * 100

    if healthPercent <= 0 then
        creature:addHealth(creature:getMaxHealth())
        return true
    end

    return true
end

function onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
    if not attacker or not attacker:isPlayer() then
        return primaryDamage, primaryType, secondaryDamage, secondaryType
    end

    local playerId = attacker:getId()
    if not hitCount[playerId] then
        hitCount[playerId] = {
            uid = attacker,
            hits = 0
        }
    end

    hitCount[playerId].hits = hitCount[playerId].hits + 1

    if hitCount[playerId].hits >= config.hitsToChance then
        hitCount[playerId].hits = 0
        if math.random(1, 100) <= config.miningChance then
            local backpack = attacker:getSlotItem(CONST_SLOT_BACKPACK)
            if backpack then
                backpack:addItem(config.miningItem, 1)
                attacker:sendTextMessage(MESSAGE_STATUS_WARNING, "You have successfully mined an item!")
            end
        end
    end

    return primaryDamage, primaryType, secondaryDamage, secondaryType
end
