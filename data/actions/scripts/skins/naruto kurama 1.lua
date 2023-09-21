local dolls = {
    [11503] = {name='Naruto Kurama I',outfit = 641 , voc={1,56,57,58,59,60,1000,1022,2022}}
	
	}
	
function onUse(cid,item,frompos,itemEx,topos)
local r,v = dolls[item.itemid],getThingPos(cid)
	if r then
		if isInArray(r.voc,getPlayerVocation(cid)) then
			if getCreatureOutfit (cid).lookType ~= r.outfit then
                doCreatureChangeOutfit(cid, {lookType = r.outfit})
				doPlayerSendTextMessage(cid,MESSAGE_FIRST,'Skin: '..r.name..'!')
				doPlayerAddOutfitId(cid, 44, 3)
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