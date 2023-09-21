-- [( Script Criado Por Baiakzik Zonaxgames )] --
function onThink(interval, lastExecution)
MENSAGEM = {
"Acesse o link http://bit.ly/mapcaves para informações de caves, tasks, e quests",
"Site para informações do servidor > http://ntoabshelp.webnode.com"
}
doBroadcastMessage(MENSAGEM[math.random(1,#MENSAGEM)],22)
return TRUE
end




