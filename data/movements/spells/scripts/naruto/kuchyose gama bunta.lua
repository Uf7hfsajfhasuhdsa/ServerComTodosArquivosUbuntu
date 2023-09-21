function onCastSpell(cid, var)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 152)
local playerpos = getPlayerPosition(cid)
local cloth = getCreatureOutfit(cid)
local health = getCreatureHealth(cid)
local maxhealth = getCreatureMaxHealth(cid)
local MaximoSummon = 1 --- Maximo de Monstros Sumonados!! No Caso So Posso Sumonar 10 Clones

local summons = getCreatureSummons(cid)
if(table.maxn(summons) < MaximoSummon) then -- no summons
local clone = doCreateMonster("gama bunta", playerpos)
doConvinceCreature(cid, clone)
setCreatureMaxHealth(80000, maxhealth)
doCreatureAddHealth(80000, health)
doSetCreatureOutfit(131, cloth, -1)
doSendMagicEffect(playerpos, 2)
return TRUE
end
end
