local config = {
            exhaustionSeconds = 20, -- exausted em segundos
            trapId = 2705, -- id do item do trap
            timeRemove = 11, -- segundos para remover o trap
            storageUse = 34438 -- storage usado.
}

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 111)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)
setCombatParam(combat, COMBAT_PARAM_CREATEITEM, 2705)

local arr = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0},
{0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0},
{0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0},
{0, 1, 0, 0, 0, 2, 0, 0, 0, 1, 0},
{0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0},
{0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0},
{0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
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
local pos = getCreaturePosition(cid)
posTile1 = {x=pos.x+4,y=pos.y-1,z=pos.z,stackpos=1}
posTile2 = {x=pos.x+4,y=pos.y,z=pos.z,stackpos=1}
posTile3 = {x=pos.x+4,y=pos.y+1,z=pos.z,stackpos=1}
posTile4 = {x=pos.x+4,y=pos.y+2,z=pos.z,stackpos=1}
posTile5 = {x=pos.x+3,y=pos.y+2,z=pos.z,stackpos=1}
posTile6 = {x=pos.x+3,y=pos.y+3,z=pos.z,stackpos=1}
posTile7 = {x=pos.x+2,y=pos.y+3,z=pos.z,stackpos=1}
posTile8 = {x=pos.x+2,y=pos.y+4,z=pos.z,stackpos=1}
posTile9 = {x=pos.x+1,y=pos.y+4,z=pos.z,stackpos=1}
posTile10 = {x=pos.x,y=pos.y+4,z=pos.z,stackpos=1}
posTile11 = {x=pos.x-1,y=pos.y+4,z=pos.z,stackpos=1}
posTile12 = {x=pos.x-2,y=pos.y+4,z=pos.z,stackpos=1}
posTile13 = {x=pos.x-2,y=pos.y+3,z=pos.z,stackpos=1}
posTile14 = {x=pos.x-3,y=pos.y+3,z=pos.z,stackpos=1}
posTile15 = {x=pos.x-3,y=pos.y+2,z=pos.z,stackpos=1}
posTile16 = {x=pos.x-4,y=pos.y+2,z=pos.z,stackpos=1}
posTile17 = {x=pos.x-4,y=pos.y+1,z=pos.z,stackpos=1}
posTile18 = {x=pos.x-4,y=pos.y,z=pos.z,stackpos=1}
posTile19 = {x=pos.x-4,y=pos.y-1,z=pos.z,stackpos=1}
posTile20 = {x=pos.x-4,y=pos.y-2,z=pos.z,stackpos=1}
posTile21 = {x=pos.x-3,y=pos.y-2,z=pos.z,stackpos=1}
posTile22 = {x=pos.x-3,y=pos.y-3,z=pos.z,stackpos=1}
posTile23 = {x=pos.x-2,y=pos.y-3,z=pos.z,stackpos=1}
posTile24 = {x=pos.x-2,y=pos.y-4,z=pos.z,stackpos=1}
posTile25 = {x=pos.x-1,y=pos.y-4,z=pos.z,stackpos=1}
posTile26 = {x=pos.x,y=pos.y-4,z=pos.z,stackpos=1}
posTile27 = {x=pos.x+1,y=pos.y-4,z=pos.z,stackpos=1}
posTile28 = {x=pos.x+2,y=pos.y-4,z=pos.z,stackpos=1}
posTile29 = {x=pos.x+2,y=pos.y-3,z=pos.z,stackpos=1}
posTile30 = {x=pos.x+3,y=pos.y-3,z=pos.z,stackpos=1}
posTile31 = {x=pos.x+3,y=pos.y-2,z=pos.z,stackpos=1}
posTile32 = {x=pos.x+4,y=pos.y-2,z=pos.z,stackpos=1}
posAll3 = {posTile1,posTile2,posTile3,posTile4,posTile5,posTile6,posTile7,posTile8,posTile9,posTile10,posTile11,posTile12,posTile13,posTile14,posTile15,posTile16,posTile17,posTile18,posTile19,posTile20,posTile21,posTile22,posTile23,posTile24,posTile25,posTile26,posTile27,posTile28,posTile29,posTile30,posTile31,posTile32}
exhaustion.set(cid, config.storageUse, config.exhaustionSeconds)
addEvent(removeTrap, config.timeRemove*1000, posAll3)
return true
end

function removeTrap(posAll3)
            for i=1, #posAll3 do
                            for j=0, 255 do
                                            pos_stack = {x=posAll3[i].x,y=posAll3[i].y,z=posAll3[i].z,stackpos=j}
                                            removeTile = getThingfromPos(pos_stack)
                                            if removeTile.itemid == config.trapId then
                                                            doRemoveItem(removeTile.uid)
                                            end
                            end
            end
end