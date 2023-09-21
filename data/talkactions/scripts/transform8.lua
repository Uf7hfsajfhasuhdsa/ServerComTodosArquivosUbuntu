local config = { 
--[vocation id] = { level, nova voc, looktype, efeito} 
[1] = { 175, 1, 49, 205}, 
[2] = { 175, 2, 306, 138}, 
[3] = { 175, 3, 194, 140}, 
[4] = { 175, 4, 188, 114}, 
[5] = { 175, 5, 344, 183}, 
[6] = { 175, 6, 311, 190}, 
[7] = { 175, 7, 105, 90}, 
[8] = { 175, 8, 82, 154}, 
[9] = { 175, 9, 218, 179}, 
[10] = { 175, 10, 289, 173},
[21] = { 175, 21, 262, 191},
[23] = { 175, 23, 198, 148}, 
[24] = { 175, 24, 298, 175}, 
[50] = { 175, 50, 285, 79}
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
