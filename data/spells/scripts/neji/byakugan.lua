local config = {
            exhaustionSeconds = 20, -- exausted em segundos
            trapId = 5579, -- id do item do trap
            timeRemove = 5, -- segundos para remover o trap
            storageUse = 34437 -- storage usado.
}

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 111)
setCombatParam(combat, COMBAT_PARAM_CREATEITEM, 5579)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 193)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -27, -28, -29, -30)

local arr = {
{ 1, 0, 0, 0, 0, 0, 0, },
{ 0, 0, 0, 0, 0, 0, 0, },
{ 0, 0, 0, 0, 0, 0, 0, },
{ 0, 0, 0, 2, 0, 0, 0, },
{ 0, 0, 0, 0, 0, 0, 0, },
{ 0, 0, 0, 0, 0, 0, 0, },
{ 0, 0, 0, 0, 0, 0, 0, },
}

local arr2 = {
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
local area2 = createCombatArea(arr2)
setCombatArea(combat2, area2)

local function onCastSpell1(parameters)
doCombat(parameters.cid, parameters.combat, parameters.var)
end
local function onCastSpell2(parameters)
doCombat(parameters.cid, parameters.combat2, parameters.var)
end

function onCastSpell(cid, var)
local parameters = { cid = cid, var = var, combat1 = combat1, combat2 = combat2 }
addEvent(onCastSpell1, 0000, parameters)
addEvent(onCastSpell2, 0300, parameters)
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
addEvent(removeTrap1, config.timeRemove*2000, posAll)
return true
end

function removeTrap1(posAll)
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