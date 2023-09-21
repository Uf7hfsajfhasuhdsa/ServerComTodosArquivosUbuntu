local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -27.2, 1, -28.9, 1 )

function onCastSpell(cid, var)
local waittime = 2.5 -- Tempo de exhaustion
local storage = 2

if exhaustion.check(cid, storage) then
return false
end
local position = {x=getThingPosition(getCreatureTarget(cid)).x+1, y=getThingPosition(getCreatureTarget(cid)).y, z=getThingPosition(getCreatureTarget(cid)).z}
doSendMagicEffect(position, 424)
exhaustion.set(cid, storage, waittime)
return doCombat(cid, combat, var)
end
