function onCastSpell(cid, var)

local playerpos = getPlayerPosition(cid)
local cloth = getCreatureOutfit(cid)
local health = getCreatureHealth(cid)
local maxhealth = getCreatureMaxHealth(cid)
local MaximoSummon = 2 --- Maximo de Monstros Sumonados!! No Caso So Posso Sumonar 1 Clones

local summons = getCreatureSummons(cid)
if(table.maxn(summons) < MaximoSummon) then -- no summons
local clone = doCreateMonster("karasu max", playerpos)
doConvinceCreature(cid, clone)
setCreatureMaxHealth(500000, maxhealth)
doCreatureAddHealth(500000, health)
doSetCreatureOutfit(32, cloth, -1)
doSendMagicEffect(playerpos, 19)
return TRUE
end
end
