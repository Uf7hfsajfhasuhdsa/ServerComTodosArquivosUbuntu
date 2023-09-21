-- [( Script Criado Por Baiakzik Zonaxgames )] --
function onThink(interval, lastExecution)
MENSAGEM = {
"Cada transformação aumenta seu dano, então não esqueça de transformar nos seguintes leveis: 50,100,150,200,250,400 e 600",
}
doBroadcastMessage(MENSAGEM[math.random(1,#MENSAGEM)])
return TRUE
end




