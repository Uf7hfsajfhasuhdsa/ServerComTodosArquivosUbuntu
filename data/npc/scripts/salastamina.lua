local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)    npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid)    npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg)  npcHandler:onCreatureSay(cid, type, msg) end
function onThink()       npcHandler:onThink() end

local travelNode = keywordHandler:addKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, onlyFocus = true, text = 'Bye,Bye ', cost = 3000, destination = {x=1062, y=826, z=7}})

        
npcHandler:addModule(FocusModule:new())