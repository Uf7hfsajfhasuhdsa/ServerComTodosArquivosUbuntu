local time = 60 -- tempo em segundos para usar
local monster = "Ultimate Kyuubi" -- "Monstro" entre aspas
local monster1 = "Ultimate Kyuubi" -- "Monstro" entre aspas
local monster2 = "Ultimate Kyuubi" -- "Monstro" entre aspas
local monster3 = "Ultimate Kyuubi" -- "Monstro" entre aspas
local monster4 = "Ultimate Kyuubi" -- "Monstro" entre aspas
local monster5 = "Ultimate Kyuubi" -- "Monstro" entre aspas
local pos = {x = 995, y = 1302, z = 8} -- Posição que irá nascer.
local pos1 = {x = 998, y = 1304, z = 8} -- Posição que irá nascer.
local pos2 = {x = 996, y = 1306, z = 8} -- Posição que irá nascer.
local pos3 = {x = 999, y = 1307, z = 8} -- Posição que irá nascer.
local pos4 = {x = 1000, y = 1304, z = 8} -- Posição que irá nascer.
local pos5 = {x = 999, y = 1302, z = 8} -- Posição que irá nascer.
 
function onUse(cid, item, frompos, itemex, topos)
 
if item.itemid % 2 == 1 then
doTransformItem(item.uid, item.itemid + 1)
else
doTransformItem(item.uid, item.itemid + -1)
end
 
if getStorage(1253) - os.time() < 1 then
     doSetStorage(1253, os.time() + time)
     addEvent(function() doCreateMonster(monster, pos) end, 100)
     addEvent(function() doCreateMonster(monster1, pos1) end, 100)
	 addEvent(function() doCreateMonster(monster2, pos2) end, 100)
     addEvent(function() doCreateMonster(monster3, pos3) end, 100)
	 addEvent(function() doCreateMonster(monster4, pos2) end, 100)
     addEvent(function() doCreateMonster(monster5, pos3) end, 100)
     doCreatureSay(cid, "Você errou, Agora MORRA!.", TALKTYPE_MONSTER)
else
doPlayerSendCancel(cid, "You need wait ".. getStorage(1253) - os.time() .." seconds to use again")
     doSendMagicEffect(getThingPos(cid), CONST_ME_POFF)
    end    
return true
 
end