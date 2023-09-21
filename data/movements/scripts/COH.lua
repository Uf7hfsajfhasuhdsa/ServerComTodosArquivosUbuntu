
function onStepIn(cid, item, pos, fromPosition)
 local pos = getThingPos(cid)
 
 if item.actionid == 16203 then 
  if not isPlayer(cid) then
	  return true
  end 
  if getGlobalStorageValue(COH_STATUS) == getPlayerGuildName(cid) then
   doSendMagicEffect(getThingPos(cid), 14)
   doSendAnimatedText(pos, "", math.random(1, 255))
  doPlayerSendTextMessage(cid, 20, "Seja Bem Vindo Guild ["..tostring(getGlobalStorageValue(COH_STATUS)).."] !")
  else
   doSendMagicEffect(getThingPos(cid), 2)
      doTeleportThing(cid, fromPosition, false)
   doPlayerSendCancel(cid, "Voce nao pertence a Guild "..getGlobalStorageValue(COH_STATUS)..".")
  end
  return true
 end

	if item.actionid == 16202 then
	 if not isPlayer(cid) then
	  return true
  end
  
  if getPlayerGuildId(cid) > 0 then
   if (getGlobalStorageValue(COH_STATUS) ~= getPlayerGuildName(cid)) then
 	  setGlobalStorageValue(COH_PREPARE1, -1)
  	 setGlobalStorageValue(COH_PREPARE2, -1)
 	  setGlobalStorageValue(COH_STATUS, getPlayerGuildName(cid))
    doBroadcastMessage("[Vilarejo] O jogador ["..getCreatureName(cid).."] e sua Guild ["..getPlayerGuildName(cid).."] estao Dominando o Vilarejo , va impedir isso!")
 	  doCastleRemoveEnemies()
doPlayerSendTextMessage(cid, 20, "[Vilarejo] Voce e sua Guild estao Dominando["..tostring(getGlobalStorageValue(COH_STATUS)).."] !")
  	end
 	else
   doSendMagicEffect(pos, 2)  
   doTeleportThing(cid, fromPosition, false)
   doPlayerSendCancel(cid, "Voce nao possui uma Guild.")
   end
 	 return true
 end
 
	if item.actionid == 16200 then
  if not isPlayer(cid) then
	  return true
  end
  if getPlayerGuildId(cid) > 0 then
   doSendAnimatedText(pos, "", math.random(1, 255))
   if (getGlobalStorageValue(COH_PREPARE1) ~= getPlayerGuildName(cid)) and ((getGlobalStorageValue(COH_PREPARE2) ~= getPlayerGuildName(cid))) then
    setGlobalStorageValue(COH_PREPARE1, getPlayerGuildName(cid))
    doBroadcastMessage("[Vilarejo] Atencao! A Guild "..getPlayerGuildName(cid).." esta tentando Dominar Vilarejo, preparem-se!")
   end
  else
   doSendMagicEffect(pos, 2)  
   doTeleportThing(cid, fromPosition, false)
   doPlayerSendCancel(cid, " Você nao possui uma guild.")   
   return true
  end   
 end
 
 if item.actionid == 16201 then
  if not isPlayer(cid) then
	  return true
  end
  doSendAnimatedText(pos, "", math.random(1, 255))
  if (getGlobalStorageValue(COH_PREPARE2) ~= getPlayerGuildName(cid)) then
   setGlobalStorageValue(COH_PREPARE2, getPlayerGuildName(cid))
   doBroadcastMessage("[Vilarejo] Atencao! A Guild "..getPlayerGuildName(cid).." esta muito proxima do dominio!")
  end
 end
 return true
end