-- <Script by jhon992> --
function onSay(cid, words, param, channel)

if (param ~= "mixedpromo" and param ~= "spinpromo" and param ~= "sacredpromo" and param ~= "supremepromo" and param ~= "forgottenpromo" and param ~= "novapromo") then
  doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT,"Incorrect parameter.")
  return TRUE
end

local config = {
mixedlvl = 400, -- level para resetar mixed
spinlvl = 60000, -- level para resetar spin
sacredlvl = 95000, -- level para resetar sacred
supremelvl = 310000, -- level para resetar supreme
forgottenlvl = 550000, -- level para resetar forgotten
novalvl = 715000, -- level para resetar nova
vocationMixed = 60, -- id vocação mixed
vocationSpin = 6, -- id vocação spin
vocationSacred = 7,  -- id vocação sacred
vocationSupreme = 11, -- id vocação supreme
vocationForgotten = 12, -- id vocação forgotten
vocationNova = 13,  -- id vocação nova                    
lvlreset = 8, -- level apos resetar primeiras vocações
lvlSacred = 30000, -- level apos resetar vocação sacred
lvlNew = 100000, -- level apos resetar útimas 3 vocações
player = getPlayerGUID(cid),  -- não mexa!
pz = "no", -- players precisam estar em protection zone para usar? ("yes" or "no").
battle = "yes", -- players deve estar sem battle ("yes" or "no")
premium = "no" -- se precisa ser premium account ("yes" or "no")
}

if(config.pz == "yes") and (getTilePzInfo(getCreaturePosition(cid)) == FALSE) then
   doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT,"You should be in the protection zone for use.")
   return TRUE
end

if(config.premium == "yes") and (not isPremium(cid)) then
   doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "Only players with premium account can use.")
   return TRUE
end

if(config.battle == "yes") and (getCreatureCondition(cid, CONDITION_INFIGHT) == TRUE) then
   doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "You can not use in battle.")
   return TRUE
end

if (param == "mixedpromo") then
   if (getPlayerVocation(cid) == 1 or getPlayerVocation(cid) == 2 or getPlayerVocation(cid) == 3 or getPlayerVocation(cid) == 4 or getPlayerVocation(cid) == 5 or getPlayerVocation(cid) == 6 or getPlayerVocation(cid) == 7 or getPlayerVocation(cid) == 8 or getPlayerVocation(cid) == 9 or getPlayerVocation(cid) == 10 or getPlayerVocation(cid) == 21 or getPlayerVocation(cid) == 23 or getPlayerVocation(cid) == 24 or getPlayerVocation(cid) == 50 or getPlayerVocation(cid) == 51 or getPlayerVocation(cid) == 59) then
     if (getPlayerLevel(cid) >= config.mixedlvl) then
      doPlayerSetVocation(cid, config.vocationMixed)
      doRemoveCreature(cid)
      db.executeQuery("UPDATE `players` SET `level` = "..config.lvlreset..", `experience` = 0 WHERE `id` = "..config.player)
      return TRUE
     else
      doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT,"You need level "..config.mixedlvl..".")
      return TRUE
     end
   else
     doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT,"You don't have vocation for this reset.")
     return TRUE
   end
end

if (param == "spinpromo") then
   if (getPlayerVocation(cid) == 60) then
   if (getPlayerLevel(cid) >= config.spinlvl) then
     doPlayerSetVocation(cid, config.vocationSpin)
           doRemoveCreature(cid)
           db.executeQuery("UPDATE `players` SET `level` = "..config.lvlreset..", `experience` = 0 WHERE `id` = "..config.player)
           else
      doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT,"You need level "..config.spinlvl..".")
      return TRUE
     end
   else
     doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT,"You don't have vocation for this reset.")
     return TRUE
   end
end

if (param == "sacredpromo") then
   if (getPlayerVocation(cid) == 6) then
   if (getPlayerLevel(cid) >= config.sacredlvl) then
     doPlayerSetVocation(cid, config.vocationSacred)
           doRemoveCreature(cid)
           db.executeQuery("UPDATE `players` SET `level` = "..config.lvlSacred..", `experience` = 0 WHERE `id` = "..config.player)
           else
      doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT,"You need level "..config.sacredlvl..".")
      return TRUE
     end
   else
     doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT,"You don't have vocation for this reset.")
     return TRUE
   end
end

if (param == "supremepromo") then
   if (getPlayerVocation(cid) == 10) then
     if (getPlayerLevel(cid) >= config.supremedlvl) then
      doPlayerSetVocation(cid, config.vocationSupreme)
      doRemoveCreature(cid)
      db.executeQuery("UPDATE `players` SET `level` = "..config.lvlNew..", `experience` = 0 WHERE `id` = "..config.player)
      else
      doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT,"You need level "..config.supremelvl..".")
      return TRUE
     end
   else
     doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT,"You don't have vocation for this reset.")
     return TRUE
   end
   end

if (param == "forgottenpromo") then
   if (getPlayerVocation(cid) == 11) then
   if (getPlayerLevel(cid) >= config.forgottenlvl) then
     doPlayerSetVocation(cid, config.vocationForgotten)
           doRemoveCreature(cid)
           db.executeQuery("UPDATE `players` SET `level` = "..config.lvlNew..", `experience` = 0 WHERE `id` = "..config.player)
           else
      doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT,"You need level "..config.forgottenlvl..".")
      return TRUE
     end
   else
     doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT,"You don't have vocation for this reset.")
     return TRUE
   end
end

if (param == "novapromo") then
   if (getPlayerVocation(cid) == 12) then
   if (getPlayerLevel(cid) >= config.novalvl) then
     doPlayerSetVocation(cid, config.vocationNova)
           doRemoveCreature(cid)
           db.executeQuery("UPDATE `players` SET `level` = "..config.lvlNew..", `experience` = 0 WHERE `id` = "..config.player)
           else
      doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT,"You need level "..config.novalvl..".")
      return TRUE
     end
   else
     doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT,"You don't have vocation for this reset.")
     return TRUE
   end
end

return TRUE
end
