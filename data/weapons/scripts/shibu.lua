local combat = createCombatObject()


 local combat = createCombatObject()
    setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)
    setCombatParam(combat, COMBAT_PARAM_BLOCKSHIELD, 1)
    setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
    setCombatFormula(combat, COMBAT_FORMULA_SKILL, 75, 75, 75, 75)

function onUseWeapon(cid, var)
local tPos = var.pos or getThingPos(var.number)
if tPos then
    tPos.x = tPos.x + 1
    tPos.y = tPos.y + 0
    doSendMagicEffect(tPos, 338)
local chance =	12 -- chance em porcentagem de acontecer o script de double attack	
  		if chance <= math.random(1,100) then
        doCombat(cid, combat, var)
		else
		doCombat(cid, combat, var)
		doSendAnimatedText(getPlayerPosition(cid), "DoubleHit!", TEXTCOLOR_DARKRED)
    	addEvent(doCombat, 500, cid, combat, var)
		end
		end
  return true
end