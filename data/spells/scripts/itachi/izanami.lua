-- Script BY: ~Mathias Kenfi
-- Contato: jvms081@hotmail.com / 034991286815

local config = {
	time = 3, -- Tempo em que o alvo será teleportado após a ativação da spell \\ Tempo de duração do Looping
	loop = 250, -- Tempo, em milissegundos, do looping
	cooldown = 60, -- Tempo, em segundos, para usar a magia novamente
	areaeffect = 17,
	disteffect = 31 
}

local combat = createCombatObject()
local combat2 = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, config.areaeffect)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, config.disteffect)

function doTeleportPlayer(cid, pos)
		if isWalkable(pos, true, true, true) then
			return doTeleportThing(cid, pos, true)
		end
	return false
end

function doTeleportEnemy(target, cid)
	if target ~= 0 then
local posx = getPlayerStorageValue(target, 157788)
local posy = getPlayerStorageValue(target, 157789)
local posz = getPlayerStorageValue(target, 157790)
local toPosition = {x = posx, y = posy, z = posz}
		doSendDistanceShoot(getCreaturePos(target), toPosition, 35)
		doSendMagicEffect(toPosition, 10)
		doTeleportPlayer(target, toPosition)
	end
	return true
end

function onLoopCombat(cid, combat, var)
	if getPlayerStorageValue(cid, 153344) - os.time() <= 0 then
		return false
	end
	doCombat(cid, combat, var)
	return false
end

function savePlayerPos(cid)
	pos = getCreaturePos(cid)
	setPlayerStorageValue(cid, 157788, pos.x)
	setPlayerStorageValue(cid, 157789, pos.y)
	setPlayerStorageValue(cid, 157790, pos.z)
	return true
end

function onTargetCreature(cid, target)
	return addEvent(valid(doTeleportEnemy), config.time*1000, target, cid)
end
setCombatCallback(combat2, CALLBACK_PARAM_TARGETCREATURE, "onTargetCreature")

function onGetFormulaValues(cid, level)
local damage = 300
return -damage, -damage
end
setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")


function onCastSpell(cid, var)
target = getCreatureTarget(cid)
	if getPlayerStorageValue(cid, 153345) - os.time() <= 0 then
		setPlayerStorageValue(cid, 153344, os.time()+config.time)
		savePlayerPos(target)
		onLoopCombat(cid, combat, var, target)
		doCombat(cid, combat2, var)
		setPlayerStorageValue(cid, 153345, os.time()+config.cooldown)
	else
		doPlayerSendTextMessage(cid,22,"Aguarde "..math.max(0, tonumber(getPlayerStorageValue(cid, 153345) - os.time())).." segundos para utilizar a spell novamente")

	end
	return true
end