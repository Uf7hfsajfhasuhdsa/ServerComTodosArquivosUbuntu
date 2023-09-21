function onCastSpell(cid, var)

local playerpos = getPlayerPosition(cid)
local MaximoSummon = 1 --- Maximo de Monstros Sumonados!! No Caso So Posso Sumonar 5 Clones
local summons = getCreatureSummons(cid)
if(table.maxn(summons) < MaximoSummon) then -- no summons
local clone1 = doCreateMonster("rinnegan one", playerpos)
local clone2 = doCreateMonster("rinnegan two", playerpos)
local clone3 = doCreateMonster("rinnegan three", playerpos)
local clone4 = doCreateMonster("rinnegan four", playerpos)
doConvinceCreature(cid, clone1)
doConvinceCreature(cid, clone2)
doConvinceCreature(cid, clone3)
doConvinceCreature(cid, clone4)
doSendMagicEffect(playerpos, 2)
return TRUE
end

end