local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -20.4, 1, -22.1, 1)
function onCastSpell(cid, var)
local storage = 2
local time = 1.5
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)
local eff = 232 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+0, y=getCreaturePosition(target).y, z=getCreaturePosition(target).z}
doSendMagicEffect(position, eff)
	return doCombat(cid, combat, var)
else
     doPlayerSendCancel(cid, "Exausted")
  end
end
