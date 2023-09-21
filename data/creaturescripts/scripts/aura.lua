ef = 179 -- efeito que vai sai 
function onLogin(cid) 
if getPlayerLevel(cid)>= 250 then 
while TRUE do 
if not getPlayerLevel(cid)  then 
break 
end 
for i = -1 , 1 do 
for k = -1 , 1 do 
pos = {getCreaturePosition(cid).x + i, getCreaturePosition(cid).y + k, getCreaturePosition(cid).z } 
doSendMagicEffect(pos, ef) 
end 
end 
end 
end 
end