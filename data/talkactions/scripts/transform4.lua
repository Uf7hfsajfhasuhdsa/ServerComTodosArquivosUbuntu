local config = { 
--[vocation id] = { level, nova voc, looktype, efeito} 
[1] = { 200, 1, 179, 205},
[2] = { 200, 2, 95, 138},
[3] = { 250, 3, 193, 138},
[4] = { 200, 4, 298, 154},
[5] = { 200, 5, 344, 154},
[6] = { 200, 6, 283, 154},
[7] = { 200, 7, 13, 183},
[9] = { 200, 9, 58, 183},
[12] = { 200, 12, 318, 183},
[13] = { 300, 13, 392, 183},
[17] = { 200, 17, 159, 183},
[18] = { 200, 18, 217, 183},
[40] = { 200, 40, 382, 183}
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
