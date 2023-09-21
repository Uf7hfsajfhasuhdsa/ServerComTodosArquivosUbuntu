	local pos = {
	{x = 1023, y = 903, z = 7},
	{x = 1023, y = 903, z = 7},
}


function onThink()
	for i = 1, #pos do		
                doSendAnimatedText(pos[i], "!buyvip!", TEXTCOLOR_GREEN)
	end
	return true
end