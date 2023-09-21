local config =
{
        day = "Friday",
        pos = {x=1019, y=848, z=5},
        topos = {x=1001, y=899, z=7},
        time = 60, -- tempo que o teleport ira sumir em minutos
        msg_open = "O Portal para a invasão irá abrir e irá se fechar em 60min.", 
        msg_close = "O Portal se fechou."
}


local function DelTp()
        local t = getTileItemById(config.pos, 1387)
        if t then
                doRemoveItem(t.uid, 1)
                doSendMagicEffect(config.pos, CONST_ME_POFF)
        end
end


function onTimer()
       
        if (os.date("%A") == config.day) then
                doCreateTeleport(1387, config.topos, config.pos)
                doBroadcastMessage(config.msg_open)
                addEvent(DelTp, config.time*60*1000)
                addEvent(doBroadcastMessage, config.time*60*1000, config.msg_close)
        end


        return true
end