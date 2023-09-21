local monsters = {   -- os monstro que podem ser sumonados.
[0] = {monster = 'Jibaku Bunshin', chance = 1000},    -- cada monster tem uma chance de ser sumonado.
}

local time = 1  -- tempo para usar a magia novamente.
local storage = 123654 -- storage.

function onCastSpell(cid, var)
local player = getCreaturePosition(cid)
local cloth = getCreatureOutfit(cid)
local MaximoSummon = 1 --- Maximo de Monstros Sumonados!! No Caso So Posso Sumonar 5 Clones
local summons = getCreatureSummons(cid)
	if(table.maxn(summons) < MaximoSummon) then -- no summons
		if getPlayerStorageValue(cid, storage) - os.time() <= 0 then
			for i = 0, #monsters do
				if (monsters[i].chance > math.random(100, 100)) then
				local creature = doCreateMonster(monsters[i].monster, player)
				doConvinceCreature(cid, creature)
				doSendMagicEffect(player, 111)
				setPlayerStorageValue(cid, storage, os.time()+time*20)
				doSetCreatureOutfit(creature, cloth, -1)
				end
			end
		end
	else
	doPlayerSendCancel(cid, "Você já tem um Monster Equipado com Bomba.")
	end
return TRUE
end