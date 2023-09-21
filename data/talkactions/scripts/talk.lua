function onSay(cid, words, param)
    local text = ""
	text = text .. " bol - Compra band of loss : 10g \n bc - Compra blue capsule : 1g \n jp - Compra jet pack : 100 cents \n buytp - Compra teleport : 5g \n buyvip - Compra Vip : 500g \n"
	text = text .. "\n Introducao \n g = Gold = 10k = 10000 Coins \n Dolar = 1k = 1000 Coins \n Zeni = 1 Coins"
	  doShowTextDialog(cid, 2175, text)
    return TRUE
end