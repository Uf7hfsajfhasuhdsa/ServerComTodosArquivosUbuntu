function onLogin(cid)

local rate = 1.35
local days = getPlayerPremiumDays(cid)

if isPremium(cid) then
doPlayerSetExperienceRate(cid, rate)
doPlayerSendTextMessage(cid,22,"Você tem "..((rate - 1)*100).."% de EXP em Vantagem,Alem de poder Usar Jutsus Exclusivos e ter Acesso a todas as Ilhas do Servidor ! Voce Possui "..days.." dias de Premium!")

else
doPlayerSendTextMessage(cid,22, "Torne-se Premium Account e tenha "..((rate - 1)*100).."% a mais de EXP Alem de poder usar Jutsus Exclusivos e ter Acesso a todas as Ilhas do Servidor ! Venha ser um Premium Account ..")
end
return true
end