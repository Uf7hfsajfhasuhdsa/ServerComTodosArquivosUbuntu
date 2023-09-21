---------- [[ Configurações ]] ---------

task_time = 24 -- quantas horas o player ira aguardar para começar a quest novamente

listaPokemons = {

    [1] = {PokemonName = "Weapon Specialist", Count = 10, Experience=100000, Reward=3965, Storage=11111}, 
    [2] = {PokemonName = "Specialist", Count = 10, Experience=100000, Reward=3965, Storage=11112}, 
    [3] = {PokemonName = "Strong Weapon Specialist", Count = 10, Experience=70000, Reward=3965, Storage=11113},
    [4] = {PokemonName = "Boxer", Count = 10, Experience=70000, Reward=3965, Storage=11114},
    [5] = {PokemonName = "White Zetsu", Count = 10, Experience=70000, Reward=3965, Storage=11115},
    [6] = {PokemonName = "Cursed Ghost", Count = 10, Experience=70000, Reward=3965, Storage=11116},
    [7] = {PokemonName = "Unknow", Count = 10, Experience=70000, Reward=3965, Storage=11117},
    [8] = {PokemonName = "Wolf", Count = 10, Experience=70000, Reward=3965, Storage=11118},
    [9] = {PokemonName = "Boxer Man", Count = 10, Experience=70000, Reward=3965, Storage=11119},
    [10] = {PokemonName = "Orochimaru Snake", Count = 10, Experience=70000, Reward=3965, Storage=11120},
    [11] = {PokemonName = "Haku", Count = 10, Experience=70000, Reward=3965, Storage=11121},
    [12] = {PokemonName = "Jiroubo", Count = 10, Experience=70000, Reward=3965, Storage=11122},
    [13] = {PokemonName = "Sakon", Count = 10, Experience=70000, Reward=3965, Storage=11123},
    [14] = {PokemonName = "White Shaolin", Count = 10, Experience=70000, Reward=3965, Storage=11124},
    [15] = {PokemonName = "Gamaken", Count = 10, Experience=70000, Reward=3965, Storage=11125},
    [16] = {PokemonName = "Frozen Monster", Count = 10, Experience=70000, Reward=3965, Storage=11126},
    [17] = {PokemonName = "Anbu", Count = 10, Experience=70000, Reward=3965, Storage=11127},
    [18] = {PokemonName = "Shaolin Master", Count = 10, Experience=70000, Reward=3965, Storage=11128},
    [19] = {PokemonName = "Red Shaolin", Count = 10, Experience=70000, Reward=3965, Storage=11129},
    [20] = {PokemonName = "Shinobi of The Blades", Count = 10, Experience=70000, Reward=3965, Storage=11130},
    [21] = {PokemonName = "Black Anbu", Count = 10, Experience=70000, Reward=3965, Storage=11131},
    [22] = {PokemonName = "Manda", Count = 10, Experience=70000, Reward=3965, Storage=11132},
    [23] = {PokemonName = "Uchiha Itachi", Count = 10, Experience=70000, Reward=3965, Storage=11133},
    [24] = {PokemonName = "Perfect Anbu", Count = 10, Experience=70000, Reward=3965, Storage=11134},
    [25] = {PokemonName = "Lider Guard", Count = 10, Experience=70000, Reward=3965, Storage=11135},
    [26] = {PokemonName = "Samurai One", Count = 10, Experience=70000, Reward=3965, Storage=11136},
    [27] = {PokemonName = "Samurai Two", Count = 10, Experience=70000, Reward=3965, Storage=11137},
    [28] = {PokemonName = "Akahoshi", Count = 10, Experience=70000, Reward=3965, Storage=11138},
    [29] = {PokemonName = "Salamandra", Count = 10, Experience=70000, Reward=3965, Storage=11139},
    [30] = {PokemonName = "Jya", Count = 10, Experience=70000, Reward=3965, Storage=11140},
    [31] = {PokemonName = "Kyodai", Count = 10, Experience=70000, Reward=3965, Storage=11141},
    [32] = {PokemonName = "Tutor", Count = 10, Experience=70000, Reward=3965, Storage=11142},


}

--------------------------------------

task_start = 555118 
task_finish = 555119 
task_storage_time = 444513

task_start_opcao1 = 554460
task_start_opcao2 = 554461

task_info_table_opcao1 = nil
task_info_table_opcao2 = nil

function GetTaskInfo(cid)

    if (getPlayerStorageValue(cid, task_start_opcao1) > 0) then
        return listaPokemons[getPlayerStorageValue(cid, task_start_opcao1)] or false
    end

    if (getPlayerStorageValue(cid, task_start_opcao2) > 0) then
        return listaPokemons[getPlayerStorageValue(cid, task_start_opcao2)] or false
    end
end

function PokemonOpcao1()
    task_info_table_opcao1 = math.random(1, #listaPokemons)
    return listaPokemons[task_info_table_opcao1]
end

function PokemonOpcao2()
    task_info_table_opcao2 = math.random(1, #listaPokemons)
    return listaPokemons[task_info_table_opcao2]
end

function ClearAllStoragePlayer(cid)
    for _, storage in ipairs(listaPokemons) do
        setPlayerStorageValue(cid, storage, 0)
    end
end
