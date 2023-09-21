local dolls = {
	[11506] = {name='Madara Ceifador I',outfit = 644, voc={24,161,162,163,164,165,1021,1043,2043}}
	
	}
	
function onUse(cid,item,frompos,itemEx,topos)
local r,v = dolls[item.itemid],getThingPos(cid)
	if r then
		if isInArray(r.voc,getPlayerVocation(cid)) then
			if getCreatureOutfit (cid).lookType ~= r.outfit then
                doCreatureChangeOutfit(cid, {lookType = r.outfit})
				doPlayerSendTextMessage(cid,MESSAGE_FIRST,'Skin: '..r.name..'!')
				doPlayerAddOutfitId(cid, 48, 3)
				doRemoveItem(item.uid,1)
			else
				doPlayerSendCancel(cid,'Voce ja tem essa skin!')
				doSendMagicEffect(v,CONST_ME_POFF)
			end
		else
			doPlayerSendCancel(cid,'Voce esta com outra vocacao!')
			doSendMagicEffect(v,CONST_ME_POFF)
                end
	else
		doPlayerSendCancel(cid,'Sorry not possible.')
	end
	return true
end