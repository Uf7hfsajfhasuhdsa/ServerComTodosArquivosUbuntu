local pos = {
	{x = 993, y = 937, z = 7},
	{x = 993, y = 938, z = 7},
	{x = 995, y = 937, z = 7},
	{x = 995, y = 938, z = 7},
        {x = 997, y = 937, z = 7},
	{x = 997, y = 938, z = 7},
	{x = 999, y = 937, z = 7},
	{x = 999, y = 938, z = 7},
        {x = 1001, y = 937, z = 7},
	{x = 1001, y = 938, z = 7},
	{x = 1003, y = 937, z = 7},
	{x = 1003, y = 938, z = 7},
}


function onThink()
	for i = 1, #pos do		
                doSendMagicEffect(pos[i], 210)
		doSendMagicEffect(pos[i], 210)  
	end
	return true
end