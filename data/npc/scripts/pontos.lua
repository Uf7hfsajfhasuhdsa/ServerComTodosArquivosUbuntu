local item_1 = 2136 -- ID do item necessário para a troca
local item_2 = 2136 -- ID do item que recebe ao dar item_1

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

local function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end

	player = Player(cid);

	if msgcontains(msg, "AD643CA3A7BE4003BD6CDD07BFF37CCF") then
		if getGlobalStorageValue(98740) < 1 then
			if player:getItemCount(item_1) >= 0 then
				npcHandler:say("Você tem certeza Matheus Dias ?", cid);
				npcHandler.topic[cid] = 1;
			else
				npcHandler:say("Você não é o Matheus Dias", cid);
				npcHandler.topic[cid] = 0;
			end
		else
			npcHandler:say("Você já Pegou Seus Pontos.", cid);
			npcHandler.topic[cid] = 0;
		end
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 1 and player:getItemCount(item_1) >= 0 then
		npcHandler:say("Aqui está o seu item!", cid);
		player:removeItem(item_1, 0);
		player:addItem(item_2, 100);
		getGlobalStorageValue(98740, 1);
		npcHandler.topic[cid] = 0;
	end

	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())