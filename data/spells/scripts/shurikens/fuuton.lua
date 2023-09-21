local cfg = {
    item = {2168, 1},
    infinite = true,     --Poderá pegar o item infinitas vezes? [true/sim] [false/não]
}
local storage = 91836
function onCastSpell(cid, var)
    if cfg.infinite then
        doPlayerAddItem(cid, cfg.item[1], cfg.item[2])
    else
        if getPlayerStorageValue(cid, storage) < 1 then
            doPlayerAddItem(cid, item[1], item[2])
            setPlayerStorageValue(cid, storage, 1)
        else
            return doPlayerSendCancel(cid, "Você já pegou seu item.")
        end
    end
    return true
end