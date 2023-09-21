local combat = createCombatObject() 
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 77)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -25, -26, -27, -28)
function onCastSpell(cid, var)
local player = getCreaturePosition(cid)
local target = getCreatureTarget(cid)
local enemypos = getCreaturePosition(target)

if target == isMonster or isCreature then
doTeleportThing(cid, enemypos)
end
return doCombat(cid, combat, var)
end