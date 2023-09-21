local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)        end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)        end
function onCreatureSay(cid, type, msg)        npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                npcHandler:onThink()                end

local opcao1 = nil
local opcao2 = nil
local pokemonNameOpcao1 = ''
local pokemonNameOpcao2 = ''
local opcaoSelecionada = nil

function creatureSayCallback(cid, type, msg)

    if(not npcHandler:isFocused(cid)) then
        return false
    end

    if msgcontains(msg, 'daily') then

        if (getPlayerStorageValue(cid, task_start) >= 1) then
            return selfSay("Voce ja escolheu uma task hoje, termine-a primeiro.")
        end

        if (getPlayerStorageValue(cid, 829384) > os.time()) then
            return  selfSay("Voce ja terminou a sua task hoje, volte amanha.")
        end

        setPlayerStorageValue(cid, 829384, -1)
        selfSay("Diga 'monsters' para saber quais monsters estao disponiveis hoje.")
        talkState[cid] = 0
    end

    if (getPlayerStorageValue(cid, 829384) < os.time()) then
        if msgcontains(msg, 'monsters') and talkState[cid] == 0 and pokemonNameOpcao1 == '' and pokemonNameOpcao2 == '' then
            
            opcao1 = PokemonOpcao1()
            opcao2 = PokemonOpcao2()

            pokemonNameOpcao1 = opcao1.PokemonName
            pokemonNameOpcao2 = opcao2.PokemonName

            selfSay("Opcao 1: Voce tera que derrotar "..opcao1.Count.." "..opcao1.PokemonName.."(s).")
            selfSay("Opcao 2: Voce tera que derrotar "..opcao2.Count.." "..opcao2.PokemonName.."(s).")
            
            talkState[cid] = 1
        end

        if msgcontains(msg, 'monsters') and talkState[cid] == 0 and pokemonNameOpcao1 ~= '' and pokemonNameOpcao2 ~= '' then

            selfSay("Essas sao as opcoes de monsters para voce hoje.")
            selfSay("Opcao 1: Voce tera que derrotar "..opcao1.Count.." "..opcao1.PokemonName.."(s).")
            selfSay("Opcao 2: Voce tera que derrotar "..opcao2.Count.." "..opcao2.PokemonName.."(s).")
            talkState[cid] = 1

        end

    end

    if msgcontains(string.lower(msg), string.lower(pokemonNameOpcao1)) and talkState[cid] == 1 then
        opcaoSelecionada = opcao1
        GetOpcaoSelecionada(cid, msg, opcao1)
        StorageStartTaskOpcao1 = opcao1
        setPlayerStorageValue(cid, task_start_opcao1, task_info_table_opcao1)
        talkState[cid] = 0
    end

    if msgcontains(string.lower(msg), string.lower(pokemonNameOpcao2)) and talkState[cid] == 1 then
        opcaoSelecionada = opcao2
        GetOpcaoSelecionada(cid, msg, opcao2)
        setPlayerStorageValue(cid, task_start_opcao2, task_info_table_opcao2)
        talkState[cid] = 0
    end

    if (getPlayerStorageValue(cid, task_finish) >= 1) then
        if (msgcontains(msg, 'reward')) then
            if (opcaoSelecionada ~= nil) then 
                selfSay("Parabens voce acabou a task diaria de hoje. Voce ganhou "..opcaoSelecionada.Experience.." de experiencia e "..opcaoSelecionada.Reward..".")
                doPlayerAddExperience(cid, opcaoSelecionada.Experience)
                doPlayerAddItem(cid, opcaoSelecionada.Reward)
                setPlayerStorageValue(cid, 829384, os.time() + (60 * 60 * 24))
                pokemonNameOpcao1 = ''
                pokemonNameOpcao2 = ''
                opcaoSelecionada = nil
                talkState[cid] = 0
            end
        end
    end

    return TRUE
end

function GetOpcaoSelecionada(cid, msg, opcao)

    if (string.lower(msg) == string.lower(opcao.PokemonName)) then

        setPlayerStorageValue(cid, task_start, 1)
        selfSay("Voce comecou a task, voce precisa matar ["..opcao.Count.." "..opcao.PokemonName.."]. Boa Sorte!")
        npcHandler:releaseFocus(cid)
        talkState[cid] = 0

    end

end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())