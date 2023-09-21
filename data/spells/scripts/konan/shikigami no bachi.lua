local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 0)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -26.35, 1, -28.05, 1)
function onCastSpell(cid, var)

local storage = 1
local time = 2.0
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)

local tPos = var.pos or getThingPos(var.number)
if tPos then
    tPos.x = tPos.x + 0
    tPos.y = tPos.y + 0
    doSendMagicEffect(tPos, 43)
end
	local tPos = var.pos or getThingPos(var.number)
if tPos then
    tPos.x = tPos.x + 0
    tPos.y = tPos.y + 0
    doSendMagicEffect(tPos, 54)
end
return doCombat(cid, combat, var)
else
     doPlayerSendCancel(cid, "Exausted")
  end
end