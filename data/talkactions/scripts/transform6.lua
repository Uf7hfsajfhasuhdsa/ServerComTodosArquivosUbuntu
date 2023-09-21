local config = { 
--[vocation id] = { level, nova voc, looktype, efeito} 
[1] = { 300, 1, 231, 205},
[2] = { 300, 2, 393, 138},
[3] = { 300, 3, 229, 183},
[4] = { 300, 4, 394, 154},
[5] = { 300, 5, 201, 154},
[6] = { 300, 6, 308, 183},
[9] = { 300, 9, 52, 183},
[12] = { 300, 12, 305, 183},
[18] = { 300, 18, 227, 183},
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
