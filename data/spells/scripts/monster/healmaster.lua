local config = {
health = 3000,
mana = 700
}


function onCastSpell(cid, var)

if getCreatureMaster(cid) then
local master = getCreatureMaster(cid)
	if isInParty(master) then
		local members = getPartyMembers(getPlayerParty(master))
		local health = math.ceil( config.health / #members )
		local mana = math.ceil( config.mana / #members )
		for i = 1, #members do
		doCreatureAddHealth(members[i], health)
		doCreatureAddMana(members[i], mana)
		doSendAnimatedText(getCreaturePosition(members[i]), "+"..health, 18)	
		doSendMagicEffect(getCreaturePosition(members[i]), 36)		
		end
	else
		doCreatureAddHealth(master, config.health)
		doCreatureAddMana(master, config.mana)
		doSendAnimatedText(getCreaturePosition(master), "+"..config.health, 18)		
local tPos = var.pos or getThingPos(var.number)
if tPos then
    tPos.x = tPos.x + 1
    tPos.y = tPos.y + 1
    doSendMagicEffect(tPos, 36)
end
	end

	end

return true
end