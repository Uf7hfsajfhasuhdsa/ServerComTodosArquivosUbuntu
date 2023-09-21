local condition = Condition(CONDITION_ATTRIBUTES)
condition:setParameter(CONDITION_PARAM_TICKS, 10000)
condition:setParameter(CONDITION_PARAM_BUFF_SPELL, true)

local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, 0)
combat:setCondition(condition)

function onCastSpell(creature, var)
    creature:registerEvent("CustomSpell")
    local cid = creature:getId()

    addEvent(
        function()
            local player = Player(cid)
            if player then
                player:unregisterEvent("CustomSpell")
            end
        end,
        10*1000
    )

    return combat:execute(creature, var)
end