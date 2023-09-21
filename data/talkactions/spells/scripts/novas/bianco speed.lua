local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 27)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 24)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition = createConditionObject(CONDITION_HASTE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 200000)
setConditionFormula(condition, 20.7, -200, 20.7, -200)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
doPlayerSay(cid, 'Bianco Speed', TALKTYPE_ORANGE_1)        
	return doCombat(cid, combat, var) 
end
