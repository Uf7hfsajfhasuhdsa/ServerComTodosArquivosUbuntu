

function onSay(cid, words, param)

	if(param == '') then
	exit = {x=383, y=245, z=8, stackpos=253}
	doTeleportThing(cid,exit)
	broadcastMessageEx(22,'Someone join to Support Island.') 
	doPlayerSendTextMessage(cid,19,"Teleportowales sie na Team Island .")	
	return true
	end

return 1
end