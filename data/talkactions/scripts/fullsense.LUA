function onSay(cid, words, param, channel)
    player = getPlayerByName(param)
    if isPlayer(player) then
      if getCreatureMana(cid) >= 20 then
    doPlayerAddMapMark(cid, getCreaturePosition(player), 5, "The player "..param.." was here.")
    doPlayerAddSpentMana(cid, 20)
    return true
      else
      doPlayerSendCancel(cid, "You do not have enough mana to use this spell.")
      end
    else
    doPlayerSendCancel(cid, "There is no player with this name.")
    end
addEvent(doPlayerRemoveMapMark, 5000)
end