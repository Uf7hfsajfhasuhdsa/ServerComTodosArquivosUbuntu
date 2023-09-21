local combat = createCombatObject() 
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 0)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 29)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -32, 1, -34, 1)
function onCastSpell(cid, var)
local storage = 2
local time = 2.5
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)
local tPos = var.pos or getThingPos(var.number)
if tPos then tPos.x = tPos.x + 1 tPos.y = tPos.y + 1 doSendMagicEffect(tPos, 177)
end
local tPos = var.pos or getThingPos(var.number)
if tPos then tPos.x = tPos.x + 0 tPos.y = tPos.y + 1 doSendMagicEffect(tPos, 177)
end
local tPos = var.pos or getThingPos(var.number)
if tPos then tPos.x = tPos.x + 1 tPos.y = tPos.y + 0 doSendMagicEffect(tPos, 177)
end
local tPos = var.pos or getThingPos(var.number)
if tPos then tPos.x = tPos.x + 0 tPos.y = tPos.y + 0 doSendMagicEffect(tPos, 177)
end
return doCombat(cid, combat, var)
else
     doPlayerSendCancel(cid, "Exausted")
  end
end