local function vipPushBack(cid, position, fromPosition, displayMessage)
	doTeleportThing(cid, fromPosition, true)
	doSendMagicEffect(position, CONST_ME_MAGIC_BLUE)
	if(displayMessage) then
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Está zona so jogadores VIP podem entrar.")
	end
end

function onStepIn(cid, item, position, fromPosition)
	domodlib('Vip_Libs')
	if (isVip(cid) == false) then
		vipPushBack(cid, position, fromPosition, true)
	end
end