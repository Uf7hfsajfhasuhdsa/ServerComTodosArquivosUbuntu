local config = {
            exhaustionSeconds = 5, -- exausted em segundos
            storageUse = 34538 -- storage usado.
}

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -20, -21, -22, -23)

local condition = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 9500) -- aqui vai o tempo de paralyze, 1000 = 1 segundo
setConditionParam(condition, CONDITION_PARAM_SPEED, -8000) -- velocidade que o monstro irá perder
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
local eff = 250 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+2, y=getCreaturePosition(target).y+1, z=getCreaturePosition(target).z}
doSendMagicEffect(position, eff)
return true
end