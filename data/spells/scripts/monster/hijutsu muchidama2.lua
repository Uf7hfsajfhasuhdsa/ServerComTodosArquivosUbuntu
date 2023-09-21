function onCastSpell(cid, var)
  	local target = getCreatureTarget(cid)
	local NumberOfHits = 1
	local value = getCreatureMaxMana(target)*0.04 -- 0.20 representa a 20% da mana total do seu target
    local restoremana = "false"

	if isMonster(target)then
		return false
	end


	for x=1,NumberOfHits do
		if isPlayer(target) then
			doCreatureAddMana(target, -value)
      		if restoremana == "true" then
      			doCreatureAddMana(cid, value)
        	end
		end
	end
  	return true
end