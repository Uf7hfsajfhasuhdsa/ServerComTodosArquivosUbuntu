 local messages = {
"( Discord )Ei, no discord você encontrará várias Dicas, Tutoriais e até mesmo Shinobis para te acompanhar nessa jornada ! Acesse : https://discord.gg/MJYeqee",

"( Loot / Dinheiro ) Já aprendeu a utilizar nosso sistema !autoloot ? Não perca tempo, a melhor forma de se fazer dinheiro é vendendo Item's Loot para NPC's Compradores.",

"( Up ) Em nosso servidor você pode upar seu personagem com inúmeras formas diferentes : Hunts, Missões, Batalhas Diárias.",

"( Discord ) Ei, no discord você encontrará várias Dicas, Tutoriais e até mesmo Shinobis para te acompanhar nessa jornada ! Acesse : https://discord.gg/MJYeqee",

"( Treinos ) Treine seu personagem, o Ninjutsu é responsável pelo dano de seus Jutsus.",

"( Equipes ) É muito importante que você esteja utilizando o Set equivalente ao seu Level. Busque sempre utilizar o Set do Seu level para evitar apuros em situações PVE e PVP.",

"( Discord ) Tire dúvidas, Dê sugestões, Aprenda mais sobre o jogo e Faça novos amigos ! Acesse : https://discord.gg/MJYeqee ",

"( Sobre ) Somos um servidor clássico, valorizamos o tempo de jogo, cultivamos a dificuldade para oferecer a todos gratuitamente em forma de recompensa os melhores items, personagens exclusivos e vantagens que são encontradas em nossa Loja VIP.",

"( Promoções ) Esta Gostando do Servidor ? Se Divertindo ? Ajude o nosso Servidor a se Manter Online e a Crescer! Promoçao Double Points, Acima de 50,00 R$ (Cinquenta Reais) Receba o Dobro de Points!",

"( Aviso ) Atencao Ninjas! Evite ser Hackeado, Jamais passe sua senha para alguém! O servidor não se Responsabiliza por Perdas ou Contas Hackeadas. Lembrem-se de Gerar as suas Recovery-Keys no nosso site!",

"( Ant-Drops ) Use o COMANDO !jam ou fale com Npc Konoha Jounnin ou Max ! Para não Droparem seus Items !",

"( Duvidas ) Olá possui alguma Duvida sobre o Server ? Precisa de Ajuda em Algo ? Então Conheça nosso Tutor Automatico usando os Seguinte Comandos - !Tutor (Numero da Informação) .. Pronto , sua duvida será Respondida em Segundos ! Mais Informações no Site : ntofun.com.br ..",

"( Stamina ) Venha conhecer nossas Fontes Termais! Relaxe Recuperando Stamina ! Por apenas 30 Dolares !",

"( Facebook ) Siga-nos no FACEBOOK - https://www.facebook.com/ntofun/ ...",


} 


local i = 0

function onThink(interval, lastExecution)

local message = messages[(i % #messages) + 1]

for _, pid in ipairs(getPlayersOnline()) do

doPlayerSendTextMessage(pid, 20, "[Dicas Fun] : ".. message ..". ") -- Exp , Dinheiro , Quest

i = i + 1

end

return TRUE

end