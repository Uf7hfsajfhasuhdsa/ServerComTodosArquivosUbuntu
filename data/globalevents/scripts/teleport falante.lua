	local pos = {
	{x = 1026, y = 903, z = 7},
	{x = 1026, y = 903, z = 7},
}


function onThink()
	for i = 1, #pos do		
                doSendAnimatedText(pos[i], "Suna!", TEXTCOLOR_RED)
	end
	return true
end