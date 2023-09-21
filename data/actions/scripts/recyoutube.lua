function onUse(cid, item, fromPosition, itemEx, toPosition)

local message = [[

[ You Tube ] Kit Nivel I

Parabens, voce acaba de receber o Kit You Tube Nivel I
por colaborar com a divulgação de nosso servidor.

Agradecemos por seu trabalho e sua participacao por isso
oferecemos a voce um Kit como forma de recompensa.

Espero que goste, Tenha um Bom Jogo !.


]]
	if getPlayerStorageValue(cid, 111511) < 1 then           
		local bag = doPlayerAddItem(cid, 11423, 1)
		doPlayerAddExp(cid, 10000000)
		doAddContainerItem(bag, 2145, 100)
		doAddContainerItem(bag, 2160, 50)
		doAddContainerItem(bag, 11460, 20)
		doAddContainerItem(bag, 11492, 1)
		doAddContainerItem(bag, 11448, 1)
		setPlayerStorageValue(cid,111511,1)
		doPlayerPopupFYI(cid, message)
		doRemoveItem(item.uid, 1)
		doSendMagicEffect(getPlayerPosition(cid), 5)
			else
				doPlayerSendTextMessage(cid,22,"Voce nao pode receber essa recompensa novamente!")
				doSendMagicEffect(getPlayerPosition(cid), 3) 
			end
			
		return 0
end