function onUse(cid, item, frompos, item2, topos)

doSendMagicEffect(topos,14)
doPlayerAddSoul(cid, 10)
doPlayerSay(cid,"Yeah, Power Up!",1)
		doRemoveItem(item.uid,1)				
end