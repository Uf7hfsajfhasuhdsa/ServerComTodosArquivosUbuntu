function onCastSpell(cid, var)
local cloth = getCreatureOutfit(cid)
local health = getCreatureHealth(cid)
local maxhealth = getCreatureMaxHealth(cid)
local MaximoSummon = 9
 
local summons = getCreatureSummons(cid)
if(table.maxn(summons) < MaximoSummon) then 
 
 local pos = getPlayerPosition(cid)
 local bpos = {
 {x=pos.x, y = pos.y, z = pos.z},
 {x=pos.x+1, y = pos.y, z = pos.z},
 {x=pos.x+1, y = pos.y+1, z = pos.z}, 
 {x=pos.x+1, y = pos.y+2, z = pos.z},
 {x=pos.x+1, y = pos.y-1, z = pos.z},
 {x=pos.x-1, y = pos.y+1, z = pos.z},
 {x=pos.x-1, y = pos.y+2, z = pos.z},
 {x=pos.x-1, y = pos.y-1, z = pos.z},
 {x=pos.x, y = pos.y-1, z = pos.z} 
 } 
 
for i = 1, (#bpos - table.maxn(summons)) do 
local Bunshin = doCreateMonster("kage bunshin", bpos[i])
doConvinceCreature(cid, Bunshin)
setCreatureMaxHealth(Bunshin, maxhealth)
doCreatureAddHealth(Bunshin, health)
doSetCreatureOutfit(Bunshin, cloth, -1)
doSendMagicEffect(bpos[i], 2)
end
return true
end
end