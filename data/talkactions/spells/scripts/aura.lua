function onCastSpell(cid, var)
	local pos = getPlayerPosition(cid)
	doSendMagicEffect(pos, 12)
	doPlayerSay(cid, 'aura', TALKTYPE_ORANGE_1)
	return doSetCreatureLight(cid, 11, 215, (60*33+10)*1000)
end
