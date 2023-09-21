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
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=1028, y=848, z=5} })
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'})
keywordHandler:addKeyword({'travel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Para onde deseja ir ? {Konohagakure}, {Sunagakure}, {Ishi no Kuni}, {Yume no Kuni}, {Amegafour Island}, {Tsuchi no Kuni}, {Kaminari no Kuni}, {South City}, {Kirigakure no Sato}, {Kinygakure}, {Yukinin no Kuni}, {An no Kuni}, {Otogakure}'})

local travelNode = keywordHandler:addKeyword({'sunagakure'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voce quer mesmo viajar?'})
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=527, y=1083, z=7} })
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'})

local travelNode = keywordHandler:addKeyword({'ishi no kuni'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voce quer mesmo viajar?'})
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 0, cost = 0, destination = {x=1301, y=1397, z=7} })
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'})

local travelNode = keywordHandler:addKeyword({'yume no kuni'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voce quer mesmo viajar?'})
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 0, cost = 0, destination = {x=188, y=1337, z=7} })
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'})

local travelNode = keywordHandler:addKeyword({'amegafour island'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voce quer mesmo viajar?'})
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 0, cost = 0, destination = {x=295, y=426, z=6} })
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'})

local travelNode = keywordHandler:addKeyword({'tsuchi no kuni'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voce quer mesmo viajar?'})
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=605, y=604, z=7} })
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'})

local travelNode = keywordHandler:addKeyword({'kaminari no kuni'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voce quer mesmo viajar?'})
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=1172, y=787, z=6} })
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'})

local travelNode = keywordHandler:addKeyword({'south city'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voce quer mesmo viajar?'})
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=918, y=1124, z=7} })
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'})

local travelNode = keywordHandler:addKeyword({'kirigakure no sato'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voce quer mesmo viajar?'})
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=1424, y=967, z=7} })
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'})

local travelNode = keywordHandler:addKeyword({'kinygakure'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voce quer mesmo viajar?'})
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 0, cost = 0, destination = {x=423, y=1371, z=7} })
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'})

local travelNode = keywordHandler:addKeyword({'yukinin no kuni'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voce quer mesmo viajar?'})
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 0, cost = 0, destination = {x=1298, y=1155, z=7} })
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'}) 
local travelNode = keywordHandler:addKeyword({'an no kuni'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voce quer mesmo viajar?'})
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 0, cost = 0, destination = {x=1101, y=1281, z=7} })
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'})

local travelNode = keywordHandler:addKeyword({'otogakure'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voce quer mesmo viajar?'})
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 0, cost = 0, destination = {x=688, y=1265, z=7} })
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'})



-- Makes sure the npc reacts when you say hi, bye etc.
npcHandler:addModule(FocusModule:new())