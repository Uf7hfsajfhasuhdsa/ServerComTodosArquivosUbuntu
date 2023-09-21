local pos = {
	{x = 990, y = 924, z = 7},
        {x = 989, y = 924, z = 7},
        {x = 989, y = 926, z = 7},
	{x = 990, y = 926, z = 7},
	{x = 990, y = 928, z = 7},
        {x = 989, y = 928, z = 7},
        {x = 989, y = 930, z = 7},
	{x = 990, y = 930, z = 7},
	{x = 990, y = 932, z = 7},
        {x = 989, y = 932, z = 7},
        {x = 989, y = 934, z = 7},
	{x = 990, y = 934, z = 7},
}


function onThink()
	for i = 1, #pos do		
                doSendMagicEffect(pos[i], 184)
		doSendMagicEffect(pos[i], 184)  
	end
	return true
end