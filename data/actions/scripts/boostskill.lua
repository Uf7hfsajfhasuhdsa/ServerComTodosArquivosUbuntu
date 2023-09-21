local storage = 7718
local bonusExp = 2 -- VOCÊ DEVE EDITAR AQUI PARA O BONUS EXP QUE DESEJA
function onUse(cid, item, frompos, item2, topos)
  if not isPlayer(cid) then return false end
  if (getPlayerStorageValue(cid, storage) == -1) then
    doPlayerSendTextMessage(cid, TALKTYPE_MONSTER_SAY, "Your double bonus started.")
    doPlayerSetRate(cid, SKILL__LEVEL, bonusExp*getExperienceStage(getPlayerLevel(cid)))
    registerCreatureEvent(cid, "doubleBonusRegister")
    setPlayerStorageValue(cid, storage, os.time())
    doBroadcastMessage(getPlayerStorageValue(cid, storage))
  else
    setPlayerStorageValue(cid, storage, -1)
    doPlayerSendTextMessage(cid, TALKTYPE_MONSTER_SAY, "You can only use one bonus per time.")
  end
end
 