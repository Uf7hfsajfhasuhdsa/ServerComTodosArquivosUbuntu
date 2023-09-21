local positionss = {
--- Fontes Lado Esquerdo ---
{ x = 1046, y = 824, z = 7},   -----You have to write here all positions which you want to heal
{ x = 1046, y = 825, z = 7},
{ x = 1046, y = 826, z = 7},
{ x = 1046, y = 827, z = 7},
{ x = 1046, y = 828, z = 7},
{ x = 1047, y = 824, z = 7},
{ x = 1047, y = 825, z = 7},
{ x = 1047, y = 826, z = 7},
{ x = 1047, y = 827, z = 7},
{ x = 1047, y = 828, z = 7},
{ x = 1048, y = 824, z = 7},
{ x = 1048, y = 825, z = 7},
{ x = 1048, y = 826, z = 7},
{ x = 1048, y = 827, z = 7},
{ x = 1048, y = 828, z = 7},
{ x = 1049, y = 824, z = 7},
{ x = 1049, y = 825, z = 7},
{ x = 1049, y = 826, z = 7},
{ x = 1049, y = 827, z = 7},
{ x = 1049, y = 828, z = 7},
{ x = 1050, y = 824, z = 7},
{ x = 1050, y = 825, z = 7},
{ x = 1050, y = 826, z = 7},
{ x = 1050, y = 827, z = 7},
{ x = 1050, y = 828, z = 7},
{ x = 1051, y = 824, z = 7},
{ x = 1051, y = 825, z = 7},
{ x = 1051, y = 826, z = 7},
{ x = 1051, y = 827, z = 7},
{ x = 1051, y = 828, z = 7},
{ x = 1052, y = 824, z = 7},
{ x = 1052, y = 825, z = 7},
{ x = 1052, y = 826, z = 7},
{ x = 1052, y = 827, z = 7},
{ x = 1052, y = 828, z = 7},
{ x = 1053, y = 825, z = 7},
{ x = 1053, y = 826, z = 7},


--- Fontes Lado Direito ---
{ x = 1037, y = 824, z = 7},   -----You have to write here all positions which you want to heal
{ x = 1037, y = 825, z = 7},
{ x = 1037, y = 826, z = 7},
{ x = 1037, y = 827, z = 7},
{ x = 1037, y = 828, z = 7},
{ x = 1038, y = 824, z = 7},
{ x = 1038, y = 825, z = 7},
{ x = 1038, y = 826, z = 7},
{ x = 1038, y = 827, z = 7},
{ x = 1038, y = 828, z = 7},
{ x = 1039, y = 824, z = 7},
{ x = 1039, y = 825, z = 7},
{ x = 1039, y = 826, z = 7},
{ x = 1039, y = 827, z = 7},
{ x = 1039, y = 828, z = 7},
{ x = 1040, y = 824, z = 7},
{ x = 1040, y = 825, z = 7},
{ x = 1040, y = 826, z = 7},
{ x = 1040, y = 827, z = 7},
{ x = 1040, y = 828, z = 7},
{ x = 1041, y = 824, z = 7},
{ x = 1041, y = 825, z = 7},
{ x = 1041, y = 826, z = 7},
{ x = 1041, y = 827, z = 7},
{ x = 1041, y = 828, z = 7}
}
function onThink(cid, interval, lastExecution)
for _, pos in ipairs(positionss) do
pl = getTopCreature(pos)
if pl.itemid == 1 then
doCreatureAddHealth(pl.uid, math.random(400,600)) -- if want to full change to "getCreatureMaxHealth(cid)-getCreatureHealth(cid)"
doCreatureAddMana(pl.uid, math.random(600,900)) -- if want to full change to "getCreatureMaxMana(cid)-getCreatureMana(cid)"
end
end
return TRUE
end