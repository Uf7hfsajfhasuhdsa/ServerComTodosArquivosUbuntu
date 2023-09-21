local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)    npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid)    npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg)  npcHandler:onCreatureSay(cid, type, msg) end
function onThink()       npcHandler:onThink() end

local travelNode = keywordHandler:addKeyword({'konohagakure'}, StdModule.travel, {npcHandler = npcHandler, onlyFocus = true, text = 'Bye,Bye ', cost = 0, destination = {x=1023, y=845, z=3}})

local travelNode = keywordHandler:addKeyword({'sunagakure'}, StdModule.travel, {npcHandler = npcHandler, onlyFocus = true, text = 'Bye,Bye ', cost = 0, destination = {x=516, y=1084, z=4}})

local travelNode = keywordHandler:addKeyword({'kaminari no kuni'}, StdModule.travel, {npcHandler = npcHandler, onlyFocus = true, text = 'Bye,Bye ', cost = 0, destination = {x=1173, y=778, z=6}})

local travelNode = keywordHandler:addKeyword({'vilarejo'}, StdModule.travel, {npcHandler = npcHandler, onlyFocus = true, text = 'Bye,Bye ', cost = 2000, destination = {x=1764, y=1082, z=5}})

        
npcHandler:addModule(FocusModule:new())