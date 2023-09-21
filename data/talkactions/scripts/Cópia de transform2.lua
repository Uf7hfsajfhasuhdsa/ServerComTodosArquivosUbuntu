local config = { 
--[vocation id] = { level, nova voc, looktype, efeito} 
[1] = { 25, 1, 66, 205}, 
[2] = { 25, 2, 93, 138},
[3] = { 25, 3, 175, 140},
[4] = { 25, 4, 67, 114}, 
[5] = { 25, 5, 341, 183},  
[6] = { 25, 6, 309, 190},  
[7] = { 25, 7, 101, 90},  
[8] = { 25, 8, 60, 154},  
[9] = { 25, 9, 214, 179},  
[10] = { 25, 10, 11, 173},  
[12] = { 25, 12, 378, 199},
[13] = { 25, 13, 373, 208},
[23] = { 25, 23, 69, 148},  
[24] = { 25, 24, 295, 175},  
[25] = { 25, 25, 158, 175},  
[50] = { 25, 50, 97, 175},
[58] = { 25, 58, 276, 175}
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
