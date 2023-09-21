local config = { 
--[vocation id] = { level, nova voc, looktype, efeito} 
[1] = { 250, 1, 320, 205},
[2] = { 250, 2, 94, 138},
[3] = { 250, 3, 229, 183},
[4] = { 250, 4, 299, 154},
[5] = { 250, 5, 345, 154},
[6] = { 250, 6, 100, 154},
[7] = { 250, 7, 14, 183},
[9] = { 250, 9, 187, 183},
[12] = { 250, 12, 377, 183},
[17] = { 250, 17, 211, 183},
[18] = { 250, 18, 225, 183},
[40] = { 300, 40, 390, 183}
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
