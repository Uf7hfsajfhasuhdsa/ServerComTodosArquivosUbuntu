-- [( Script Criado Por Baiakzik Zonaxgames )] --
function onThink(interval, lastExecution)
MENSAGEM = {
"Bem-Vindo ao Naruto Fun Online!. Seja Funliz ao jogar nosso servidor,rs. Bom Jogo a Todos!",
}
doBroadcastMessage(MENSAGEM[math.random(1,#MENSAGEM)])
return TRUE
end




