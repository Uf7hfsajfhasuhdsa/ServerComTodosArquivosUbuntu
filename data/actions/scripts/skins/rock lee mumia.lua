local dolls = {
	[11504] = {name='Lee Mumia I',outfit = 642, voc={3,61,62,63,64,65,1002,1024,2024}}
	
	}
	
function onUse(cid,item,frompos,itemEx,topos)
local r,v = dolls[item.itemid],getThingPos(cid)
	if r then
		if isInArray(r.voc,getPlayerVocation(cid)) then
			if getCreatureOutfit (cid).lookType ~= r.outfit then
                doCreatureChangeOutfit(cid, {lookType = r.outfit})
				doPlayerSendTextMessage(cid,MESSAGE_FIRST,'Skin: '..r.name..'!')
				doPlayerAddOutfitId(cid, 46, 3)
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