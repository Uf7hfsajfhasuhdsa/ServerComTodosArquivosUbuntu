local t = {
    msgActive = "[Sala de Invasao] Itachi Uchiha Veio Eliminar Todos do Clan Uchiha...",
    msgSpawn = "[Sala de Invasao] Rapido Shinobis Vão Impedi-lo !!.",
    coolDown = 1,                    -- Tempo para nascer após usar o comando.
    boss = "Itachi Uchiha",                    -- Nome do boss.
    pos = {x = 1447, y = 839, z = 8}   -- Posição em que o boss irá nascer.
}

function onSay(cid, words)
    local function summonBoss()
	doSendMagicEffect(t.pos, CONST_ME_TELEPORT)
        doCreateMonster(t.boss, t.pos)
        doBroadcastMessage(t.msgSpawn)
    end

    doBroadcastMessage(t.msgActive)
    addEvent(summonBoss, t.coolDown * 60 * 1000)

   return true
end