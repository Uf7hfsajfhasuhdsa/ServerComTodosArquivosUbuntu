local tab = {
	price = 3000, -- Preco BLESS, 50 = 50k
	price2 = 1000 -- Preco AOL, 20 = 20k
}
local bless = {1, 2, 3, 4, 5}

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)              npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid)           npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg)  npcHandler:onCreatureSay(cid, type, msg) end
function onThink()                      npcHandler:onThink() end

function creatureSayCallback(cid, type, msg)
	if (not npcHandler:isFocused(cid)) then
		return false
	end
	
	local talkUser = NPCHANDLER_CONVbehavior == CONVERSATION_DEFAULT and 0 or cid
	if (msgcontains(msg, 'protection')) then
		talkState[talkUser] = 1
		selfSay('Deseja comprar {Protection}? Isso ira te custar 30 Dolares!', cid)
	elseif (msgcontains(msg, 'yes') and talkState[talkUser] == 1) then
		for i = 1, table.maxn(bless) do
		if getPlayerBlessing(cid, bless[i]) then
		selfSay('Voce ja tem Protection.', cid)
		elseif (doPlayerRemoveMoney(cid, tab.price) == TRUE) then
		doPlayerAddBlessing(cid, bless[i])
		talkState[talkUser] = 0
		selfSay('Voce comprou Protection.', cid)
		doSendMagicEffect(getPlayerPosition(cid), 12)
		elseif (doPlayerRemoveMoney(cid, tab.price) == FALSE) then
		selfSay('Voce nao tem dinheiro suficiente!', cid)
		end
		end
	elseif msgcontains(msg, 'jam') then
		talkState[talkUser] = 2
		selfSay('Deseja comprar uma Jam por '..tab.price2..'Gold Bars?', cid)
	elseif (msgcontains(msg, 'yes') and talkState[talkUser] == 2) then
		if (doPlayerRemoveMoney(cid, tab.price2) == TRUE) then
		doPlayerAddItem(cid,2138,1)
		talkState[talkUser] = 0
		doSendMagicEffect(getPlayerPosition(cid),5)
		selfSay('Aqui esta sua Jam!', cid)
		else
		selfSay('Voce nao tem dinheiro suficiente!', cid)
		end
		end
		return true
		end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())