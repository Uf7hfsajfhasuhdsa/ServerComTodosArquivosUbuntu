local transform = {

-- Naruto
[2022] = {[1] = 486, effect = 227},
-- Sasuke
[2023] = {[1] = 1709, [2] = 1710, [3] = 1711, [4] = 1712, effect = 664},
-- Sakura
[2024] = {[1] = 1709, [2] = 1710, [3] = 1711, [4] = 1712, effect = 664},
-- Lee
[2025] = {[1] = 1709, [2] = 1710, [3] = 1711, [4] = 1712, effect = 664},
-- Tenten
[2034] = {[1] = 1709, [2] = 1710, [3] = 1711, [4] = 1712, effect = 664},
-- Gaara
[2030] = {[1] = 1709, [2] = 1710, [3] = 1711, [4] = 1712, effect = 664},
-- Shikamaru
[2026] = {[1] = 1709, [2] = 1710, [3] = 1711, [4] = 1712, effect = 664},
-- Chouji
[2037] = {[1] = 1709, [2] = 1710, [3] = 1711, [4] = 1712, effect = 664},
-- Hashirama
[2038] = {[1] = 1709, [2] = 1710, [3] = 1711, [4] = 1712, effect = 664},
-- Tobirama
[2055] = {[1] = 1709, [2] = 1710, [3] = 1711, [4] = 1712, effect = 664},
-- Minato
[2047] = {[1] = 1709, [2] = 1710, [3] = 1711, [4] = 1712, effect = 664},
-- Tsunade
[2059] = {[1] = 1709, [2] = 1710, [3] = 1711, [4] = 1712, effect = 664},
-- Kakashi
[2028] = {[1] = 1709, [2] = 1710, [3] = 1711, [4] = 1712, effect = 664},
-- Madara
[2043] = {[1] = 1709, [2] = 1710, [3] = 1711, [4] = 1712, effect = 664},
-- Hidan
[2053] = {[1] = 1709, [2] = 1710, [3] = 1711, [4] = 1712, effect = 664},
-- Obito
[2049] = {[1] = 1709, [2] = 1710, [3] = 1711, [4] = 1712, effect = 664},
-- Killer Bee
[2031] = {[1] = 1709, [2] = 1710, [3] = 1711, [4] = 1712, effect = 664},
-- Kisame
[2035] = {[1] = 1709, [2] = 1710, [3] = 1711, [4] = 1712, effect = 664},
-- Konan
[2042] = {[1] = 1709, [2] = 1710, [3] = 1711, [4] = 1712, effect = 664},
-- Temari
[2033] = {[1] = 1709, [2] = 1710, [3] = 1711, [4] = 1712, effect = 664},


}


local level = 10 -- Limite para liberar uma transform nova


function onSay(cid, words, param, channel)


 if(param == '') then
  doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "[Saga] Informe o número da saga Ex : !saga 2")
  return true
 end


if not transform[getPlayerVocation(cid)] then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Você não pode trocar de saga agora.")
return true
end


local t = string.explode(param, ",")


 if(t[2]) then
  doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Comando não identificado.")
  return true
 end


 if not (tonumber(t[1])) then
  doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "[Saga] Informe o número da saga Ex : !saga 2")
  return true
 end


if tonumber(t[1]) > #transform[getPlayerVocation(cid)] or tonumber(t[1]) < 1  then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "[Erro] Essa saga não existe.")
return true
end

if getPlayerStorageValue(cid, verifiq) < 1 then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Você não tem permissão para usar esta saga.")
return false
end

if getPlayerLevel(cid) >= (tonumber(t[1])*level) then
local position = {x=getPlayerPosition(cid).x+1, y=getPlayerPosition(cid).y, z=getPlayerPosition(cid).z}
doSetCreatureOutfit(cid, {lookType = transform[getPlayerVocation(cid)][tonumber(t[1])]}, -1)
doSendMagicEffect(position, transform[getPlayerVocation(cid)].effect)
doSendMagicEffect(getThingPos(position), transform[getPlayerVocation(cid)].effect)
doPlayerSendTextMessage(cid, 25, "Parabéns, Você alterou sua saga !")
doPlayerSay(cid, "Aaahhh !", TALKTYPE_ORANGE_1)
else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "[Aviso] Desculpe mas você precisa estar no level "..(tonumber(t[1]) * level).." para usar essa saga.")
end


return true
end