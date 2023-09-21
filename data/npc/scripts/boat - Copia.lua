local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions start
function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end
-- OTServ event handling functions end

-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({'konohagakure'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voce quer mesmo viajar?'})
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=1007, y=869, z=5} })
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'})
keywordHandler:addKeyword({'travel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Para onde deseja ir ? {Konohagakure}, {Sunagakure}, {Yu no Kuni}, {An no Kuni}, {Ishi no Kuni}, {Yume no Kuni}, {Amegafour Island}, {Mind no Kuni}'})

local travelNode = keywordHandler:addKeyword({'sunagakure'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voce quer mesmo viajar?'})
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=537, y=982, z=7} })
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'})

local travelNode = keywordHandler:addKeyword({'yu no kuni'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voce quer mesmo viajar?'})
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 0, cost = 0, destination = {x=579, y=1394, z=6} })
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'})

local travelNode = keywordHandler:addKeyword({'ishi no kuni'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voce quer mesmo viajar?'})
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 0, cost = 0, destination = {x=1301, y=1397, z=7} })
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'})

local travelNode = keywordHandler:addKeyword({'yume no kuni'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voce quer mesmo viajar?'})
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 0, cost = 0, destination = {x=188, y=1337, z=7} })
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'})

local travelNode = keywordHandler:addKeyword({'an no kuni'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voce quer mesmo viajar?'})
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 0, cost = 0, destination = {x=1063, y=1308, z=7} })
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'})

local travelNode = keywordHandler:addKeyword({'amegafour island'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voce quer mesmo viajar?'})
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 0, cost = 0, destination = {x=295, y=426, z=6} })
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'})

local travelNode = keywordHandler:addKeyword({'mind no kuni'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voce quer mesmo viajar?'})
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=895, y=557, z=5} })
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'})
-- Makes sure the npc reacts when you say hi, bye etc.
npcHandler:addModule(FocusModule:new())