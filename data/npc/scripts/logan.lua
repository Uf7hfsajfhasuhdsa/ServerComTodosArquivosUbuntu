
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

shopModule:addBuyableItem({'ninja boots'}, 2643, 10, 'gennin legs')
shopModule:addBuyableItem({'speed boots'}, 2525, 80, 'speed boots')


shopModule:addSellableItem({'speed boots'}, 2525, 20, 'speed boots')
shopModule:addSellableItem({'Begginer Hunter Boots'}, 11513, 15, 'Begginer Hunter Boots')
shopModule:addSellableItem({'jounnin boots'}, 2642, 26, 'jounnin boots')
shopModule:addSellableItem({'Gennin Shinobi Boots'}, 11552, 19, 'Gennin Shinobi Boots')
shopModule:addSellableItem({'Vital Boots'}, 7402, 100, 'Vital Boots')
shopModule:addSellableItem({'Chunnin Shinobi Boots'}, 11556, 23, 'Chunnin Shinobi Boots')
shopModule:addSellableItem({'Jounnin Shinobi Boots'}, 11560, 27, 'Jounnin Shinobi Boots')











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


	
	
