function onStartup()
  local players = db.getResult("SELECT `id` FROM `players`;")
	findPlayersID(players)
end

function findPlayersID(players)
  if(players:getID() ~= -1) then
		repeat
			local playerID = players:getDataInt("id")
      findPlayersStorageKey(playerID)
		until not(result:next())
		players:free()
	end
end

function findPlayersStorageKey(playerID)
  local playerStorage = db.getResult("SELECT `key` FROM `player_storage` WHERE player_id = "..playerID..";")
  if(playerStorage:getID() ~= -1) then
    repeat
      querysResetValueStoragePlayer(playerID)
    until not(result:next())
  end
end

function querysResetValueStoragePlayer(playerID)
  local storageValueReset = -1
  db.executeQuery("UPDATE `player_storage` SET `value` = "..storageValueReset.." WHERE `player_id`  = ".. playerID .." AND `key` = "..task_start..";")
  db.executeQuery("UPDATE `player_storage` SET `value` = "..storageValueReset.." WHERE `player_id`  = ".. playerID .." AND `key` = "..task_start..";")
  db.executeQuery("UPDATE `player_storage` SET `value` = "..storageValueReset.." WHERE `player_id`  = ".. playerID .." AND `key` = "..task_start_opcao1..";")
  db.executeQuery("UPDATE `player_storage` SET `value` = "..storageValueReset.." WHERE `player_id`  = ".. playerID .." AND `key` = "..task_start_opcao2..";")
end