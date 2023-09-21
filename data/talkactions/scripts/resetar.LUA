--[[> script by Marcryzius D'evil <]]--
function onSay(cid, words, param)
local config ={
level=450, -- level necessario pra reseta.
RemainingLvl=8, -- {8} = level(normal) que ficará depois de ser resetado.
quant = 1,-- quantidade de vezes que podem resetar
pid=getPlayerGUID(cid), -- não mecha
skull = "yes", -- players com white skull podem resetar? ("yes" or "no").
redskull = "yes", -- players com red skull podem resetar? ("yes" or "no").
prot = "no", -- players precisam estar em protection zone pra resetar? ("yes" or "no").
bat = "no" -- players precisam estar sem fight pra resetarem? ("yes" or "no").
}

function getResets(cid)
return getPlayerStorageValue(cid,1020) < 0 and 0 or getPlayerStorageValue(cid,1020)
end

if(config.skull == "no") and (getCreatureSkullType(cid) == 3) then
doPlayerSendTextMessage(cid,22,"apenas players sem white skull podem resetar.")
return TRUE
end

if(config.redskull == "no") and (getCreatureSkullType(cid) == 4) then
doPlayerSendTextMessage(cid,22,"apenas player sem red skull podem resetar.")
return TRUE
end

if(config.prot == "yes") and (getTilePzInfo(getCreaturePosition(cid)) == FALSE) then
doPlayerSendTextMessage(cid,22,"você precisa estar em protection zone pra poder resetar.")
return TRUE
end

if(config.bat == "yes") and (getCreatureCondition(cid, CONDITION_INFIGHT) == TRUE) then
doPlayerSendTextMessage(cid,22,"você precisa estar sem battler pra poder resetar.")
return TRUE
end

if(getResets(cid) == config.quant)then
doPlayerSendTextMessage(cid,22,"você não pode ter mais do que "..config.quant.." reset's.")
return TRUE
end

local level = config.level*getResets(cid)+1
if getPlayerLevel(cid) >= level then
setPlayerStorageValue(cid,1020,getResets(cid)+1)
doPlayerSetNameDescription(cid, " Have a "..getResets(cid)+(1).." reset\'s.")
doPlayerPopupFYI(cid,"you now was reset, you have "..getResets(cid)+(1).." reset\'s.")
doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
doRemoveCreature(cid)
db.executeQuery("UPDATE `players` SET `level` = "..RemainingLvl..", `experience` = "..getExperienceForLevel(config.RemainingLvl).." WHERE `id` = "..config.pid)
else
doPlayerSendCancel(cid, "You need to have level "..level.." or more you may be reset.")
doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
end
return TRUE
end

