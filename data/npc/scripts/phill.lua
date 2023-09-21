local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

local forge = {}


local recipes = {
	[2145, 10] = {
		{7868, 1},
		{2392, 1},
		{8865, 1}
	}
}

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)			npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)			npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()					npcHandler:onThink()					end

function onGreetCallback(cid)
	talkState[cid] = 0
	forge[cid] = {match = nil, recipe = nil}
	return true
end

function onCreatureSayCallback(cid, class, msg)
	if(not npcHandler:isFocused(cid)) then
		return false
	end

	local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid

	if talkState[talkUser] == 0 then
		for itemid, items in pairs(recipes) do
			if msgcontains(msg, getItemNameById(itemid)) then
				forge[talkUser] = {match = itemid, recipe = items}
				break
			end
		end

		if forge[talkUser].match ~= nil then
			local str, sep = "Good choice, I will need"
			local n = 1
			for _, item in ipairs(forge[talkUser].recipe) do
				sep = (n == 1) and " " or (n == #forge[talkUser].recipe and " and " or ", ")
				str = str .. sep .. (item[2] or 1) .." ".. getItemNameById(item[1])
				n = n + 1
			end
			str = str ..". Agreed?"
			npcHandler:say(str, cid)
			talkState[talkUser] = 1
		else
			npcHandler:say("Sorry, I don't know how to forge it.", cid)
		end
	elseif talkState[talkUser] == 1 then
		if msgcontains(msg, "yes") then
			local ret = {}
			for _, item in ipairs(forge[talkUser].recipe) do
				local g = getPlayerItemById(cid, true, item[1])
				if g.uid > 0 and math.max(1, g.type) >= item[2] then
					table.insert(ret, {g.uid, item[2]})
				else
					ret = {}
					break
				end
			end

			if #ret > 0 then
				for _, item in ipairs(ret) do
					doRemoveItem(item[1], item[2])
				end
				doPlayerAddItemEx(cid, doCreateItemEx(forge[talkUser].match, 1))
				npcHandler:say("Thank you, heh, here is your ".. getItemNameById(forge[talkUser].match) ..".", cid)
			else
				npcHandler:say("Sorry, but you don't have all the items I need.", cid)
				talkState[talkUser] = 0
				forge[talkUser] = {match = nil, recipe = nil}
			end
		elseif msgcontains(msg, "no") then
			npcHandler:say("Alright, do you need anything else?.", cid)
			talkState[talkUser] = 0
			forge[talkUser] = {match = nil, recipe = nil}
		end
	end
	return true
end

local greet, sep = "Hello, |PLAYERNAME|. Actually I can trade {rare} stuff for some items, pretty, heh? This is what I have:"
local n = 1
for item, recipe in pairs(recipes) do
	sep = (n == 1) and " " or (n == #recipes and " and " or ", ")
	greet = greet .. sep .. "{".. getItemNameById(item) .."}"
	n = n + 1
end

npcHandler:setMessage(MESSAGE_GREET, greet)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, onCreatureSayCallback)
npcHandler:setCallback(CALLBACK_GREET, onGreetCallback)
npcHandler:addModule(FocusModule:new())