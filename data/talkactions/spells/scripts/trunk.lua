local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition = createConditionObject(CONDITION_OUTFIT)
setConditionParam(condition, CONDITION_PARAM_TICKS, 86400000)
addOutfitCondition(condition, 0, 71, 0, 0, 0, 0)
setCombatCondition(combat, condition)

trunk = {lookType=100}

ext = 1000

---trunk---
function tran(cid)
if getPlayerVocation(cid) == 343 then	
if getPlayerMana(cid) >= 0 then	 
		doSendMagicEffect(getPlayerPosition(cid), 180)     
            addEvent(tran,ext,cid)

      end
   end
end

function onCastSpell(cid, var)

---trunk---
if getPlayerVocation(cid) == 221 then	
    if getPlayerLevel(cid) >= 300 then
	doPlayerSetVocation(cid,343)
         doSetCreatureOutfit(cid, trunk, -1) 
      addEvent(tran,ext,cid) 
	  	  		doSendMagicEffect(getPlayerPosition(cid), 272) 
				doSendMagicEffect(getPlayerPosition(cid), 1041) 
				doSendMagicEffect(getPlayerPosition(cid), 1042) 
				doSendMagicEffect(getPlayerPosition(cid), 1043) 
else
doPlayerSendCancel(cid, "You need 300 level to Power transform")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end
else
doPlayerSendCancel(cid, "You cannot transform.")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end
end


