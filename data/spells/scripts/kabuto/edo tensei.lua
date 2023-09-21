function onCastSpell(cid, var)
local quero_esses = {"Black Anbu","Gennin","Zabuza Boss","Haku","Snake","Wolf","Chunnin","Jounnin","Perfect Anbu","Unknow Akatsuki","Black Shinobi","Kazuma","Sword Master"}
min = quero_esses[math.random(1, #quero_esses)]
min2 = quero_esses[math.random(1, #quero_esses)]
min3 = quero_esses[math.random(1, #quero_esses)]
min4 = quero_esses[math.random(1, #quero_esses)]
min5 = quero_esses[math.random(1, #quero_esses)]
local playerpos = getPlayerPosition(cid)
local MaximoSummon = 5 --- Maximo de Monstros Sumonados!! No Caso So Posso Sumonar 5 Clones
local summons = getCreatureSummons(cid)
if(table.maxn(summons) < MaximoSummon) then -- no summons
local clone = doCreateMonster(min, playerpos)
local clone2 = doCreateMonster(min2, playerpos)
local clone3 = doCreateMonster(min3, playerpos)
local clone4 = doCreateMonster(min4, playerpos)
local clone5 = doCreateMonster(min5, playerpos)
doConvinceCreature(cid, clone)
doConvinceCreature(cid, clone2)
doConvinceCreature(cid, clone3)
doConvinceCreature(cid, clone4)
doConvinceCreature(cid, clone5)
doSendMagicEffect(playerpos, 2)
return TRUE
end

end