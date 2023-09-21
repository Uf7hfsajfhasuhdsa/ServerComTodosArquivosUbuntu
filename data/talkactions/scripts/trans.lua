function onSay(cid, words, param)
	local text = ""
	function addtext(texto)
		text = text .. "\n" .. texto
	end
	addtext("transform - Todos")
	addtext("transformar - SSJ 5 e SSJ6")
	addtext("transforms - Gotenks, Gogeta, Shenron e Janemba")
	addtext("fusion - Goten, Chibi Trunks, Goku e Vegeta")
	addtext("kaioken - Goku")
	addtext("revert - Todos")
	addtext("power ball - Saiyans")
	addtext("absorb - tsuful")
	addtext("unabsorb - tsuful")
	addtext("earth - Saiyans")
	addtext("vegeta - Brolly")
	addtext("click - Gohan")
	addtext("Para Reverter as novas transform e so deslogar!")
    doShowTextDialog(cid, 2175, text)
    return TRUE
end