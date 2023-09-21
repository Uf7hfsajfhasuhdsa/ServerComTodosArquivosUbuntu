local config = { 
--[vocation id] = { level, nova voc, looktype, efeito} 
[1] = { 250, 1, 320, 205},
[2] = { 250, 2, 178, 138}, 
[3] = { 250, 3, 170, 140},
[4] = { 250, 4, 187, 114},
[5] = { 250, 5, 345, 183},
[6] = { 250, 6, 313, 190},
[7] = { 250, 7, 315, 90},
[8] = { 250, 8, 193, 154},
[9] = { 250, 9, 217, 179},
[10] = { 250, 10, 14, 173},
[11] = { 250, 11, 386, 199},
[12] = { 250, 12, 382, 199},
[13] = { 250, 13, 377, 208},
[21] = { 250, 21, 159, 191},
[23] = { 250, 23, 200, 148}, 
[24] = { 250, 24, 299, 175},
[25] = { 250, 25, 317, 175},
[50] = { 250, 50, 308, 79},
[58] = { 250, 58, 346, 175}
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
