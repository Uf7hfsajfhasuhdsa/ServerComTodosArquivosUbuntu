
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

shopModule:addBuyableItem({'konohamaru Coat'}, 2665, 10, 'konohamaru hat')
shopModule:addBuyableItem({'haku armor'}, 2489, 80, 'haku armor')
shopModule:addBuyableItem({'Iwagakure Tunic'}, 8875, 400, 'Iwagakure Tunic')
shopModule:addBuyableItem({'naruto robe'}, 7407, 300, 'naruto robe')
shopModule:addBuyableItem({'shino robe'}, 2476, 600, 'shino robe')
shopModule:addBuyableItem({'sasuke shirt'}, 2661, 900, 'sasuke shirt')
shopModule:addBuyableItem({'chakra armor'}, 2397, 1000, 'chakra armor')


shopModule:addSellableItem({'haku armor'}, 2489, 20, 'haku armor')
shopModule:addSellableItem({'Begginer Hunter Armor'}, 11511, 22, 'Begginer Hunter Armor')
shopModule:addSellableItem({'Kiba tunic'}, 2653, 26, 'Kiba tunic')
shopModule:addSellableItem({'Gennin Shinobi Armor'}, 11550, 30, 'Gennin Shinobi Armor')
shopModule:addSellableItem({'hyuuga shirt'}, 2487, 28, 'hyuuga shirt')
shopModule:addSellableItem({'Chunnin Shinobi Armor'}, 11554, 38, 'Chunnin Shinobi Armor')
shopModule:addSellableItem({'Iwagakure Tunic'}, 8875, 35, 'Iwagakure Tunic')
shopModule:addSellableItem({'Jounnin Shinobi Armor'}, 11558, 46, 'Jounnin Shinobi Armor')
shopModule:addSellableItem({'naruto robe'}, 7407, 100, 'naruto robe')
shopModule:addSellableItem({'shino robe'}, 2476, 110, 'shino robe')
shopModule:addSellableItem({'sasuke shirt'}, 2661, 150, 'sasuke shirt')
shopModule:addSellableItem({'chakra armor'}, 2397, 200, 'chakra armor')










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


	
	
