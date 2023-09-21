local config = { 
--[vocation id] = { level, nova voc, looktype, efeito} 
[1] = { 100, 1, 77, 205},
[2] = { 100, 2, 5, 138},
[3] = { 100, 3, 191, 183},
[4] = { 100, 4, 296, 154},
[5] = { 100, 5, 342, 154},
[6] = { 100, 6, 98, 183},
[7] = { 100, 7, 10, 183},
[8] = { 200, 8, 206, 183},
[9] = { 100, 9, 65, 183},
[12] = { 100, 12, 374, 183},
[13] = { 150, 13, 311, 183},
[14] = { 250, 14, 209, 183},
[17] = { 100, 17, 323, 183},
[18] = { 100, 18, 216, 183},
[40] = { 100, 40, 380, 183}
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
