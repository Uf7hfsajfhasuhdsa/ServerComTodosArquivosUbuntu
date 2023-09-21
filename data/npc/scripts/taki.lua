
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

shopModule:addBuyableItem({'gennin legs'}, 2478, 10, 'gennin legs')
shopModule:addBuyableItem({'haku legs'}, 2488, 40, 'haku legs')
shopModule:addBuyableItem({'hyuuga legs'}, 2649, 85, 'hyuuga legs')
shopModule:addBuyableItem({'sasuke short'}, 7415, 110, 'sasuke short')
shopModule:addBuyableItem({'chunnin legs'}, 7461, 160, 'chunnin legs')


shopModule:addSellableItem({'haku legs'}, 2488, 20, 'haku legs')

shopModule:addSellableItem({'Begginer Hunter Legs'}, 11512, 18, 'Begginer Hunter Legs')

shopModule:addSellableItem({'taijutsu legs'}, 8868, 26, 'taijutsu legs')

shopModule:addSellableItem({'Gennin Shinobi Legs'}, 11551, 22, 'Gennin Shinobi Legs')

shopModule:addSellableItem({'hyuuga legs'}, 2649, 28, 'hyuuga legs')

shopModule:addSellableItem({'Chunnin Shinobi Legs'}, 11555, 26, 'Chunnin Shinobi Legs')

shopModule:addSellableItem({'sasuke short'}, 7415, 35, 'sasuke short')

shopModule:addSellableItem({'Jounnin Shinobi Legs'}, 11559, 30, 'Jounnin Shinobi Legs')

shopModule:addSellableItem({'chunnin legs'}, 7461, 40, 'chunnin legs')

shopModule:addSellableItem({'icy legs'}, 2428, 40, 'icy legs')

shopModule:addSellableItem({'gaara legs'}, 7457, 35, 'gaara legs')

shopModule:addSellableItem({'sasuke legrobe'}, 2125, 100, 'sasuke legrobe')










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


	
	
