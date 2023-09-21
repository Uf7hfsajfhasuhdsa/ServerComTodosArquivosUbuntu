function onSay(cid, words, param, channel)
	domodlib('Vip_Libs')
	local Data = string.explode(param, ",")
	if (words:sub(2, 2) == "a") then
		if (not Data[1]) then
			doPlayerSendCancel(cid, "Insira um nome.")
			return true
		elseif (not Data[2] or Data[2] == "") then
			doPlayerSendCancel(cid, "Insira a quantidade de dias de vip que vai adionar ao player.")
			return true
		elseif not isNumber(Data[2]) then
			doPlayerSendCancel(cid, "Use apenas numeros.")
			return true
		end
		local AccID = getAccountIdByName(Data[1])
		if (AccID > 0) then
			if (getPlayerByName(Data[1])) then
				doSendMagicEffect(getCreaturePosition(getPlayerByName(Data[1])), CONST_ME_MAGIC_GREEN)
			end
			if getVipTimeByName(Data[1]) == 0 then
				db.executeQuery("UPDATE `accounts` SET `vip_time` = 86400 * ".. Data[2] .." + ".. os.time() .." WHERE `accounts`.`id` = ".. AccID ..";")
			else
				db.executeQuery("UPDATE `accounts` SET `vip_time` = `accounts`.`vip_time` + (86400 * ".. Data[2] ..") WHERE `accounts`.`id` = ".. AccID ..";")
			end
			db.executeQuery("UPDATE `accounts` SET `premdays` = 1 WHERE `accounts`.`id` = ".. AccID ..";")
			db.executeQuery("UPDATE `accounts` SET `premdays` = `accounts`.`vip_days` + ".. Data[2] .." WHERE `accounts`.`id` = ".. AccID ..";")
			if Data[2] == '0' then
				doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Nenhum dia de vip foi adicionado a conta ".. getAccountByName(Data[1]) ..".")
			elseif Data[2] > '1' then
				doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Foi adicionado ".. Data[2] .." dias de vip a conta ".. getAccountByName(Data[1]) ..".")
			else
				doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Foi adicionado 1 dia de vip a conta ".. getAccountByName(Data[1]) ..".")
			end
			
		else
			doPlayerSendCancel(cid, "O player ".. Data[1] .." não existe.")
		end
	else
		if getVipDays(cid) == 0 then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Você não é um jogador vip.")
		elseif getVipDays(cid) > 1 then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Você tem ".. getVipDays(cid) .." dias de vip.")
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Você tem 1 dia de vip.")
		end
	end
	return true
end