local config = { 
--[vocation id] = { level, nova voc, looktype, efeito} 
[1] = { 200, 1, 179, 205}, 
[2] = { 200, 2, 8, 138}, 
[3] = { 200, 3, 194, 140}, 
[4] = { 200, 4, 58, 114}, 
[5] = { 200, 5, 345, 183}, 
[6] = { 200, 6, 313, 190}, 
[7] = { 200, 7, 314, 90}, 
[8] = { 200, 8, 192, 154}, 
[9] = { 200, 9, 218, 179}, 
[10] = { 200, 10, 13, 173}, 
[11] = { 200, 11, 385, 199},
[12] = { 200, 12, 381, 199},
[13] = { 200, 13, 318, 208},
[21] = { 200, 21, 159, 191}, 
[23] = { 200, 23, 199, 148},
[24] = { 200, 24, 298, 175},
[25] = { 200, 25, 318, 175}, 
[50] = { 200, 50, 359, 79}, 
[58] = { 200, 58, 280, 175}
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
