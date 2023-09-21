local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}
function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end
function creatureSayCallback(cid, type, msg)
if(not npcHandler:isFocused(cid)) then
return false
end
local talkUser = NPCHANDLER_CONVbehavior == CONVERSATION_DEFAULT and 0 or cid
local msg = string.lower(msg)
local moeda = 2152
local t = {
   ["armazenador de skins"] = {8, 11509}, -- ["nome do item"] = {quanto vai custar, id do tem que sera vendido}
   }
   


---------------------------------------------------------
if(msgcontains(msg, 'info')) then
selfSay('Para Adquirir Golds, basta fazer as tasks / quests!', cid)
talkState[talkUser] = 1
elseif(msgcontains(msg, 'Naruto Fun Online') and talkState[talkUser] == 1) then
if (getPlayerStorageValue(cid,112) > 0) then
selfSay('Voce ja Comprou.', cid)
else
if(doPlayerRemoveItem(cid, 6500, 25) == TRUE) then
doPlayerAddExperience(cid,1000)
doPlayerAddItem(cid,10136,1)
selfSay('Bom jogo !..', cid)
else
selfSay('Você Não Possui Fun Coins', cid)
end
end
return true
end
---------------------------------------------------------

if (msgcontains(msg, 'trade') or msgcontains(msg, 'Trade'))then
local str = ""
str = str .. "Eu Tenho esse Item para Trade : "
for name, pos in pairs(t) do
str = str.." {"..name.."} por "..pos[1].." Golds, "
end
str = str .. "."
npcHandler:say(str, cid)
elseif t[msg] then
                if doPlayerRemoveItem(cid,moeda,t[msg][1]) then
                       doPlayerAddItem(cid,t[msg][2],1)
                        npcHandler:say("Aqui está seu ".. getItemNameById(t[msg][2]) .."!", cid)
                else
                        npcHandler:say("Voce nao tem Golds suficientes !", cid)
                end
end
return TRUE
end
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())