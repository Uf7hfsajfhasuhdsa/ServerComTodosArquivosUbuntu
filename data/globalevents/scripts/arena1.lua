	local pos = {
	{x = 1025, y = 903, z = 6},
	{x = 1024, y = 905, z = 6},	
        {x = 1024, y = 904, z = 6},
	{x = 1024, y = 903, z = 6},
	{x = 1026, y = 903, z = 6},
	{x = 1027, y = 903, z = 6},
	{x = 1027, y = 904, z = 6},
	{x = 1027, y = 905, z = 6},
}


function onThink()
	for i = 1, #pos do
		doSendMagicEffect(pos[i], 80)
		doSendMagicEffect(pos[i], 80)
                doSendMagicEffect(pos[i], 80)
		doSendMagicEffect(pos[i], 80)
                doSendMagicEffect(pos[i], 80)
 		doSendMagicEffect(pos[i], 80)
                doSendMagicEffect(pos[i], 80)
		doSendMagicEffect(pos[i], 80)                
	end
	return true
end