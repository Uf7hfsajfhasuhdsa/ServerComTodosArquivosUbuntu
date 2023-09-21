 --[[script By Vodkart]]-- 
function onStepIn(cid, item, position, fromPosition) 
--[[ 
Nome do monstros, Coordenada de onde ele irá ser sumonado. 
Pode adicionar mais monstro caso assim desejar. 
--]] 
local M = {  
[1] = {"Ultimate Kyuubi",{x = 953, y = 1342, z = 9}},  
[2] = {"Ultimate Kyuubi",{x = 954, y = 1340, z = 9}}, 
[3] = {"Ultimate Kyuubi",{x = 954, y = 1343, z = 9}}, 
[4] = {"Ultimate Kyuubi",{x = 953, y = 1343, z = 9}}  
}  

local storage = 13317 -- n mexa 
local time_summon = 3 -- intervalo de tempo em minutos para nao summonar novamente 

if not isPlayer(cid) then
return FALSE
elseif getGlobalStorageValue(storage) >= os.time() then 
return FALSE
end
for i = 1, #M do  
doCreateMonster(M[i][1], M[i][2]) 
end 
doCreatureSay(cid, "OMG, a trap!", 19)  
setGlobalStorageValue(storage, os.time()+time_summon*60)   
return TRUE  
end