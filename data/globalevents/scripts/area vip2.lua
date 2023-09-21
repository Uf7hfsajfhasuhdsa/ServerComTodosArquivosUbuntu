	local pos = {
	{x = 1024, y = 903, z = 7},
	{x = 1024, y = 903, z = 7},
}


function onThink()
	for i = 1, #pos do
		doSendMagicEffect(pos[i], 136)
		doSendMagicEffect(pos[i], 136)      
	end
	return true
end