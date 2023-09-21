function onKill(cid, target) 
if(isMonster(target) == TRUE) then 
local n = getCreatureName(target) 
local name_monster = TaskTabble[string.lower(n)] 
if(name_monster) then 
local contagem = getPlayerStorageValue(cid, name_monster.storage) 
if (contagem == -1) then contagem = 1 end 
if not tonumber(contagem) then return true end 
if contagem > name_monster.count then return true end 
setPlayerStorageValue(cid, name_monster.storage, contagem+1) 
if contagem == name_monster.count then 
doPlayerSendTextMessage(cid, 18, "Congratulations! You finished the task of "..n) 
end 
end 
end 
return TRUE 
end
