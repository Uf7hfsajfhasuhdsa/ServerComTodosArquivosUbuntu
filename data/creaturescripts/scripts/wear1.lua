function onOutfit(cid, old, current)
 
	if current.lookType == 372 then
		doSendMagicEffect(getCreaturePosition(cid), 5)
	end
	return true
end