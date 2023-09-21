local config = {
            exhaustionSeconds = 20, -- exausted em segundos
            trapId = 8632, -- id do item do trap
            timeRemove = 5, -- segundos para remover o trap
            storageUse = 34438 -- storage usado.
}

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 111)
setCombatParam(combat, COMBAT_PARAM_CREATEITEM, 8632)

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
   if (exhaustion.get(cid, config.storageUse) >= 61) then
   doPlayerSendCancel(cid, "Voçê só pode usar após [" .. math.floor(exhaustion.get(cid, config.storageUse) / 61 + 1) .."] minutos.")
   end
            if (exhaustion.get(cid, config.storageUse) <= 61) then
            doPlayerSendCancel(cid, "Voçê só pode usar após [" .. exhaustion.get(cid, config.storageUse).."] segundos.")
            end
return false
end
doCombat(cid, combat, var)
local pos = getCreaturePosition(getCreatureTarget(cid))
posTileone = {x=pos.x+1,y=pos.y+1,z=pos.z,stackpos=1}
posTiletwo = {x=pos.x+1,y=pos.y,z=pos.z,stackpos=1}
posTilethree = {x=pos.x+1,y=pos.y-1,z=pos.z,stackpos=1}
posTilefour = {x=pos.x,y=pos.y-1,z=pos.z,stackpos=1}
posTilefive = {x=pos.x-1,y=pos.y-1,z=pos.z,stackpos=1}
posTilesix = {x=pos.x-1,y=pos.y,z=pos.z,stackpos=1}
posTileseven = {x=pos.x-1,y=pos.y+1,z=pos.z,stackpos=1}
posTileeight = {x=pos.x,y=pos.y+1,z=pos.z,stackpos=1}
posAll = {posTileone,posTiletwo,posTilethree,posTilefour,posTilefive,posTilesix,posTileseven,posTileeight}
exhaustion.set(cid, config.storageUse, config.exhaustionSeconds)
addEvent(removePrision, config.timeRemove*2000, posAll)
return true
end

function removePrision(posAll1)
            for i=1, #posAll do
                            for j=0, 255 do
                                            pos_stack = {x=posAll1[i].x,y=posAll1[i].y,z=posAll1[i].z,stackpos=j}
                                            removeTile = getThingfromPos(pos_stack)
                                            if removeTile.itemid == config.trapId then
                                                            doRemoveItem(removeTile.uid)
                                            end
                            end
            end
end