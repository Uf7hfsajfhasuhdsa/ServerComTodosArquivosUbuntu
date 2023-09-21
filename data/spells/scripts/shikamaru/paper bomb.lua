local config = {
            exhaustionSeconds = 20, -- exausted em segundos
            trapId = 2158, -- id do item do trap
            timeRemove = 10, -- segundos para remover o trap
            storageUse = 34538 -- storage usado.
}

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 111)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)
setCombatParam(combat, COMBAT_PARAM_CREATEITEM, 2178)

local arr = {
{ 0, 0, 0, 0, 0, 0, },
{ 0, 0, 0, 0, 0, 0, },
{ 0, 0, 1, 1, 1, 0, },
{ 0, 0, 1, 2, 1, 0, },
{ 0, 0, 1, 1, 1, 0, },
{ 0, 0, 0, 0, 0, 0, },
{ 0, 0, 0, 0, 0, 0, },
}

local area = createCombatArea(arr)
setCombatArea(combat, area)

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
local pos = getCreaturePosition(getCreatureTarget(cid))
posTile1 = {x=pos.x,y=pos.y+1,z=pos.z,stackpos=1}
posTile2 = {x=pos.x,y=pos.y+2,z=pos.z,stackpos=1}
posTile3 = {x=pos.x,y=pos.y+3,z=pos.z,stackpos=1}
posTile4 = {x=pos.x,y=pos.y+4,z=pos.z,stackpos=1}
posTile5 = {x=pos.x-1,y=pos.y-1,z=pos.z,stackpos=1}
posTile6 = {x=pos.x-1,y=pos.y,z=pos.z,stackpos=1}
posTile7 = {x=pos.x-1,y=pos.y+1,z=pos.z,stackpos=1}
posTile8 = {x=pos.x,y=pos.y+1,z=pos.z,stackpos=1}
posAll = {posTile1,posTile2,posTile3,posTile4,posTile5,posTile6,posTile7,posTile8}
exhaustion.set(cid, config.storageUse, config.exhaustionSeconds)
addEvent(removeTrap2, config.timeRemove*1000, posAll)
return true
end

function removeTrap2(posAll)
            for i=1, #posAll do
                            for j=0, 255 do
                                            pos_stack = {x=posAll[i].x,y=posAll[i].y,z=posAll[i].z,stackpos=j}
                                            removeTile = getThingfromPos(pos_stack)
                                            if removeTile.itemid == config.trapId then
                                                            doRemoveItem(removeTile.uid)
                                            end
                            end
            end
end