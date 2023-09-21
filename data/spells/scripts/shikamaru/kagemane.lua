local function move(cid, target, playerpos, targetpos, times)
if playerdir ~= getCreatureLookDirection(cid) then
doCreatureSetLookDirection(target, getCreatureLookDirection(cid))
end
 
if playerpos ~= getCreaturePosition(cid) then
if playerpos.z == getCreaturePosition(cid).z then
local ntpos = getCreaturePosition(cid)
local x,y,z = ntpos.x-playerpos.x,ntpos.y-playerpos.y,ntpos.z-playerpos.z
ntpos = getCreaturePosition(target)
ntpos.x, ntpos.y, ntpos.z = ntpos.x+x,ntpos.y+y,ntpos.z+z
if queryTileAddThing(target, ntpos) == RETURNVALUE_NOERROR and getCreaturePosition(cid).z == getCreaturePosition(target).z then
doMoveCreature(target, getCreatureLookDirection(cid))
end
end
end
local playerpos, targetpos = getCreaturePosition(cid), getCreaturePosition(target)
local times = times+1
if times < 100 then
addEvent(move, 1, cid, target, playerpos, targetpos, times)
else
doCreatureNoMove(target, 0)
doSendAnimatedText(targetpos, "Livre!", math.random(1,255))
doPlayerSendCancel(cid, "Voce nao tem mais o controle do "..getCreatureName(target)..".")
if (isPlayer(target)) then
doPlayerSendCancel(cid, "Voce foi libertado "..getPlayerName(cid).."da tecnica da sombra.")
setPlayerStorageValue(target, 14755, -1)
end
end
end
 
function onCastSpell(cid, var)
local storage = 4
local time = 1
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)
local target = getCreatureTarget(cid)
if (isPlayer(target)) or (isMonster(target)) then
if getPlayerStorageValue(cid, 14755) == -1 then
doCreatureSetNoMove(target, 1)
doPlayerSendCancel(cid, "Voce possuiu "..getCreatureName(target)..".")
if (isPlayer(target)) then
doPlayerSendCancel(target, "Voce foi possuido por "..getPlayerName(cid)..".")
setPlayerStorageValue(target, 14755, 1)
end
else
     doPlayerSendCancel(cid, "Exausted")
  end
doSendAnimatedText(getCreaturePosition(target), "Possuido!", math.random(1,255))
local playerpos,playerdir,targetpos = getCreaturePosition(cid), getCreatureLookDir(cid), getCreaturePosition(target)
local eff = 207 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+1, y=getCreaturePosition(target).y, z=getCreaturePosition(target).z}
doSendMagicEffect(position, eff)
local times = 1
addEvent(move, 1000, cid, target, playerpos, targetpos, times)
else
doPlayerSendCancel(cid, "Você ainda esta sobre a possecao do inimigo.")
end
end
end