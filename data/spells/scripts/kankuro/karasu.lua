function onCastSpell(cid, var)


local playerpos = getPlayerPosition(cid)

local MaximoSummon = 2 --- Maximo de Monstros Sumonados!! No Caso So Posso Sumonar 5 Clones


local summons = getCreatureSummons(cid)

if(table.maxn(summons) < MaximoSummon) then -- no summons

local clone = doCreateMonster("karasu", playerpos)

doConvinceCreature(cid, clone)
doSendMagicEffect(playerpos, 2)

return TRUE

end

end