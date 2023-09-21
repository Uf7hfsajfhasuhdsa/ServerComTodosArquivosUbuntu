function onCastSpell(cid, var)

local playerpos = getPlayerPosition(cid)
local cloth = getCreatureOutfit(cid)
local MaximoSummon = 1 --- Maximo de Monstros Sumonados!! No Caso So Posso Sumonar 5 Clones
local summons = getCreatureSummons(cid)
if(table.maxn(summons) < MaximoSummon) then -- no summons
local clone = doCreateMonster("kami bunshin", playerpos)
doConvinceCreature(cid, clone)
doSetCreatureOutfit(clone, cloth, -1)
doSendMagicEffect(playerpos, 2)
return TRUE
end

end