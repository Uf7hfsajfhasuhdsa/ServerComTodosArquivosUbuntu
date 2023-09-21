function onSay(cid, words, param) 
local str = "" 
str = str .. "Task Completed :\n\n" 
for k, v in pairsByKeys(TaskTabble) do 
local contagem = getPlayerStorageValue(cid, v.storage) 
if (contagem == -1) then contagem = 1 end 
str = str..k.." = ".. (not tonumber(contagem) and "["..contagem.."]" or "["..((contagem)-1).."/"..v.count.."]") .."\n" 
end 
str = str .. "" 
return doShowTextDialog(cid, 8983, str) 
end
