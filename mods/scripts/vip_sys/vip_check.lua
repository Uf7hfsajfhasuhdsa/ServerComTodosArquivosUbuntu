function onThink(interval)
	Query = db.getResult("SELECT `id`, `name`, `vip_days`, `vip_time` FROM `accounts` WHERE `accounts`.`vip` = 1")
	if(Query:getID() == -1) then
		return true
	end
	for i = 1, Query:getRows() do
		local AccID = Query:getDataInt("id")
		local AccName = Query:getDataInt("name")
		local VipDays = Query:getDataInt("vip_days")
		local VipTime = Query:getDataInt("vip_time")
		if VipTime >= os.time() then
			if VipDays ~= math.ceil((VipTime - os.time()) / 86400) then
				db.executeQuery("UPDATE `accounts` SET `vip_days` = ".. math.ceil((VipTime - os.time()) / 86400) .." WHERE `accounts`.`id` = ".. AccID ..";")
				if math.ceil((VipTime - os.time()) / 86400) == 1 then
					print("A conta ".. AccName .." tem ".. math.ceil((VipTime - os.time()) / 86400) .." dia de vip restante")
				else
					print("A conta ".. AccName .." tem ".. math.ceil((VipTime - os.time()) / 86400) .." dias de vip restantes")
				end
			end
		else
			db.executeQuery("UPDATE `accounts` SET `vip_time` = 0 WHERE `accounts`.`id` = ".. AccID ..";")
			db.executeQuery("UPDATE `accounts` SET `vip_days` = 0 WHERE `accounts`.`id` = ".. AccID ..";")
			db.executeQuery("UPDATE `accounts` SET `vip` = 0 WHERE `accounts`.`id` = ".. AccID ..";")
			db.executeQuery("UPDATE `players`  SET `reset_temple` = 1 WHERE `players`.`account_id` = ".. AccID ..";")
			print("A vip da conta ".. AccName .." acabou.")
		end
		Query:next()
	end
	Query:free()
	return true
end