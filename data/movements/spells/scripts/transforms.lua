local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition = createConditionObject(CONDITION_OUTFIT)
setConditionParam(condition, CONDITION_PARAM_TICKS, 86400000)
addOutfitCondition(condition, 0, 71, 0, 0, 0, 0)
setCombatCondition(combat, condition)



outfit = {lookType=280}
outfit1 = {lookType=120}
outfit2 = {lookType=110}
outfit3 = {lookType=134}
outfits = {lookType=280}
outfits1 = {lookType=120}
outfits2 = {lookType=110}
outfits3 = {lookType=134}
gotenksssj = {lookType=24}
gotenksssj3 = {lookType=6}
gotenksgtssj = {lookType=169}
gotenksgtssj3 = {lookType=170}
shenrons1 = {lookType=198}
shenrons2 = {lookType=77}
shenrons3 = {lookType=257}
shenrons4 = {lookType=232}
shenrons5 = {lookType=20}
shenrons6 = {lookType=265}


ext = 1000

---Janemba---
function trans(cid)
if getPlayerVocation(cid) == 304 then	
if getPlayerMana(cid) >= 0 then	 
		doSendMagicEffect(getPlayerPosition(cid), 180)     
            addEvent(trans,ext,cid)

      end
   end
end



function trans1(cid)
if getPlayerVocation(cid) == 305 then	
if getPlayerMana(cid) >= 0 then	                  
            addEvent(trans1,ext,cid)
      end
   end
end


function trans2(cid)
if getPlayerVocation(cid) == 306 then	
if getPlayerMana(cid) >= 0 then	                  
            addEvent(trans1,ext,cid)

      end
   end
end


function trans3(cid)
if getPlayerVocation(cid) == 307 then	
if getPlayerMana(cid) >= 0 then	                   
            addEvent(trans1,ext,cid)

      end
   end
end


---End Janemba---






---Reborn Janemba---
function trans4(cid)
if getPlayerVocation(cid) == 309 then	
if getPlayerMana(cid) >= 0 then	
		doSendMagicEffect(getPlayerPosition(cid), 14)     
            addEvent(trans4,ext,cid)
      end
   end
end



function trans5(cid)
if getPlayerVocation(cid) == 310 then	
if getPlayerMana(cid) >= 0 then	
		doSendMagicEffect(getPlayerPosition(cid), 181)                   
            addEvent(trans5,ext,cid)
      end
   end
end


function trans6(cid)
if getPlayerVocation(cid) == 311 then	
if getPlayerMana(cid) >= 0 then	
		doSendMagicEffect(getPlayerPosition(cid), 14)                       
            addEvent(trans6,ext,cid)
      end
   end
end


function trans7(cid)
if getPlayerVocation(cid) == 312 then	
if getPlayerMana(cid) >= 0 then	  
		doSendMagicEffect(getPlayerPosition(cid), 14)                     
            addEvent(trans7,ext,cid)

      end
   end
end
--- Reborn Janemba End ---


--- Gotenks ---
function fusion(cid)
if getPlayerVocation(cid) == 84 then	
if getPlayerMana(cid) >= 0 then	
		doSendMagicEffect(getPlayerPosition(cid), 14)                    
            addEvent(fusion,ext,cid)
      end
   end
end

function fusion1(cid)
if getPlayerVocation(cid) == 85 then	
if getPlayerMana(cid) >= 0 then	
		doSendMagicEffect(getPlayerPosition(cid), 234)                    
            addEvent(fusion1,ext,cid)
      end
   end
end

function fusionchibi(cid)
if getPlayerVocation(cid) == 317 then	
if getPlayerMana(cid) >= 0 then	
		doSendMagicEffect(getPlayerPosition(cid), 14)                    
            addEvent(fusionchibi,ext,cid)
      end
   end
end

function fusionchibi2(cid)
if getPlayerVocation(cid) == 318 then	
if getPlayerMana(cid) >= 0 then	
		doSendMagicEffect(getPlayerPosition(cid), 234)                    
            addEvent(fusionchibi2,ext,cid)
      end
   end
end



--- Gotenks End ---

--- Gotenks Reborn ---
function fusion2(cid)
if getPlayerVocation(cid) == 320 then	
if getPlayerMana(cid) >= 0 then	
		doSendMagicEffect(getPlayerPosition(cid), 14)                    
            addEvent(fusion2,ext,cid)
      end
   end
end

function fusion3(cid)
if getPlayerVocation(cid) == 321 then	
if getPlayerMana(cid) >= 0 then	
		doSendMagicEffect(getPlayerPosition(cid), 234)                    
            addEvent(fusion3,ext,cid)
      end
   end
end


function fusionchibigt(cid)
if getPlayerVocation(cid) == 323 then	
if getPlayerMana(cid) >= 0 then	
		doSendMagicEffect(getPlayerPosition(cid), 14)                    
            addEvent(fusionchibigt,ext,cid)
      end
   end
end

function fusionchibigt1(cid)
if getPlayerVocation(cid) == 324 then	
if getPlayerMana(cid) >= 0 then	
		doSendMagicEffect(getPlayerPosition(cid), 234)                    
            addEvent(fusionchibigt1,ext,cid)
      end
   end
end

--- Chibi Trunks Transform ---



--- Gotenks Reborn End ---




--- Shenron ---

function shenron(cid)
if getPlayerVocation(cid) == 330 then	
if getPlayerMana(cid) >= 0 then	         
		doSendMagicEffect(getPlayerPosition(cid), 13)             
            addEvent(shenron,ext,cid)
      end
   end
end


function shenron2(cid)
if getPlayerVocation(cid) == 331 then	
if getPlayerMana(cid) >= 0 then	      
		doSendMagicEffect(getPlayerPosition(cid), 13)                
            addEvent(shenron2,ext,cid)

      end
   end
end


function shenron3(cid)
if getPlayerVocation(cid) == 332 then	
if getPlayerMana(cid) >= 0 then	  
		doSendMagicEffect(getPlayerPosition(cid), 13)                     
            addEvent(shenron3,ext,cid)

      end
   end
end

function shenron4(cid)
if getPlayerVocation(cid) == 333 then	
if getPlayerMana(cid) >= 0 then	 
		doSendMagicEffect(getPlayerPosition(cid), 13)                     
            addEvent(shenron4,ext,cid)
      end
   end
end


function shenron5(cid)
if getPlayerVocation(cid) == 334 then	
if getPlayerMana(cid) >= 0 then	   
		doSendMagicEffect(getPlayerPosition(cid), 13)                   
            addEvent(shenron5,ext,cid)

      end
   end
end


function shenron6(cid)
if getPlayerVocation(cid) == 335 then	
if getPlayerMana(cid) >= 0 then	        
		doSendMagicEffect(getPlayerPosition(cid), 13)               
            addEvent(shenron6,ext,cid)

      end
   end
end
--- Shenron Reborn ---
function shenrongt(cid)
if getPlayerVocation(cid) == 337 then	
if getPlayerMana(cid) >= 0 then	  
		doSendMagicEffect(getPlayerPosition(cid), 180)                     
            addEvent(shenrongt,ext,cid)

      end
   end
end

function shenrongt1(cid)
if getPlayerVocation(cid) == 338 then	
if getPlayerMana(cid) >= 0 then	 
		doSendMagicEffect(getPlayerPosition(cid), 180)                     
            addEvent(shenrongt1,ext,cid)
      end
   end
end


function shenrongt2(cid)
if getPlayerVocation(cid) == 339 then	
if getPlayerMana(cid) >= 0 then	   
		doSendMagicEffect(getPlayerPosition(cid), 180)                   
            addEvent(shenrongt2,ext,cid)

      end
   end
end


function shenrongt3(cid)
if getPlayerVocation(cid) == 340 then	
if getPlayerMana(cid) >= 0 then	        
		doSendMagicEffect(getPlayerPosition(cid), 180)               
            addEvent(shenrongt3,ext,cid)

      end
   end
end

--- Shenron End ---


function onCastSpell(cid, var)


---Janemba---

if getPlayerVocation(cid) == 303 then	
    if getPlayerLevel(cid) >= 50 then
	doPlayerSay(cid, 'Transforms', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,304)
         doSetCreatureOutfit(cid, outfit, -1) 
      addEvent(trans,ext,cid) 
	  	  		doSendMagicEffect(getPlayerPosition(cid), 233) 
else
doPlayerSendCancel(cid, "You need 50 level to first transform")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

elseif getPlayerVocation(cid) == 304 then	
    if getPlayerLevel(cid) >= 100 then
	doPlayerSay(cid, 'Transforms', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,305) 
      addEvent(trans1,ext,cid) 
	  	  	  	  		doSendMagicEffect(getPlayerPosition(cid), 33)
            doSetCreatureOutfit(cid, outfit1, -1)

else
doPlayerSendCancel(cid, "You need 100 level to next transform")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

elseif getPlayerVocation(cid) == 305 then	
    if getPlayerLevel(cid) >= 150 then
	doPlayerSay(cid, 'Transforms', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,306) 
      addEvent(trans2,ext,cid) 
	  		doSendMagicEffect(getPlayerPosition(cid), 18) 
            doSetCreatureOutfit(cid, outfit2, -1)

else
doPlayerSendCancel(cid, "You need 150 level to next transform")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end



elseif getPlayerVocation(cid) == 306 then	
    if getPlayerLevel(cid) >= 200 then
	doPlayerSay(cid, 'Transforms', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,307) 
      addEvent(trans3,ext,cid) 
	  		doSendMagicEffect(getPlayerPosition(cid), 243)   
            doSetCreatureOutfit(cid, outfit3, -1)

else
doPlayerSendCancel(cid, "You need 200 level to next transform")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end


--- Reborn ---

elseif getPlayerVocation(cid) == 308 then	
    if getPlayerLevel(cid) >= 50 then
	doPlayerSay(cid, 'Transforms', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,309) 
      addEvent(trans4,ext,cid) 
	  	  		doSendMagicEffect(getPlayerPosition(cid), 7) 
            doSetCreatureOutfit(cid, outfits, -1)

else
doPlayerSendCancel(cid, "You need 50 level to next transform")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end



elseif getPlayerVocation(cid) == 309 then	
    if getPlayerLevel(cid) >= 100 then
	doPlayerSay(cid, 'Transforms', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,310) 
      addEvent(trans5,ext,cid) 
	  	  	  		doSendMagicEffect(getPlayerPosition(cid), 33)   
            doSetCreatureOutfit(cid, outfits1, -1)

else
doPlayerSendCancel(cid, "You need 100 level to next transform")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

elseif getPlayerVocation(cid) == 310 then	
    if getPlayerLevel(cid) >= 150 then
	doPlayerSay(cid, 'Transforms', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,311) 
      addEvent(trans6,ext,cid) 
	  		doSendMagicEffect(getPlayerPosition(cid), 18) 
            doSetCreatureOutfit(cid, outfits2, -1)

else
doPlayerSendCancel(cid, "You need 150 level to next transform")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end


elseif getPlayerVocation(cid) == 311 then	
    if getPlayerLevel(cid) >= 200 then
	doPlayerSay(cid, 'Transforms', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,312) 
      addEvent(trans7,ext,cid) 
	  		doSendMagicEffect(getPlayerPosition(cid), 243)   
            doSetCreatureOutfit(cid, outfits3, -1)

else
doPlayerSendCancel(cid, "You need 200 level to next transform")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

---End Janemba? ---
--- Gotenks ---
elseif getPlayerVocation(cid) == 313 then	
    if getPlayerLevel(cid) >= 150 then
	doPlayerSay(cid, 'Transforms', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,314) 
      addEvent(fusion,ext,cid) 
            doSetCreatureOutfit(cid, gotenksssj, -1)
     	setPlayerStorageValue(cid,20235,1)
		doSendMagicEffect(getPlayerPosition(cid), 63) 

else
doPlayerSendCancel(cid, "Gotenks! You need 150 level to transform.")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

elseif getPlayerVocation(cid) == 314 then	
    if getPlayerLevel(cid) >= 200 then
	doPlayerSay(cid, 'Transforms', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,315) 
      addEvent(fusion1,ext,cid) 
            doSetCreatureOutfit(cid, gotenksssj3, -1)
     	setPlayerStorageValue(cid,20235,2)
		doSendMagicEffect(getPlayerPosition(cid), 64) 

else
doPlayerSendCancel(cid, "Gotenks! You need 200 level to transform.")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

--- Chibi ---

elseif getPlayerVocation(cid) == 316 then	
    if getPlayerLevel(cid) >= 150 then
	doPlayerSay(cid, 'Transforms', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,317) 
      addEvent(fusionchibi,ext,cid) 
            doSetCreatureOutfit(cid, gotenksssj, -1)
     	setPlayerStorageValue(cid,20235,1)
		doSendMagicEffect(getPlayerPosition(cid), 63) 

else
doPlayerSendCancel(cid, "Gotenks! You need 150 level to transform.")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

elseif getPlayerVocation(cid) == 317 then	
    if getPlayerLevel(cid) >= 200 then
	doPlayerSay(cid, 'Transforms', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,318) 
      addEvent(fusionchibi2,ext,cid) 
            doSetCreatureOutfit(cid, gotenksssj3, -1)
     	setPlayerStorageValue(cid,20235,2)
		doSendMagicEffect(getPlayerPosition(cid), 64) 

else
doPlayerSendCancel(cid, "Gotenks! You need 200 level to transform.")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end


--- Reborn ---
--- Goten ---

elseif getPlayerVocation(cid) == 319 then	
    if getPlayerLevel(cid) >= 150 then
	doPlayerSay(cid, 'Transforms', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,320) 
      addEvent(fusion,ext,cid) 
            doSetCreatureOutfit(cid, gotenksgtssj, -1)
     	setPlayerStorageValue(cid,20236,3)
		doSendMagicEffect(getPlayerPosition(cid), 63) 

else
doPlayerSendCancel(cid, "Gotenks GT! You need 150 level to transform.")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

elseif getPlayerVocation(cid) == 320 then	
    if getPlayerLevel(cid) >= 200 then
	doPlayerSay(cid, 'Transforms', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,321) 
      addEvent(fusion1,ext,cid) 
            doSetCreatureOutfit(cid, gotenksgtssj3, -1)
     	setPlayerStorageValue(cid,20236,4)
		doSendMagicEffect(getPlayerPosition(cid), 64) 

else
doPlayerSendCancel(cid, "Gotenks GT! You need 200 level to transform.")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

--- Chibi Trunks ---

elseif getPlayerVocation(cid) == 322 then	
    if getPlayerLevel(cid) >= 150 then
	doPlayerSay(cid, 'Transforms', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,323) 
      addEvent(fusionchibigt,ext,cid) 
            doSetCreatureOutfit(cid, gotenksgtssj, -1)
     	setPlayerStorageValue(cid,20236,3)
		doSendMagicEffect(getPlayerPosition(cid), 63) 

else
doPlayerSendCancel(cid, "Gotenks GT! You need 150 level to transform.")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

elseif getPlayerVocation(cid) == 323 then	
    if getPlayerLevel(cid) >= 200 then
	doPlayerSay(cid, 'Transforms', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,324) 
      addEvent(fusionchibigt1,ext,cid) 
            doSetCreatureOutfit(cid, gotenksgtssj3, -1)
     	setPlayerStorageValue(cid,20236,4)
		doSendMagicEffect(getPlayerPosition(cid), 64) 

else
doPlayerSendCancel(cid, "Gotenks GT! You need 200 level to transform.")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end



---End Janemba and others---

--- Shenron ---

elseif getPlayerVocation(cid) == 329 then	
    if getPlayerLevel(cid) >= 30 then
	doPlayerSay(cid, 'Transforms', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,330) 
      addEvent(shenron,ext,cid) 
            doSetCreatureOutfit(cid, shenrons1, -1)
		doSendMagicEffect(getPlayerPosition(cid), 75) 

else
doPlayerSendCancel(cid, "Shenron, You need 30 level to transform.")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

elseif getPlayerVocation(cid) == 330 then	
    if getPlayerLevel(cid) >= 50 then
	doPlayerSay(cid, 'Transforms', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,331) 
      addEvent(shenron2,ext,cid) 
            doSetCreatureOutfit(cid, shenrons2, -1)
		doSendMagicEffect(getPlayerPosition(cid), 233) 

else
doPlayerSendCancel(cid, "Shenron, You need 50 level to transform.")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

elseif getPlayerVocation(cid) == 331 then	
    if getPlayerLevel(cid) >= 75 then
	doPlayerSay(cid, 'Transforms', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,332) 
      addEvent(shenron3,ext,cid) 
            doSetCreatureOutfit(cid, shenrons3, -1)
		doSendMagicEffect(getPlayerPosition(cid), 75) 

else
doPlayerSendCancel(cid, "Shenron, You need 75 level to transform.")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end


elseif getPlayerVocation(cid) == 332 then	
    if getPlayerLevel(cid) >= 100 then
	doPlayerSay(cid, 'Transforms', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,333) 
      addEvent(shenron4,ext,cid) 
            doSetCreatureOutfit(cid, shenrons4, -1)
		doSendMagicEffect(getPlayerPosition(cid), 75) 

else
doPlayerSendCancel(cid, "Shenron, You need 100 level to transform.")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

elseif getPlayerVocation(cid) == 333 then	
    if getPlayerLevel(cid) >= 150 then
	doPlayerSay(cid, 'Transforms', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,334) 
      addEvent(shenron5,ext,cid) 
            doSetCreatureOutfit(cid, shenrons5, -1)
		doSendMagicEffect(getPlayerPosition(cid), 233) 

else
doPlayerSendCancel(cid, "Shenron, You need 150 level to transform.")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end


elseif getPlayerVocation(cid) == 334 then	
    if getPlayerLevel(cid) >= 200 then
	doPlayerSay(cid, 'Transforms', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,335) 
      addEvent(shenron6,ext,cid) 
            doSetCreatureOutfit(cid, shenrons6, -1)
		doSendMagicEffect(getPlayerPosition(cid), 75) 

else
doPlayerSendCancel(cid, "Shenron, You need 200 level to transform.")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

--- Shenron Reborn ---

elseif getPlayerVocation(cid) == 336 then	
    if getPlayerLevel(cid) >= 50 then
	doPlayerSay(cid, 'Transforms', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,337) 
      addEvent(shenrongt,ext,cid) 
            doSetCreatureOutfit(cid, shenrons2, -1)
		doSendMagicEffect(getPlayerPosition(cid), 75) 

else
doPlayerSendCancel(cid, "Shenron, You need 50 level to transform.")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end


elseif getPlayerVocation(cid) == 337 then	
    if getPlayerLevel(cid) >= 100 then
	doPlayerSay(cid, 'Transforms', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,338) 
      addEvent(shenrongt1,ext,cid) 
            doSetCreatureOutfit(cid, shenrons3, -1)
		doSendMagicEffect(getPlayerPosition(cid), 75) 

else
doPlayerSendCancel(cid, "Shenron, You need 100 level to transform.")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

elseif getPlayerVocation(cid) == 338 then	
    if getPlayerLevel(cid) >= 150 then
	doPlayerSay(cid, 'Transforms', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,339) 
      addEvent(shenrongt2,ext,cid) 
            doSetCreatureOutfit(cid, shenrons4, -1)
		doSendMagicEffect(getPlayerPosition(cid), 233) 
doPlayerSendCancel(cid, "Success Transform.")
else
doPlayerSendCancel(cid, "Shenron, You need 150 level to transform.")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end


elseif getPlayerVocation(cid) == 339 then	
    if getPlayerLevel(cid) >= 200 then
	doPlayerSay(cid, 'Transforms', TALKTYPE_ORANGE_1)
      doPlayerSetVocation(cid,340) 
      addEvent(shenrongt3,ext,cid) 
            doSetCreatureOutfit(cid, shenrons6, -1)
		doSendMagicEffect(getPlayerPosition(cid), 75) 

else
doPlayerSendCancel(cid, "Shenron, You need 200 level to transform.")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end

--- Shenron End ---


else
doPlayerSendCancel(cid, "You cannot transform.")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end
end

