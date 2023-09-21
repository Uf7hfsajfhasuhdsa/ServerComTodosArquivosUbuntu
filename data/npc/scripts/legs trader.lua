
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

shopModule:addBuyableItem({'gennin shorts'}, 2427, 200, 'gennin shorts')
shopModule:addBuyableItem({'chuunin shorts'}, 7462, 500, 'chuunin shorts')
shopModule:addBuyableItem({'gennin legs'}, 7461, 1000, 'gennin legs')
shopModule:addBuyableItem({'jounin legs'}, 8851, 4000, 'jounin legs')
shopModule:addBuyableItem({'elite jounin legs'}, 7460, 10000, 'elite jounin legs')
shopModule:addBuyableItem({'gaara legs'}, 7457, 30000, 'gaara legs')
shopModule:addBuyableItem({'death legs'}, 7413, 50000, 'death legs')
shopModule:addBuyableItem({'icy legs'}, 2428, 60000, 'icy legs')
shopModule:addBuyableItem({'chakra legs'}, 2430, 100000, 'chakra legs')
shopModule:addBuyableItem({'sennin legs'}, 2431, 200000, 'sennin legs')


shopModule:addSellableItem({'gennin shorts'}, 2427, 100, 'gennin shorts')
shopModule:addSellableItem({'chuunin shorts'}, 7462, 250, 'chuunin shorts')
shopModule:addSellableItem({'gennin legs'}, 7461, 500, 'gennin legs')
shopModule:addSellableItem({'jounin legs'}, 8851, 2000, 'jounin legs')
shopModule:addSellableItem({'elite jounin legs'}, 7460, 5000, 'elite jounin legs')
shopModule:addSellableItem({'gaara legs'}, 7457, 15000, 'gaara legs')
shopModule:addSellableItem({'death legs'}, 7413, 25000, 'death legs')
shopModule:addSellableItem({'taijutsu legs'}, 8868, 40000, 'taijutsu legs')
shopModule:addSellableItem({'icy legs'}, 2428, 30000, 'icy legs')
shopModule:addSellableItem({'chakra legs'}, 2430, 50000, 'chakra legs')
shopModule:addSellableItem({'naruto kyuubi legs'}, 7406, 75000, 'naruto kyuubi legs')
shopModule:addSellableItem({'sasuke legrobe'}, 7389, 75000, 'sasuke legrobe')
shopModule:addSellableItem({'sennin legs'}, 2431, 100000, 'sennin legs')





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



	
	
	
