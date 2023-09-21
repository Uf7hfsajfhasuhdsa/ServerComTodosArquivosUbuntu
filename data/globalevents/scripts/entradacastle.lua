local config =
{
        pos = {x=988, y=853, z=7},
        topos = {x=1554, y=1306, z=7},
        time = 60, -- tempo que o teleport ira sumir em minutos
        msg_open = "O [CASTLE WAR] vai se abrir. Fechará em 60 minutos!", 
        msg_close = "O Portal para o [CASTLE WAR] se Fechou. Abrirá novamente daqui 6 horas!"
}


local function DelTp()
        local t = getTileItemById(config.pos, 1387)
        if t then
                doRemoveItem(t.uid, 1)
                doSendMagicEffect(config.pos, CONST_ME_POFF)
        end
end

local function DelTp()
        local t = getTileItemById(config.pos2, 1387)
        if t then
                doRemoveItem(t.uid, 1)
                doSendMagicEffect(config.pos2, CONST_ME_POFF)
        end
end


function onTime()
                if (os.date("%A") == "Monday" or "Tuesday" or "Wednesday" or "Thursday" or "Friday" or "Sunday") then
                doCreateTeleport(1387, config.topos, config.pos)
                doBroadcastMessage(config.msg_open)
                addEvent(DelTp, config.time*60*1000)
                addEvent(doBroadcastMessage, config.time*60*1000, config.msg_close)
        end


        return true
end