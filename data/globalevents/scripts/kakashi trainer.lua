local pos = {
	{x = 1007, y = 935, z = 7},
	{x = 1006, y = 935, z = 7},
	{x = 1007, y = 933, z = 7},
	{x = 1006, y = 933, z = 7}, 
	{x = 1007, y = 929, z = 7},
	{x = 1006, y = 929, z = 7},
	{x = 1007, y = 931, z = 7},
	{x = 1006, y = 931, z = 7},
	{x = 1007, y = 925, z = 7},
	{x = 1006, y = 925, z = 7},
	{x = 1007, y = 927, z = 7},
	{x = 1006, y = 927, z = 7}, 	
        {x = 1007, y = 923, z = 7},
	{x = 1006, y = 923, z = 7},
	{x = 1007, y = 921, z = 7},
	{x = 1006, y = 921, z = 7},   
}


function onThink()
	for i = 1, #pos do		
                doSendMagicEffect(pos[i], 193)
		doSendMagicEffect(pos[i], 193)  
	end
	return true
end