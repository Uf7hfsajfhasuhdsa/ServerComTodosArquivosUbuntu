local keywordHandler = KeywordHandler:new()

local npcHandler = NpcHandler:new(keywordHandler)

NpcSystem.parseParameters(npcHandler)

local talkState = {}

local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid

function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end

function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end

function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end

function onThink() npcHandler:onThink() end



function greetCallback(cid)

talkState[talkUser] = 0

return true

end



local diamondsIds = 2160 -- põe o id do diamond

local diamondsQuant = 50 -- quantidade que ira remover de diamonds



function creatureSayCallback(cid, type, msg)



local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid



if(not npcHandler:isFocused(cid)) then  

	return false  

end



if msgcontains(msg, 'yes') then

	if getPlayerItemCount(cid, diamondsIds) >= diamondsQuant then

	    doPlayerRemoveItem(cid, diamondsIds, diamondsQuant)

		for i=1, 5 do

			doPlayerAddBlessing(cid, i)

		end

		selfSay("Você recebeu sua bless!", cid)

	else		

		selfSay("Você precisa de "..diamondsQuant.." golds para comprar bless.", cid)

	end

end



return true

end



npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())