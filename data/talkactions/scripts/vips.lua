function onSay(cid, words, param, channel)

local days = 30 --Quantos dias vai adicionar
local dinheiro = 100 --O Preço do da premium

if words=="!sozika" then
doPlayerRemoveMoney(cid, dinheiro)
doPlayerAddPremiumDays(cid, days)
else
doCreatureSay(cid, "Voce Comprou 30 dias de premium", TALKTYPE_ORANGE_1)
return TRUE
end