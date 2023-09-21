	local pos = {
	{x = 1025, y = 904, z = 6},
        {x = 1026, y = 904, z = 6},
}


function onThink()
	for i = 1, #pos do
		doSendMagicEffect(pos[i], 110)
		doSendMagicEffect(pos[i], 110)
                doSendAnimatedText(pos[i], "Arena!", TEXTCOLOR_GREEN)		                
	end
	return true
end