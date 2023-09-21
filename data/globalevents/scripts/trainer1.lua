local pos = {
	{x = 999, y = 920, z = 7},
	{x = 999, y = 920, z = 7},
}


function onThink()
	for i = 1, #pos do		
                doSendAnimatedText(pos[i], "trainer!", TEXTCOLOR_RED)
	end
	return true
end