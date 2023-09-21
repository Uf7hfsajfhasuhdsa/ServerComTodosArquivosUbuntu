
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

shopModule:addBuyableItem({'shuriken'}, 2545, 5, 'shuriken')
shopModule:addBuyableItem({'sand shuriken'}, 2544, 7, 'sand shuriken')
shopModule:addBuyableItem({'elite shuriken'}, 2546, 55, 'elite shuriken')
shopModule:addBuyableItem({'big shuriken'}, 2399, 100, 'big shuriken')

shopModule:addSellableItem({'sand shuriken'}, 2544, 2, 'sand shuriken')
shopModule:addSellableItem({'elite shuriken'}, 2546, 4, 'elite shuriken')
shopModule:addSellableItem({'big shuriken'}, 2399, 6, 'big shuriken')











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


	
	
