-- [( Script Criado Por Baiakzik Zonaxgames )] --
function onThink(interval, lastExecution)
MENSAGEM = {
"Postamos todas as novidades no nosso Facebook: https://www.facebook.com/Naruto-Fun-Online-110397687358306 ",
}
doBroadcastMessage(MENSAGEM[math.random(1,#MENSAGEM)])
return TRUE
end




