local config = { 
--[vocation id] = { level, nova voc, looktype, efeito} 
[1] = { 150, 1, 49, 205},
[2] = { 150, 2, 306, 138},
[3] = { 150, 3, 192, 183},
[4] = { 150, 4, 297, 154},
[5] = { 150, 5, 343, 154},
[6] = { 150, 6, 99, 183},
[7] = { 150, 7, 289, 183},
[9] = { 150, 9, 188, 183},
[12] = { 150, 12, 375, 183},
[13] = { 200, 13, 313, 183},
[17] = { 150, 17, 16, 183},
[18] = { 150, 18, 218, 183},
[40] = { 150, 40, 381, 183}
}

function onSay(cid, words, param, channel) 
doPlayerSay(cid, "transformar") 
local voc = config[getPlayerVocation(cid)] 
if voc then 
  if getPlayerLevel(cid) >= voc[1] then 
   doPlayerSetVocation(cid, voc[2]) 
   doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "Você Transformou!") 
   local outfit = {lookType = voc[3]} 
   doCreatureChangeOutfit(cid, outfit) 
   doSendMagicEffect(getCreaturePosition(cid), voc[4]) 
  else 
   doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "Você precisa estar no level " .. voc[1] .. " para transformar.") 
  end 
else 
  doPlayerSendCancel(cid, "Você não pode se Transformar!") 
end 
return true 
end
