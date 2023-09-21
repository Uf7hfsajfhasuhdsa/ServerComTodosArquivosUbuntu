local config = {
            exhaustionSeconds = 5, -- exausted em segundos
            storageUse = 34538 -- storage usado.
}

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 182)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -18.7, 1, -20.4, 1)

local condition = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 7000) -- aqui vai o tempo de paralyze, 1000 = 1 segundo
setConditionParam(condition, CONDITION_PARAM_SPEED, -750) -- velocidade que o monstro irá perder
setConditionFormula(condition, 0, 0, 0, 0)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
if(exhaustion.check(cid, config.storageUse) == TRUE) then
   if (exhaustion.get(cid, config.storageUse) >= 60) then
   doPlayerSendCancel(cid, "Voçê só pode usar após [" .. math.floor(exhaustion.get(cid, config.storageUse) / 60 + 1) .."] minutos.")
   end
            if (exhaustion.get(cid, config.storageUse) <= 60) then
            doPlayerSendCancel(cid, "Voçê só pode usar após [" .. exhaustion.get(cid, config.storageUse).."] segundos.")
            end
return false
end

doCombat(cid, combat, var)
exhaustion.set(cid, config.storageUse, config.exhaustionSeconds)
return true
end