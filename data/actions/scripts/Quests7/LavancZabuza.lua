--[[Script By Vodkart]]-- 
function onUse(cid, item, position, fromPosition) 
--[[ 
Nome do monstros, Coordenada de onde ele irá ser sumonado. 
Pode adicionar mais monstro caso assim desejar. 
--]] 
local M = {  
[1] = {"Zabuza Espadachim",{x=1299, y=1033, z=8}}
}  
 
local storage = 19908 -- n mexa 
local time_summon = 120 -- intervalo de tempo em minutos para nao summonar novamente 
 
if not isPlayer(cid) then
return FALSE
elseif getGlobalStorageValue(storage) >= os.time() then
doCreatureSay(cid, "O BOSS ja Foi Solto Por Outros Players Aguarde Algumas Horas Para Realizar A Quest Novamente!", 19) 
return FALSE
end
for i = 1, #M do  
doCreateMonster(M[i][1], M[i][2]) 
end 
doCreatureSay(cid, "Nossa, Zabuza Espadachim Foi Solto! Cuidado Ninjas", 19)  
setGlobalStorageValue(storage, os.time()+time_summon*60)   
return TRUE  
end