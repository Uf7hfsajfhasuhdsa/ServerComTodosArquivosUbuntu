local storages = {13001} -- storages que serão verificadas

local message = [[

( Guia Nto Fun )

Você está pronto para iniciar uma nova jornada ? !

1º Escreva !jutsu para verificar seus jutsus disponíveis.
2º Procure por criaturas no subsolo de Konoha para adquirir experiência.
3º Não perca tempo, começe já suas missões com o NPC Naruto Task, para se tornar um Kage!!.
4º Utilize os nossos canais de comunicação : Help, Chat!

]]

function onStepIn(cid, item, position, fromPosition)
for _, v in ipairs(storages) do
    if getPlayerStorageValue(cid, v)  <= 0  then
		doPlayerPopupFYI(cid, message)
		setPlayerStorageValue(cid, 13001, 1)
        return doTeleportThing(cid, fromPosition)
    end
end
end