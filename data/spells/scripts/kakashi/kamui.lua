local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 196)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -26.35, 1, -28.05, 1)
function onCastSpell(cid, var)
local storage = 1
local time = 2.0
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)
local eff = 30 -- ID do efeito
local position = {x=getCreaturePosition(cid).x, y=getCreaturePosition(cid).y, z=getCreaturePosition(cid).z}
doSendMagicEffect(position, eff)
	return doCombat(cid, combat, var)
	else
     doPlayerSendCancel(cid, "Exausted")
  end
end
