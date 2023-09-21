-- [( Script Criado Por Baiakzik Zonaxgames )] --
function onThink(interval, lastExecution)
MENSAGEM = {
"Para conseguir avançar na sua graduação, basta voce concluir as missões do Naruto Task.",
}
doBroadcastMessage(MENSAGEM[math.random(1,#MENSAGEM)])
return TRUE
end




