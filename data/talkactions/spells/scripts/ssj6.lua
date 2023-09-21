local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition = createConditionObject(CONDITION_OUTFIT)
setConditionParam(condition, CONDITION_PARAM_TICKS, 86400000)
addOutfitCondition(condition, 0, 71, 0, 0, 0, 0)
setCombatCondition(combat, condition)

goku1 = {lookType=376}
gohan1 = {lookType=373}
barda1 = {lookType=368}
vegeta1 = {lookType=378}
brolly1 = {lookType=391}
trunks1 = {lookType=375}
tsuful1 = {lookType=381}
dende1 = {lookType=352}
uub1 = {lookType=383}
buu1 = {lookType=379}
cell1 = {lookType=385}
freeza1 = {lookType=382}
namek1 = {lookType=374}
c171 = {lookType=392}
c181 = {lookType=388}
cooler1 = {lookType=394}

ext = 1000

function onCastSpell(cid, var)

if getPlayerVocation(cid) == 400 then	
    if getPlayerLevel(cid) >= 2000 then
	doPlayerSay(cid, 'Super Transform', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,500)
         doSetCreatureOutfit(cid, goku1, -1) 
      addEvent(tran,ext,cid) 
	  	  		doSendMagicEffect(getPlayerPosition(cid), 233) 
else
doPlayerSendCancel(cid, "voce nao tem lvl 2000!")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

elseif getPlayerVocation(cid) == 401 then	
    if getPlayerLevel(cid) >= 2000 then
	doPlayerSay(cid, 'Super Transform', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,501) 
      addEvent(tran,ext,cid) 
	  	  	  	  		doSendMagicEffect(getPlayerPosition(cid), 33)
            doSetCreatureOutfit(cid, vegeta1, -1)

else
doPlayerSendCancel(cid, "voce nao tem lvl 2000!")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

elseif getPlayerVocation(cid) == 402 then	
    if getPlayerLevel(cid) >= 2000 then
	doPlayerSay(cid, 'Super Transform', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,502) 
      addEvent(tran,ext,cid) 
	  		doSendMagicEffect(getPlayerPosition(cid), 18) 
            doSetCreatureOutfit(cid, gohan1, -1)

else
doPlayerSendCancel(cid, "voce nao tem lvl 2000!")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

elseif getPlayerVocation(cid) == 403 then	
    if getPlayerLevel(cid) >= 2000 then
	doPlayerSay(cid, 'Super Transform', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,503) 
      addEvent(tran,ext,cid) 
	  		doSendMagicEffect(getPlayerPosition(cid), 243)   
            doSetCreatureOutfit(cid, trunks1, -1)

else
doPlayerSendCancel(cid, "voce nao tem lvl 2000!")
		doSendMagicEffect(getPlayerPosition(cid), 13) 
end



elseif getPlayerVocation(cid) == 404 then	
    if getPlayerLevel(cid) >= 2000 then
	doPlayerSay(cid, 'Super Transform', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,504) 
      addEvent(tran,ext,cid) 
	  	  		doSendMagicEffect(getPlayerPosition(cid), 7) 
            doSetCreatureOutfit(cid, freeza1, -1)

else
doPlayerSendCancel(cid, "voce nao tem lvl 2000!")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

elseif getPlayerVocation(cid) == 405 then	
    if getPlayerLevel(cid) >= 2000 then
	doPlayerSay(cid, 'Super Transform', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,505) 
      addEvent(tran,ext,cid) 
	  	  	  		doSendMagicEffect(getPlayerPosition(cid), 33)   
            doSetCreatureOutfit(cid, cell1, -1)

else
doPlayerSendCancel(cid, "voce nao tem lvl 2000!")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

elseif getPlayerVocation(cid) == 406 then	
    if getPlayerLevel(cid) >= 2000 then
	doPlayerSay(cid, 'Super Transform', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,506) 
      addEvent(tran,ext,cid) 
	  		doSendMagicEffect(getPlayerPosition(cid), 18) 
            doSetCreatureOutfit(cid, buu1, -1)

else
doPlayerSendCancel(cid, "voce nao tem lvl 2000!")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end


elseif getPlayerVocation(cid) == 407 then	
    if getPlayerLevel(cid) >= 2000 then
	doPlayerSay(cid, 'Super Transform', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,507) 
      addEvent(tran,ext,cid) 
	  		doSendMagicEffect(getPlayerPosition(cid), 243)   
            doSetCreatureOutfit(cid, tsuful1, -1)

else
doPlayerSendCancel(cid, "voce nao tem lvl 2000!")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

elseif getPlayerVocation(cid) == 408 then	
    if getPlayerLevel(cid) >= 2000 then
	doPlayerSay(cid, 'Super Transform', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,508) 
      addEvent(tran,ext,cid) 
	  		doSendMagicEffect(getPlayerPosition(cid), 18) 
            doSetCreatureOutfit(cid, dende1, -1)

else
doPlayerSendCancel(cid, "voce nao tem lvl 2000!")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

elseif getPlayerVocation(cid) == 409 then	
    if getPlayerLevel(cid) >= 2000 then
	doPlayerSay(cid, 'Super Transform', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,509) 
      addEvent(tran,ext,cid) 
	  		doSendMagicEffect(getPlayerPosition(cid), 18) 
            doSetCreatureOutfit(cid, namek1, -1)

else
doPlayerSendCancel(cid, "voce nao tem lvl 2000!")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

elseif getPlayerVocation(cid) == 410 then	
    if getPlayerLevel(cid) >= 2000 then
	doPlayerSay(cid, 'Super Transform', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,510) 
      addEvent(tran,ext,cid) 
	  		doSendMagicEffect(getPlayerPosition(cid), 18) 
            doSetCreatureOutfit(cid, brolly1, -1)

else
doPlayerSendCancel(cid, "voce nao tem lvl 2000!")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

elseif getPlayerVocation(cid) == 411 then	
    if getPlayerLevel(cid) >= 2000 then
	doPlayerSay(cid, 'Super Transform', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,511) 
      addEvent(tran,ext,cid) 
	  		doSendMagicEffect(getPlayerPosition(cid), 18) 
            doSetCreatureOutfit(cid, cooler1, -1)

else
doPlayerSendCancel(cid, "voce nao tem lvl 2000!")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

elseif getPlayerVocation(cid) == 412 then	
    if getPlayerLevel(cid) >= 2000 then
	doPlayerSay(cid, 'Super Transform', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,512) 
      addEvent(tran,ext,cid) 
	  		doSendMagicEffect(getPlayerPosition(cid), 18) 
            doSetCreatureOutfit(cid, c171, -1)

else
doPlayerSendCancel(cid, "voce nao tem lvl 2000!")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

elseif getPlayerVocation(cid) == 413 then 
    if getPlayerLevel(cid) >= 2000 then
	doPlayerSay(cid, 'Super Transform', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,513) 
      addEvent(tran,ext,cid) 
	  		doSendMagicEffect(getPlayerPosition(cid), 18) 
            doSetCreatureOutfit(cid, c181, -1)

else
doPlayerSendCancel(cid, "voce nao tem lvl 2000!")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

elseif getPlayerVocation(cid) == 414 then
    if getPlayerLevel(cid) >= 2000 then
	doPlayerSay(cid, 'Super Transform', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,514) 
      addEvent(tran,ext,cid) 
	  		doSendMagicEffect(getPlayerPosition(cid), 18) 
            doSetCreatureOutfit(cid, barda1, -1)

else
doPlayerSendCancel(cid, "voce nao tem lvl 2000!")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

elseif getPlayerVocation(cid) == 415 then
    if getPlayerLevel(cid) >= 2000 then
	doPlayerSay(cid, 'Super Transform', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,515) 
      addEvent(tran,ext,cid) 
	  		doSendMagicEffect(getPlayerPosition(cid), 18) 
            doSetCreatureOutfit(cid, uub1, -1)

else
doPlayerSendCancel(cid, "voce nao tem lvl 2000!")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

else
doPlayerSendCancel(cid, "Voce Nao tem level 2000, ou nao tem transform.")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end
end

