local combat = createCombatObject()

setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)

setCombatParam(combat, COMBAT_PARAM_BLOCKSHIELD, 1)

setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)

setCombatFormula(combat, COMBAT_FORMULA_SKILL, 90, 90, 90, 90)

local area = createCombatArea( { {1, 3, 1}, {1, 3, 1}, {1, 3, 1} } )
setCombatArea(combat, area)


function onUseWeapon(cid, var)
local tPos = var.pos or getThingPos(var.number)
if tPos then
    tPos.x = tPos.x + 0
    tPos.y = tPos.y + 0
    doSendMagicEffect(tPos, 234)
end
local tPos = var.pos or getThingPos(var.number)
if tPos then
    tPos.x = tPos.x + 2
    tPos.y = tPos.y + 2
    doSendMagicEffect(tPos, 31)
end
return doCombat(cid, combat, var)

end
