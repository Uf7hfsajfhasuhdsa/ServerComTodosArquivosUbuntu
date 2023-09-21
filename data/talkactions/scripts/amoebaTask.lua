function onSay(cid, words, param, channel)
    local stt = ""

    for nome, info in pairs(amoebaTask) do
        nomes = nome
        storages = info.storagecount
        counts = info.count
        stt = stt .. nomes .. " [" .. taskKills(cid, storages) .. "/" .. counts .. "]\n"
    end
    doShowTextDialog(cid, 1746, "-> MISSAO DISPONIVEIS <- \n" .. stt .. "")
   return true
end