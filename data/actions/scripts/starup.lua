local lvl_min = 5 -- Leve mínimo para usar o script. 


local skills_t = {
{skill = SKILL_CLUB, count_lvl = 1}
}

function onUse(cid, item, fromPosition, itemEx, toPosition)

		if getPlayerLevel(cid) >= lvl_min then 
			doPlayerPopupFYI(cid, "Parabens, voce acaba de upar um escalao do seu Passe de Batalha!")
			doRemoveItem(item.uid, 1)
			doSendMagicEffect(getPlayerPosition(cid), 371)
			for _, t in pairs(skills_t) do
				doPlayerAddSkill(cid, t.skill, t.count_lvl)
			end
		else
			selfSay('Voce nao tem Level Suficiente !', cid)
			doSendMagicEffect(getPlayerPosition(cid), 3)
		end

	return true
end