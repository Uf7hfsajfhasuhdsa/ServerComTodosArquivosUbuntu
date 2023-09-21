	local pos = {
	{x = 1027, y = 904, z = 7},
	{x = 1027, y = 904, z = 7},
}


function onThink()
	for i = 1, #pos do
		doSendMagicEffect(pos[i], 141)
		doSendMagicEffect(pos[i], 141)              
	end
	return true
end