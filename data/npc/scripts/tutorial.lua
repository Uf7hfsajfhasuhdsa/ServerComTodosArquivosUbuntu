local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)	npcHandler:onCreatureAppear(cid)	end
function onCreatureDisappear(cid)	npcHandler:onCreatureDisappear(cid)	end
function onCreatureSay(cid, type, msg)	npcHandler:onCreatureSay(cid, type, msg)	end
function onThink()	npcHandler:onThink()	end
 
npcHandler:setMessage(MESSAGE_GREET, "Ola |PLAYERNAME|. Quer Ajuda?. Basta dizer essas palavras {boss}, {hunts}, {tasks}, {events}, e tirará todas suas dúvidas.")
 
keywordHandler:addKeyword({'boss'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Você pode encontrar os BOSS colando este link em seu navegador {https://i.imgur.com/Ffd8xei.jpg}'})
keywordHandler:addKeyword({'hunts'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Você pode encontrar as HUNTs colando este link em seu navegador {http://bit.ly/2iRs3B8}'})
keywordHandler:addKeyword({'tasks'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Você precisa pedir a missão para a {Hokage Tsunade}, para ver suas Missões dia {!task}'})
keywordHandler:addKeyword({'events'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Nós temos eventos diários {invasões as 20:00h horário de brasília} e também {Castle War as 21:00 horário de brasília} '})

npcHandler:addModule(FocusModule:new())