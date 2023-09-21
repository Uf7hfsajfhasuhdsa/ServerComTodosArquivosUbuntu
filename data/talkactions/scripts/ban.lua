function onSay(cid, words, param)
local t = string.explode(string.lower(param), ",")
if not t[1] then
                                                    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Command requires param.") return true
end
                    local player = getPlayerByNameWildcard(t[1])
                    if(not player)then
                                                    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Player not found.") return true
                    end
                    local hours,comment = not tonumber(t[2]) and 24 or tonumber(t[2]),not t[3] and "Motivo não especificado" or t[3]
doBroadcastMessage("O jogador "..getCreatureName(player).." foi banido por "..comment)
doAddAccountBanishment(getPlayerAccountId(player), target, os.time() + hours*3600, 5, 2,comment, 0)
doRemoveCreature(player)
return true
end