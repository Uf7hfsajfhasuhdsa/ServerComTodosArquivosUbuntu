function onAdvance(cid, skill, oldLevel, newLevel)

   local config = {
      [11] = {item = 11502, count = 1},
      [12] = {item = 2152, count = 10},
      [13] = {item = 1997, count = 1},
      [14] = {item = 2145, count = 100},
      [15] = {item = 11460, count = 15},
      [16] = {item = 11417, count = 1},
      [17] = {item = 11508, count = 1},
      [18] = {item = 2152, count = 20},
      [19] = {item = 11448, count = 1},
      [20] = {item = 11503, count = 1},
      [21] = {item = 2145, count = 150},
      [22] = {item = 2155, count = 200},
      [23] = {item = 11467, count = 1},
      [24] = {item = 2152, count = 30},
      [25] = {item = 11460, count = 20},
      [26] = {item = 11416, count = 1},	  
      [27] = {item = 11508, count = 1},
      [28] = {item = 11410, count = 200},
      [29] = {item = 11467, count = 1},
      [30] = {item = 11504, count = 1},
      [31] = {item = 11452, count = 1},
      [32] = {item = 2152, count = 30},
      [33] = {item = 11467, count = 1},
      [34] = {item = 11493, count = 200},
      [35] = {item = 11460, count = 25},
      [36] = {item = 11418, count = 1},
	  [37] = {item = 2145, count = 200},
	  [38] = {item = 11455, count = 1},
	  [39] = {item = 2153, count = 100},
	  [40] = {item = 11505, count = 1},
	  [41] = {item = 2152, count = 40},
	  [42] = {item = 11467, count = 1},
	  [43] = {item = 11507, count = 1},
	  [44] = {item = 11417, count = 1},
	  [45] = {item = 11460, count = 40},
	  [46] = {item = 11416, count = 1},
	  [47] = {item = 2145, count = 300},
	  [48] = {item = 11418, count = 1},
	  [49] = {item = 11453, count = 1}, 
      [50] = {item = 11506, count = 1},
   }

   if skill == SKILL_CLUB then
      for level, info in pairs(config) do
         if newLevel >= level and (getPlayerStorageValue(cid, 30705) == -1 or not (string.find(getPlayerStorageValue(cid, 30705), "'" .. level .. "'"))) then
            doPlayerAddItem(cid, info.item, info.count)
            doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "Parabens, voce atingiu o Passe "..newLevel.." e ganhou "..info.count.." "..getItemNameById(info.item)..".")
            local sat = getPlayerStorageValue(cid, 30705) == -1 and "Values: '" .. level .. "'" or getPlayerStorageValue(cid, 30705) .. ",'" .. level .. "'"
            setPlayerStorageValue(cid, 30705, sat)
         end
      end
   end
   return true
end