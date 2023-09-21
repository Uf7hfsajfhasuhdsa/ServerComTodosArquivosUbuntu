local combat = createCombatObject() 
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 0)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -18.7, 1, -20.4, 1)
function onCastSpell(cid, var)
local storage = 1
local time = 1.5
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)
local tPos = var.pos or getThingPos(var.number)
if tPos then
    tPos.x = tPos.x + 4
    tPos.y = tPos.y
    doSendMagicEffect(tPos, 160)
end
return doCombat(cid, combat, var)
else
     doPlayerSendCancel(cid, "Exausted")
  end
end