local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)

function onCastSpell(cid, var)
local player = getCreaturePosition(cid)
local target = getCreatureTarget(cid)
local enemypos = getCreaturePosition(target)

if target == isMonster or isCreature then
doTeleportThing(cid, enemypos)

local eff = 111 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+1, y=getCreaturePosition(cid).y, z=getCreaturePosition(cid).z}
doSendMagicEffect(position, eff)
end
return doCombat(cid, combat, var)
end