local config = { 
--[vocation id] = { level, nova voc, looktype, efeito} 
[1] = { 150, 1, 40, 205},
[2] = { 150, 2, 59, 138},
[3] = { 150, 3, 172, 140},
[4] = { 150, 4, 65, 114},
[5] = { 150, 5, 344, 183},
[6] = { 150, 6, 309, 190}, 
[7] = { 150, 7, 105, 90},
[8] = { 150, 8, 78, 154},
[9] = { 150, 9, 215, 179},
[10] = { 150, 10, 13, 173},
[11] = { 150, 11, 384, 199},
[12] = { 150, 12, 380, 199},
[13] = { 150, 13, 376, 208},
[21] = { 150, 21, 262, 191}, 
[23] = { 150, 23, 197, 148},
[24] = { 150, 24, 297, 175},
[25] = { 150, 25, 156, 175}, 
[50] = { 150, 50, 284, 79}, 
[58] = { 150, 58, 279, 175}
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
