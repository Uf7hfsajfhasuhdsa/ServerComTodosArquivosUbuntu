function onStepIn(cid, item, position, fromPosition)
 
local artigo = getPlayerSex(cid) == 0 and "[Vilarejo]" or "[Vilarejo]"
local nome = getPlayerSex(cid) == 0 and "A Guild" or "A Guild"
 
    if getPlayerGuildId(cid) > 0 then
        broadcastMessage(""..artigo.." "..nome.." "..getPlayerGuildName(cid).."	Esta Escondido Dentro do Vilarejo !")
    else
        broadcastMessage(""..artigo.." "..nome.." "..getPlayerGuildName(cid).." Esta Escondido Dentro do Vilarejo !")
    end
    return true
end