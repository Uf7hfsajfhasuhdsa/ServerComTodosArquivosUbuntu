function onUse(cid, topos, item, item2, frompos)

 local nonremskulls = {red = SKULL_RED, white = SKULL_WHITE, black = SKULL_BLACK}

 if getPlayerStorageValue(cid,1800) == 10 then
 doCreatureSay(cid, "Você não pode remover o seus frags e seus skulls.", TALKTYPE_ORANGE_1)

 else if getPlayerLevel(cid) >= 10 then
 doCreatureSay(cid, "Seus Frags foram removidos com sucesso.", TALKTYPE_ORANGE_1)
 db.executeQuery("UPDATE `killers` SET `unjustified` = 0 WHERE `id` IN (SELECT `kill_id` FROM `player_killers` WHERE `player_id` = " .. getPlayerGUID(cid) .. ")")
 doCreatureSetSkullType(cid,0)
 doSendMagicEffect(fromPosition, 37)
 doRemoveItem(item.uid)
 setPlayerStorageValue(cid,1800,20)
 return TRUE
 else
 doCreatureSay(cid, "Só pessoas level 10 pode usar este item.", TALKTYPE_ORANGE_1)
 end
 end
 end