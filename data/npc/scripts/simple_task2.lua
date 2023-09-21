-- Script por Killua, antigo Amoeba13 --

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}
function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end
function creatureSayCallback(cid, type, msg)
if(not npcHandler:isFocused(cid)) then
return false
end
local talkUser = NPCHANDLER_CONVbehavior == CONVERSATION_DEFAULT and 0 or cid

    if amoebaTask[msg] then
        if getPlayerStorageValue(cid, amoebaTask[msg].storage) == -1 then
            if getPlayerStorageValue(cid, amoebaTask[msg].storagecount) == amoebaTask[msg].count then
                local esperiencia = amoebaTask[msg].exp > 0 and "" ..amoebaTask[msg].exp.. " exp e " or ""
                local dineiro = amoebaTask[msg].money > 0 and "" .. amoebaTask[msg].money .. " gold coins e " or ""
                selfSay("Voce conseguiu completar a task de ".. msg .. ", parabens! Eu vou te dar " .. esperiencia .. "" .. dineiro .."alguns itens como recompensa.", cid)
                doPlayerAddExperience(cid, amoebaTask[msg].exp)
                doPlayerAddMoney(cid, amoebaTask[msg].money)
                doPlayerSetStorageValue(cid, amoebaTask[msg].storage, 1)
                for juba, prize in pairs(amoebaTask[msg].premios) do
                    doPlayerAddItem(cid, prize[1], prize[2])
                end
            else
                selfSay("Desculpe, mas voce ainda nao matou todos os " .. msg .. "s. Voce so matou " .. taskKills(cid, amoebaTask[msg].storagecount) .. " de " .. amoebaTask[msg].count .. " " .. msg .. "s.", cid)
            end
        else
            selfSay("Voce so pode recber uma vez o premio de cada task.", cid)
        end
    else
        selfSay("O que? Use !missao para ver os nomes.", cid)
    end
    return true
end
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())