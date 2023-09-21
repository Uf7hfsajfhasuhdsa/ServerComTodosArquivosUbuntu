function onStartup()
	local Query = db.getResult("SELECT `config`, `value` FROM `server_config` WHERE `server_config`.`config` = 'vip_sys';")
	if(Query:getID() == -1) then
		local Install_Query =
		{
			mysql =
			{
				"ALTER TABLE `accounts` ADD `vip` TINYINT NOT NULL DEFAULT '0' AFTER `premdays`;",
				"ALTER TABLE `accounts` ADD `vip_days` INT NOT NULL DEFAULT '0' AFTER `vip`;",
				"ALTER TABLE `accounts` ADD `vip_time` INT NOT NULL DEFAULT '0' AFTER `vip_days`;",
				"ALTER TABLE `players` ADD `reset_temple` TINYINT NOT NULL DEFAULT '0' AFTER `town_id`;",
				"INSERT INTO `server_config` (`config`, `value`) VALUES ('vip_sys', 1);"
				
			},
			sqlite =
			{
				"ALTER TABLE `accounts` ADD `vip` INTEGER NOT NULL DEFAULT 0;",
				"ALTER TABLE `accounts` ADD `vip_days` INTEGER NOT NULL DEFAULT 0;",
				"ALTER TABLE `accounts` ADD `vip_time` INTEGER NOT NULL DEFAULT 0;",
				"ALTER TABLE `players` ADD `reset_temple` INTEGER NOT NULL DEFAULT 0;",
				"INSERT INTO `server_config` VALUES ('vip_sys', 1);"
			}
		}
		print(">> Instalando vip_sys...")
		print(">> Verificando tipo de banco de dados...")
		print(">> Tipo do banco de dados ".. getConfigValue('sqlType') .."...")
		if getConfigValue('sqlType') == "mysql" then
			for i = 1, #Install_Query.mysql do
				print(">> ".. Install_Query.mysql[i] .."")
				db.executeQuery(Install_Query.mysql[i])
			end
		elseif getConfigValue('sqlType') == "sqlite" then
			for i = 1, #Install_Query.sqlite do
				print(">> ".. Install_Query.sqlite[i] .."")
				db.executeQuery(Install_Query.sqlite[i])
			end
		else
			print(">> Banco de dados ".. getConfigValue('sqlType') .." sem suporte ao sistema vip_sys")
		end
		print(">> vip_sys instalado e operando...")
		return true
	end
	local Config = Query:getDataString("config")
	local Value = Query:getDataInt("value")
	if Value == 1 then
		print(">> Sistema vip funcionando e atualizado...")
	end
	return true
end
