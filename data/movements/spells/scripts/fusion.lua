local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition = createConditionObject(CONDITION_OUTFIT)
setConditionParam(condition, CONDITION_PARAM_TICKS, 86400000)
addOutfitCondition(condition, 0, 71, 0, 0, 0, 0)
setCombatCondition(combat, condition)

gotenks = {lookType=25}
gogetassj = {lookType=244}
gogetassj4 = {lookType=237}

gotenksgt = {lookType=168}

ext = 1000

---Gogeta ssj,ssj4---
function gokugogetassj(cid)
if getPlayerVocation(cid) == 325 then	
if getPlayerMana(cid) >= 0 then	
		doSendMagicEffect(getPlayerPosition(cid), 234)     
            addEvent(gokugogetassj,ext,cid)
      end
   end
end



function vegetagogetassj(cid)
if getPlayerVocation(cid) == 326 then	
if getPlayerMana(cid) >= 0 then	 
		doSendMagicEffect(getPlayerPosition(cid), 234)                    
            addEvent(vegetagogetassj,ext,cid)
      end
   end
end
function gokugogetassj4(cid)
if getPlayerVocation(cid) == 327 then	
if getPlayerMana(cid) >= 0 then	
		doSendMagicEffect(getPlayerPosition(cid), 234)     
            addEvent(gokugogetassj4,ext,cid)
      end
   end
end



function vegetagogetassj4(cid)
if getPlayerVocation(cid) == 328 then	
if getPlayerMana(cid) >= 0 then	 
		doSendMagicEffect(getPlayerPosition(cid), 13)                    
            addEvent(vegetagogetassj4,ext,cid)
      end
   end
end

--- Gotenks ---


function gotenfusion(cid)
if getPlayerVocation(cid) == 313 then	
		doSendMagicEffect(getPlayerPosition(cid), 234)     
            addEvent(gotenfusion,ext,cid)


   end
end



function ctrunksfusion(cid)
if getPlayerVocation(cid) == 316 then	
		doSendMagicEffect(getPlayerPosition(cid), 234)                    
            addEvent(ctrunksfusion,ext,cid)
   end
end
--- reborn gotenks fusion---
function gotengtfusion(cid)
if getPlayerVocation(cid) == 229 then	

		doSendMagicEffect(getPlayerPosition(cid), 234)     
            addEvent(gotengtfusion,ext,cid)


   end
end



function ctrunksgtfusion(cid)
if getPlayerVocation(cid) == 229 then	

		doSendMagicEffect(getPlayerPosition(cid), 234)                    
            addEvent(ctrunksgtfusion,ext,cid)

   end
end
---End gogetassj,ssj4---





function onCastSpell(cid, var)

---Fusion---

if getPlayerVocation(cid) == 18 then	
    if getPlayerLevel(cid) >= 100 then
      doPlayerSetVocation(cid,325)
         doSetCreatureOutfit(cid, gogetassj, -1) 
      addEvent(gokugogetassj,ext,cid) 
     	setPlayerStorageValue(cid,20234,1)
		doSendMagicEffect(getPlayerPosition(cid), 32) 	
else
doPlayerSendCancel(cid, "Goku! You need 100 level and ssj to fusion.")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

elseif getPlayerVocation(cid) == 25 then	
    if getPlayerLevel(cid) >= 100 then
      doPlayerSetVocation(cid,326) 
      addEvent(vegetagogetassj,ext,cid) 
            doSetCreatureOutfit(cid, gogetassj, -1)
     	setPlayerStorageValue(cid,20234,2)
		doSendMagicEffect(getPlayerPosition(cid), 32) 

else
doPlayerSendCancel(cid, "Vegeta! You need 100 level and ssj to fusion.")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end


elseif getPlayerVocation(cid) == 206 then	
    if getPlayerLevel(cid) >= 250 then
      doPlayerSetVocation(cid,327) 
      addEvent(gokugogetassj4,ext,cid) 
            doSetCreatureOutfit(cid, gogetassj4, -1)
     	setPlayerStorageValue(cid,20232,3)
		doSendMagicEffect(getPlayerPosition(cid), 32) 

else
doPlayerSendCancel(cid, "Goku SSJ4! You need 250 level and ssj4 to fusion.")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

elseif getPlayerVocation(cid) == 219 then	
    if getPlayerLevel(cid) >= 250 then
      doPlayerSetVocation(cid,328) 
      addEvent(vegetagogetassj4,ext,cid) 
            doSetCreatureOutfit(cid, gogetassj4, -1)
     	setPlayerStorageValue(cid,20232,4)
		doSendMagicEffect(getPlayerPosition(cid), 32) 

else
doPlayerSendCancel(cid, "Vegeta SSJ4! You need 250 level and ssj4 to fusion.")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

elseif getPlayerVocation(cid) == 77 then	
    if getPlayerLevel(cid) >= 100 then
      doPlayerSetVocation(cid,313) 
      addEvent(gotenfusion,ext,cid) 
            doSetCreatureOutfit(cid, gotenks, -1)
     	setPlayerStorageValue(cid,20235,1)
		doSendMagicEffect(getPlayerPosition(cid), 32) 

else
doPlayerSendCancel(cid, "Goten! You need 100 level and ssj to fusion.")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

elseif getPlayerVocation(cid) == 79 then	
    if getPlayerLevel(cid) >= 100 then
      doPlayerSetVocation(cid,316) 
      addEvent(ctrunksfusion,ext,cid) 
            doSetCreatureOutfit(cid, gotenks, -1)
     	setPlayerStorageValue(cid,20235,2)
		doSendMagicEffect(getPlayerPosition(cid), 32) 
else
doPlayerSendCancel(cid, "Chibi Trunks! You need 100 level and ssj to fusion.")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

elseif getPlayerVocation(cid) == 228 then	
    if getPlayerLevel(cid) >= 100 then
      doPlayerSetVocation(cid, 319) 
      addEvent(gotengtfusion,ext,cid) 
            doSetCreatureOutfit(cid, gotenksgt, -1)
     	setPlayerStorageValue(cid,20236,3)
		doSendMagicEffect(getPlayerPosition(cid), 32) 

else
doPlayerSendCancel(cid, "Goten GT! You need 100 level and ssj to fusion.")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

elseif getPlayerVocation(cid) == 233 then	
    if getPlayerLevel(cid) >= 100 then
      doPlayerSetVocation(cid,322) 
      addEvent(ctrunksgtfusion,ext,cid) 
            doSetCreatureOutfit(cid, gotenksgt, -1)
     	setPlayerStorageValue(cid,20236,4)
		doSendMagicEffect(getPlayerPosition(cid), 32) 
else
doPlayerSendCancel(cid, "Chibi Trunks GT! You need 100 level and ssj to fusion.")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end


--- End Fusion---





else
doPlayerSendCancel(cid, "You cannot fusion.")
		doSendMagicEffect(getPlayerPosition(cid), 2) 

end


end

