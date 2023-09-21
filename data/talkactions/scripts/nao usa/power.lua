function onSay(cid, words, param)
------------------------------ustawienia---------------
local mana = 100 
local lvl = 230
local voc = 341 -- W jaka voc zmienia.
local pacc = 0
local vocka = 206
local pacce = 0 
local outfit = {lookType=277,lookHead=0,lookAddons=0,lookLegs=0,lookBody=0,lookFeet=0} -- Zmiana outfitu w id?
local outfitTime = 9000000 -- Ustawiamy na maxa tak zeby byl outfit caly czas.
local napis = "Goku Power!" -- Jaki napis sie ma pojawic w nawiasie.
--------------------------------koniec ustawien---------
----------------------kod-----------------------------
if(getPlayerMana(cid) >= mana and getPlayerLevel(cid) >= lvl and getPlayerVocation(cid) == vocka )then
doPlayerSetVocation(cid,voc)
doPlayerAddMana(cid,-mana)
doSetCreatureOutfit(cid, outfit, outfitTime)
doPlayerSay(cid,napis,16)
doSendMagicEffect(getPlayerPosition(cid), 32)   
else
doPlayerSendCancel(cid,"Dostosuj sie do wymagan.")
end
return 1
end
--- Koniec milego korzystania ----