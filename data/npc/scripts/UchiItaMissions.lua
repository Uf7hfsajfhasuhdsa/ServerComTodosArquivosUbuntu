local keywordHandler = KeywordHandler:new()  
local npcHandler = NpcHandler:new(keywordHandler)  
NpcSystem.parseParameters(npcHandler)  

function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)        end  
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)        end  
function onCreatureSay(cid, type, msg)        npcHandler:onCreatureSay(cid, type, msg)    end  
function onThink()                npcHandler:onThink()                end  


-- configuracao do script addon items --

function Primeira(cid, message, keywords, parameters, node)  
   if(not npcHandler:isFocused(cid)) then  
       return false  
   end  
       if getPlayerItemCount(cid,2307) >= 2000 then  
       if doPlayerRemoveItem(cid,2307,2000)  then   
           npcHandler:say('Muito Bom Ninja !{Você Recebeu sua Recompensa por me Ajudar !', cid)  
		   doPlayerAddExperience(cid,200000)
		   doPlayerAddItem(cid,2432,1)
       end  
       else  
           npcHandler:say('Desculpe mais voce nao tem os itens!!', cid)  
  end     
end

-- end --

keywordHandler:addKeyword({'ajudar'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Olá Ninja !  Quer Realizar 1 Mission ? {mission}'})

keywordHandler:addKeyword({'HSUAHDJBDGV'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Lista {Relic Amulet},{Soul Stone},{Yellow Rose},{Mandrake},{Nose Ring}.'})
keywordHandler:addKeyword({'palalaelleleoeleokdjs'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Eu ofereço {earthborn titan armor},{windborn colossus armor},{oceanborn leviathan armor},{fireborn giant armor},{witchhunter’s coat},{dark lord’s cape},{divine plate},{paladin armor},{royal scale robe},{magic plate armor},{elite draken helmet} '})

local node1 = keywordHandler:addKeyword({'mission'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Consiga para mim esses items importantes {2000 Secret Konoha Archives}'})  
   node1:addChildKeyword({'yes'}, Primeira, {npcHandler = npcHandler, onlyFocus = true, reset = true})  
   node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Tudo bem,volte quando tiver os itens!.', reset = false}) 
   
   

npcHandler:addModule(FocusModule:new())