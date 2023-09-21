local pos = {	
	{x = 998, y = 920, z = 7},
	{x = 1000, y = 920, z = 7},
}


function onThink()
	for i = 1, #pos do		
                doSendMagicEffect(pos[i], 227)
		doSendMagicEffect(pos[i], 227)  
	end
	return true
end