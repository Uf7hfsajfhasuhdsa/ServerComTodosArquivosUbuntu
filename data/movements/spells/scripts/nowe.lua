local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)
local condition = createConditionObject(CONDITION_OUTFIT)
setConditionParam(condition, CONDITION_PARAM_TICKS, 86400000)
addOutfitCondition(condition, 0, 71, 0, 0, 0, 0)
setCombatCondition(combat, condition)

goku = {lookType=277} --LOOKTYPE NOWEGO TRANSU
ext = 1000

local config = {
				vocation = 341 , ---Vocation w ktora ma zmieniac
				mana = 0 , --Wymagana Mana
				efekt = 180 , -- Efekt ktory bedzie potransie [np prady co 1 sec na ludziku]
				przedtrans = 206 , -- id Vocation dla ktorej dostepny bedzie trans
				level = 300 --- Wymagany lvl
				}
local efekty = {
			   pierwszy = 228 ,   --/
			   drugi = 227 ,  	 --|
			   trzeci = 226 ,   --<EFEKTY TRANSU ;D
			   czwarty = 262   ---\
			   }
---Goku---
function tran(cid)
if getPlayerVocation(cid) == 341 then	
if getPlayerMana(cid) >= 0 then	 
		doSendMagicEffect(getPlayerPosition(cid), 180)     
            addEvent(tran,ext,cid)
      end
   end
end
function onCastSpell(cid, var)
---goku---
if getPlayerVocation(cid) == 206 then	
    if getPlayerLevel(cid) >= 350 then
	doPlayerSetVocation(cid,341)
         doSetCreatureOutfit(cid, goku, -1) 
      addEvent(tran,ext,cid) 
	  	  		doSendMagicEffect(getPlayerPosition(cid), 228) 
				doSendMagicEffect(getPlayerPosition(cid), 227) 
				doSendMagicEffect(getPlayerPosition(cid), 226) 
				doSendMagicEffect(getPlayerPosition(cid), 262) 
else
doPlayerSendCancel(cid, "You need 350 level to Power transform")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end
else
doPlayerSendCancel(cid, "You cannot transform.")
		doSendMagicEffect(getPlayerPosition(cid), 2) 
end
	return true
	end
