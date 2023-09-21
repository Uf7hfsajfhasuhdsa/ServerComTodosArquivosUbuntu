function onCastSpell(cid, var)

local playerpos = getPlayerPosition(cid)
local cloth = getCreatureOutfit(cid)
local health = getCreatureHealth(cid)
local maxhealth = getCreatureMaxHealth(cid)
local MaximoSummon = 2 --- Maximo de Monstros Sumonados!! No Caso So Posso Sumonar 5 Clones
local summons = getCreatureSummons(cid)
if(table.maxn(summons) < MaximoSummon) then -- no summons
local clone1 = doCreateMonster("suiton bunshin", playerpos)
doConvinceCreature(cid, clone1)
setCreatureMaxHealth(clone1, maxhealth)
doCreatureAddHealth(clone1, health)
doSetCreatureOutfit(clone1, cloth, -1)
doSendMagicEffect(playerpos, 2)
return TRUE
end

end