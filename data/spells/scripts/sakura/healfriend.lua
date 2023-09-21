local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HEALING)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 13)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)

function onGetFormulaValues(cid, level, maglevel)
local eff = 36 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+1, y=getCreaturePosition(cid).y+1, z=getCreaturePosition(cid).z}
doSendMagicEffect(position, eff)
min = (level * 3 + maglevel * 1.5) * 13
max = (level * 3 + maglevel * 1.5) * 13.1	
return min, max
end
setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")
function onCastSpell(cid, var)
local storage = 2
local time = 1
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)
return doCombat(cid, combat, var)
else
     doPlayerSendCancel(cid, "Exausted")
  end
end