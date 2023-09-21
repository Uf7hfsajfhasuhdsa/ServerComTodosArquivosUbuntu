	function onUse(cid, item, frompos, item2, topos)

	if item.itemid == 7477 then

	doPlayerAddHealth(cid,60000)
	doRemoveItem(item.uid, 1)
	doSendMagicEffect(topos,14)
        doPlayerSay(cid,"Ohh Yeah",1)
	end

	end