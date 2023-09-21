local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -54.2, 1, -56.2, 1)

function onCastSpell(cid, var)
local eff = 51 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+4, y=getCreaturePosition(cid).y, z=getCreaturePosition(cid).z}
doSendMagicEffect(position, eff)
return doCombat(cid, combat, var)
end