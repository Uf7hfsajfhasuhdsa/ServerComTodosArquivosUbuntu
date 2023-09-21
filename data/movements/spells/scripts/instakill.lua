local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 3)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 30)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -0.0, -90000000, -0.0, -90000000)

local function instakille(cid)
	doPlayerSay(cid, 'Instant KILL!', TALKTYPE_ORANGE_1) 
end
function onCastSpell(cid, var)
	addEvent(instakille,0,cid)
	return doCombat(cid, combat, var)
end