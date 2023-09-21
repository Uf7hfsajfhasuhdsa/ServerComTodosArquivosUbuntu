local bless = {1, 2, 3, 4, 5}
local cost = 500000  
function onSay(cid, words, param)
for i = 1, table.maxn(bless) do
if(getPlayerBlessing(cid, bless[i])) then
doPlayerSendCancel(cid, "You is blessed.")
return TRUE
end
end

if(doPlayerRemoveMoney(cid, cost) == TRUE) then
for i = 1, table.maxn(bless) do
doPlayerAddBlessing(cid, bless[i])
end
doCreatureSay(cid, "You are now blessed!" ,19)
doSendMagicEffect(getPlayerPosition(cid), 13)
else
doPlayerSendCancel(cid, "You need 50 golds to buy bless.")
end
return TRUE
end