local config = {
skills_amount = 20, -- quantidade de skills que o player ganhará se ele for Knight ou Paladin
magiclevel_amount = 50, -- quantidade de magic levels o player ganhará se ele for Druid ou Sorcerer
storage = 10000, -- Storage para quest.
uniqueID = 1000, -- UniqueID que você colocará no Map Editor
mensagem = "Voce recebeu "..config.skills_amount.." skills e "..config.magiclevel_amount.." magic levels.",
}

local skills_id = {1, 2, 3, 4, 5} -- Não mexer.
		
function onUse(cid, item, fromPosition, itemEx, toPosition)
	if(item.uid == config.uniqueID) then
		if getPlayerStorageValue(cid, config.storage) == -1 then
				for i = 1, table.maxn(skills_id) do
					doPlayerAddSkill(cid, skills_id[i], config.skills_amount)
				end
			else
				doPlayerAddMagLevel(cid, config.magiclevel_amount)
			end
			doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, config.mensagem)
			setPlayerStorageValue(cid, config.storage, 1)
		else
			doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "Voce ja recebeu seu premio.")
		end
	end
return true
end