
local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)			npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()					npcHandler:onThink()					end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addBuyableItem({'konohamaru hat'}, 2657, 10, 'konohamaru hat')
shopModule:addBuyableItem({'haku mask'}, 2462, 40, 'haku mask')
shopModule:addBuyableItem({'Obito headband'}, 7436, 60, 'obito headband')
shopModule:addBuyableItem({'chakra mask'}, 2473, 90, 'chakra mask')
shopModule:addBuyableItem({'anbu mask #2'}, 2449, 1000, 'anbu mask #2')


shopModule:addSellableItem({'haku mask'}, 2462, 10, 'haku mask')
shopModule:addSellableItem({'Begginer Hunter Mask'}, 11510, 14, 'Begginer Hunter Mask')
shopModule:addSellableItem({'Obito headband'}, 7436, 20, 'Obito headband')
shopModule:addSellableItem({'Gennin Shinobi Mask'}, 11549, 16, 'Gennin Shinobi Mask')
shopModule:addSellableItem({'chakra mask'}, 2473, 24, 'chakra mask')
shopModule:addSellableItem({'Chunnin Shinobi Mask'}, 11553, 18, 'Chunnin Shinobi Mask')
shopModule:addSellableItem({'Kakash Mask'}, 2479, 50, 'Kakash Mask')
shopModule:addSellableItem({'Jounnin Shinobi Mask'}, 11557, 20, 'Jounnin Shinobi Mask')
shopModule:addSellableItem({'anbu mask #2'}, 2449, 100, 'anbu mask #2')
shopModule:addSellableItem({'Akatsuki Hat'}, 2652, 110, 'Akatsuki Hat')
shopModule:addSellableItem({'Nidaime protector'}, 7437, 150, 'Nidaime protector')
shopModule:addSellableItem({'Samurai Helmet'}, 11450, 130, 'Samurai Helmet')










function creatureSayCallback(cid, type, msg)
	if(not npcHandler:isFocused(cid)) then
		return false
	end
	if(msgcontains(msg, '798798765675765') or msgcontains(msg, '5765438767576567')) then
				selfSay('Jacolos Rox', cid)
				talkState[talkUser] = 1
end
	return true
end
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())


	
	
